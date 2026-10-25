require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19075 = class("Quest19075", QuestActorProxy)
Quest19075.defaultAlias = "Quest19075"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19075:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19075:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1907501"] = self.OnSubStart1907501}
end

function Quest19075:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1907501"] = self.OnSubFinish1907501}
end

function Quest19075:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19075:Start()
    print("Start")
end

function Quest19075:OnDestroy()
    print("OnDestroy")
end

function Quest19075:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19075:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19075:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 1079)
    actorMgr:DestroyEntityActor("Q1907501N515Trigger", 1079, false)
end

function Quest19075:OnSubStart1907501(arg1)
    print("OnSubStart1907501")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907501)
    this:CreateQuestNpcWithTriggerBlackEx("Q1907501N515Trigger", 1907501, npcs.Coop_KavehData.id, 1, 25, 0, 1, 0.5, 1)
end

function Quest19075:OnSubFinish1907501(arg1)
    print("OnSubFinish1907501")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 1079)
end

return Quest19075
