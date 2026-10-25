require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19071 = class("Quest19071", QuestActorProxy)
Quest19071.defaultAlias = "Quest19071"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19071:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19071:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1907101"] = self.OnSubStart1907101,
        ["1907102"] = self.OnSubStart1907102,
        ["1907103"] = self.OnSubStart1907103,
        ["1907104"] = self.OnSubStart1907104
    }
end

function Quest19071:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1907101"] = self.OnSubFinish1907101,
        ["1907102"] = self.OnSubFinish1907102,
        ["1907103"] = self.OnSubFinish1907103,
        ["1907104"] = self.OnSubFinish1907104
    }
end

function Quest19071:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19071:Start()
    print("Start")
end

function Quest19071:OnDestroy()
    print("OnDestroy")
end

function Quest19071:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19071:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19071:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13277Data.alias, 3)
    this:UnCallFunc(self.unCallNPCTrigger)
    actorMgr:DestroyEntityActor("Q1907101N13277Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907103N13277Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907104N515Trigger", 3, false)
end

function Quest19071:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19071:unCallNPCTrigger()
    print("unCallNPCTrigger")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13277Data.id, 1907103, 2, 30, 1)
end

function Quest19071:OnSubStart1907101(arg1)
    print("OnSubStart1907101")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907101)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13277Data.id, 1907101, 2, 15, 1)
end

function Quest19071:OnSubFinish1907101(arg1)
    print("OnSubFinish1907101")
    this:SafeDestroyQuestNpc(npcs.Npc13277Data.alias, 3)
end

function Quest19071:OnSubStart1907102(arg1)
    print("OnSubStart1907102")
end

function Quest19071:OnSubFinish1907102(arg1)
    print("OnSubFinish1907102")
end

function Quest19071:OnSubStart1907103(arg1)
    print("OnSubStart1907103")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907103)
    this:CallDelay(2, self.unCallNPCTrigger)
end

function Quest19071:OnSubFinish1907103(arg1)
    print("OnSubFinish1907103")
    this:SafeDestroyQuestNpc(npcs.Npc13277Data.alias, 3)
end

function Quest19071:OnSubStart1907104(arg1)
    print("OnSubStart1907104")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907104)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1907104, 1, 8, 1)
end

function Quest19071:OnSubFinish1907104(arg1)
    print("OnSubFinish1907104")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
end

return Quest19071
