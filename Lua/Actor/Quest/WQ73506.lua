require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73506 = class("Quest73506", QuestActorProxy)
Quest73506.defaultAlias = "Quest73506"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73506:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73506:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7350601"] = self.OnSubStart7350601,
        ["7350602"] = self.OnSubStart7350602,
        ["7350603"] = self.OnSubStart7350603
    }
end

function Quest73506:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7350601"] = self.OnSubFinish7350601,
        ["7350602"] = self.OnSubFinish7350602,
        ["7350603"] = self.OnSubFinish7350603
    }
end

function Quest73506:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73506:Start()
    print("Start")
end

function Quest73506:OnDestroy()
    print("OnDestroy")
end

function Quest73506:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73506:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73506:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2602Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc30279Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc30279Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4070Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7350602NPCTrigger", 1074, false)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 1074)
end

function Quest73506:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73506:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest73506:OnSubStart7350601(arg1)
    print("OnSubStart7350601")
    this:CreateQuestNpc(arg1, npcs.Npc4070Data.id, 1)
end

function Quest73506:OnSubFinish7350601(arg1)
    print("OnSubFinish7350601")
    this:SafeDestroyQuestNpc(npcs.Npc4070Data.alias, 3)
end

function Quest73506:OnSubStart7350602(arg1)
    print("OnSubStart7350602")
    this:CreateQuestNpc(arg1, npcs.Npc30279Data.id, 2)
    this:CreateQuestNpcWithTriggerBlack("Q7350602NPCTrigger", 7350602, 2602, 1, 20, 1)
end

function Quest73506:OnSubFinish7350602(arg1)
    print("OnSubFinish7350602")
end

function Quest73506:OnSubStart7350603(arg1)
    print("OnSubStart7350603")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc30279Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc2602Data.alias):SitOnChair(8010)
end

function Quest73506:OnSubFinish7350603(arg1)
    print("OnSubFinish7350603")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(899)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc2602Data.alias, 1074)
    this:NPCDestroyImmediately(npcs.Npc30279Data.alias, 1074)
end

return Quest73506
