require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74239 = class("Quest74239", QuestActorProxy)
Quest74239.defaultAlias = "Quest74239"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74239:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74239:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7423901"] = self.OnSubStart7423901, ["7423902"] = self.OnSubStart7423902}
end

function Quest74239:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7423901"] = self.OnSubFinish7423901, ["7423902"] = self.OnSubFinish7423902}
end

function Quest74239:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74239:Start()
    print("Start")
end

function Quest74239:OnDestroy()
    print("OnDestroy")
end

function Quest74239:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74239:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74239:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74239:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest74239:OnSubStart7423901(arg1)
    print("OnSubStart7423901")
end

function Quest74239:OnSubFinish7423901(arg1)
    print("OnSubFinish7423901")
end

function Quest74239:OnSubStart7423902(arg1)
    print("OnSubStart7423902")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21415Data.id, 7423902, 0, 10, 1, false)
end

function Quest74239:OnSubFinish7423902(arg1)
    print("OnSubFinish7423902")
    this:SafeDestroyQuestNpc(npcs.Npc21415Data.alias, 11)
end

return Quest74239
