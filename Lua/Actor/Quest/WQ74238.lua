require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74238 = class("Quest74238", QuestActorProxy)
Quest74238.defaultAlias = "Quest74238"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74238:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74238:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7423801"] = self.OnSubStart7423801, ["7423802"] = self.OnSubStart7423802}
end

function Quest74238:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7423801"] = self.OnSubFinish7423801, ["7423802"] = self.OnSubFinish7423802}
end

function Quest74238:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74238:Start()
    print("Start")
end

function Quest74238:OnDestroy()
    print("OnDestroy")
end

function Quest74238:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74238:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74238:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74238:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest74238:OnSubStart7423801(arg1)
    print("OnSubStart7423801")
end

function Quest74238:OnSubFinish7423801(arg1)
    print("OnSubFinish7423801")
end

function Quest74238:OnSubStart7423802(arg1)
    print("OnSubStart7423802")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21415Data.id, 7423802, 0, 10, 1, false)
end

function Quest74238:OnSubFinish7423802(arg1)
    print("OnSubFinish7423802")
    this:SafeDestroyQuestNpc(npcs.Npc21415Data.alias, 11)
end

return Quest74238
