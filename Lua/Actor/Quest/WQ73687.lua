require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73687 = class("Quest73687", QuestActorProxy)
Quest73687.defaultAlias = "Quest73687"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73687:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73687:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7368703"] = self.OnSubStart7368703,
        ["7368701"] = self.OnSubStart7368701,
        ["7368702"] = self.OnSubStart7368702
    }
end

function Quest73687:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7368703"] = self.OnSubFinish7368703,
        ["7368701"] = self.OnSubFinish7368701,
        ["7368702"] = self.OnSubFinish7368702
    }
end

function Quest73687:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73687:Start()
    print("Start")
end

function Quest73687:OnDestroy()
    print("OnDestroy")
end

function Quest73687:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73687:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73687:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13141Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7368701Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7368702Trigger", 3, false)
end

function Quest73687:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73687:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73687:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73687:OnSubStart7368703(arg1)
    print("OnSubStart7368703")
end

function Quest73687:OnSubFinish7368703(arg1)
    print("OnSubFinish7368703")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithIdStart)
    end)
end

function Quest73687:OnSubStart7368701(arg1)
    print("OnSubStart7368701")
    this:CreateQuestNpcWithTrigger("Q7368701Trigger", 7368701, npcs.Npc13073Data.id, 0, 11)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13074Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13141Data.id, 0)
end

function Quest73687:OnSubFinish7368701(arg1)
    print("OnSubFinish7368701")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest73687:OnSubStart7368702(arg1)
    print("OnSubStart7368702")
    this:CreateQuestNpcWithTrigger("Q7368702Trigger", 7368702, npcs.Npc1013Data.id, 0, 11)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13082Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc30139Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1013Data.alias):DoFreeStyle(1030, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13082Data.alias):DoFreeStyle(1250, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30139Data.alias):DoFreeStyle(1240, true, nil, true, true, false, true)
end

function Quest73687:OnSubFinish7368702(arg1)
    print("OnSubFinish7368702")
    this:NpcDestroy(npcs.Npc13073Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1013Data.alias)
    this:NpcDestroy(npcs.Npc13074Data.alias, 3)
    this:NpcDestroy(npcs.Npc13141Data.alias, 3)
    this:NpcDestroy(npcs.Npc13082Data.alias, 3)
    this:NpcDestroy(npcs.Npc30139Data.alias, 3)
end

return Quest73687
