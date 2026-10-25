require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74236 = class("Quest74236", QuestActorProxy)
Quest74236.defaultAlias = "Quest74236"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74236:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74236:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7423602"] = self.OnSubStart7423602,
        ["7423601"] = self.OnSubStart7423601,
        ["7423603"] = self.OnSubStart7423603
    }
end

function Quest74236:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7423602"] = self.OnSubFinish7423602,
        ["7423601"] = self.OnSubFinish7423601,
        ["7423603"] = self.OnSubFinish7423603
    }
end

function Quest74236:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74236:Start()
    print("Start")
end

function Quest74236:OnDestroy()
    print("OnDestroy")
end

function Quest74236:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74236:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74236:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74236:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest74236:OnSubStart7423602(arg1)
    print("OnSubStart7423602")
end

function Quest74236:OnSubFinish7423602(arg1)
    print("OnSubFinish7423602")
end

function Quest74236:OnSubStart7423601(arg1)
    print("OnSubStart7423601")
end

function Quest74236:OnSubFinish7423601(arg1)
    print("OnSubFinish7423601")
end

function Quest74236:OnSubStart7423603(arg1)
    print("OnSubStart7423603")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21415Data.id, 7423603, 0, 10, 1, false)
end

function Quest74236:OnSubFinish7423603(arg1)
    print("OnSubFinish7423603")
    this:SafeDestroyQuestNpc(npcs.Npc21415Data.alias, 3)
end

return Quest74236
