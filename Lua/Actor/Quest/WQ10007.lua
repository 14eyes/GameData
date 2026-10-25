require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10007 = class("Quest10007", QuestActorProxy)
Quest10007.defaultAlias = "Quest10007"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest10007:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest10007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1000701"] = self.OnSubStart1000701,
        ["1000704"] = self.OnSubStart1000704,
        ["1000702"] = self.OnSubStart1000702,
        ["1000703"] = self.OnSubStart1000703,
        ["1000710"] = self.OnSubStart1000710,
        ["1000708"] = self.OnSubStart1000708,
        ["1000705"] = self.OnSubStart1000705,
        ["1000709"] = self.OnSubStart1000709,
        ["1000712"] = self.OnSubStart1000712,
        ["1000706"] = self.OnSubStart1000706,
        ["1000711"] = self.OnSubStart1000711,
        ["1000707"] = self.OnSubStart1000707
    }
end

function Quest10007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1000701"] = self.OnSubFinish1000701,
        ["1000704"] = self.OnSubFinish1000704,
        ["1000702"] = self.OnSubFinish1000702,
        ["1000703"] = self.OnSubFinish1000703,
        ["1000710"] = self.OnSubFinish1000710,
        ["1000708"] = self.OnSubFinish1000708,
        ["1000705"] = self.OnSubFinish1000705,
        ["1000709"] = self.OnSubFinish1000709,
        ["1000712"] = self.OnSubFinish1000712,
        ["1000706"] = self.OnSubFinish1000706,
        ["1000711"] = self.OnSubFinish1000711,
        ["1000707"] = self.OnSubFinish1000707
    }
end

function Quest10007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1000702"] = self.OnSubFailed1000702,
        ["1000703"] = self.OnSubFailed1000703,
        ["1000706"] = self.OnSubFailed1000706
    }
end

function Quest10007:Start()
    print("Start")
end

function Quest10007:OnDestroy()
    print("OnDestroy")
end

function Quest10007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10007:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1000702Trigger")
    this:ActorDestroy("Q1000702Trigger_1")
    this:ActorDestroy("Q1000702Trigger_Failed")
    this:ActorDestroy("Q1000704Trigger")
    this:ActorDestroy("Q1000709Trigger")
    this:ActorDestroy("Q1000702Trigger_2")
    this:ActorDestroy("Q1000702Trigger_3")
    this:ActorDestroy("Q1000710Trigger")
    this:ActorDestroy("Q1000711Trigger")
    this:ActorDestroy("Q1000710Trigger_1")
    this:ActorDestroy("Q1000709Trigger_1")
    this:ActorDestroy("Q1000711Trigger_1")
    this:ActorDestroy("Q1000712Trigger")
end

function Quest10007:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest10007:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest10007:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest10007:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest10007:OnSubStart1000701(arg1)
    print("OnSubStart1000701")
    this:NpcCreateWithNpcTrigger(npcs.Wendy.id, 0, 10, 1000701)
end

function Quest10007:OnSubFinish1000701(arg1)
    print("OnSubFinish1000701")
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 3)
end

function Quest10007:OnSubStart1000704(arg1)
    print("OnSubStart1000704")
    actorMgr:CreateActorWithPos("Q1000704Trigger", "Actor/Gadget/Q1000704Trigger", 70900002, 0, points._Q1000704TriggerPoint_.pos, points._Q1000704TriggerPoint_.rot, true, false, 3)
end

function Quest10007:OnSubFinish1000704(arg1)
    print("OnSubFinish1000704")
end

function Quest10007:OnSubStart1000702(arg1)
    print("OnSubStart1000702")
    actorMgr:CreateActorWithPos("Q1000702Trigger_2", "Actor/Gadget/Q1000702Trigger_2", 70900002, 0, points._Q1000702Trigger_2Point_.pos, points._Q1000702Trigger_2Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1000702Trigger_3", "Actor/Gadget/Q1000702Trigger_3", 70900002, 0, points._Q1000702Trigger_3Point_.pos, points._Q1000702Trigger_3Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1000702Trigger", "Actor/Gadget/Q1000702Trigger", 70900002, 0, points._Q1000702TriggerPoint_.pos, points._Q1000702TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1000702Trigger_1", "Actor/Gadget/Q1000702Trigger_1", 70900002, 0, points._Q1000702Trigger_1Point_.pos, points._Q1000702Trigger_1Point_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1000704, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_1000701, nil)
        end)
    end)
end

function Quest10007:OnSubFinish1000702(arg1)
    print("OnSubFinish1000702")
    this:DestroyQuestTrigger("Q1000702Trigger_1", false)
    this:DestroyQuestTrigger("Q1000702Trigger_2", false)
    this:DestroyQuestTrigger("Q1000702Trigger_3", false)
end

function Quest10007:OnSubFailed1000702(arg1)
    print("OnSubFailed1000702")
    this:ClearNarratorTask()
    this:DestroyQuestTrigger("Q1000702Trigger", false)
    this:DestroyQuestTrigger("Q1000702Trigger_1", false)
    this:DestroyQuestTrigger("Q1000702Trigger_2", false)
    this:DestroyQuestTrigger("Q1000702Trigger_3", false)
end

function Quest10007:OnSubStart1000703(arg1)
    print("OnSubStart1000703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000703, 0, 30, 1, npcs.Wendy.id)
    this:GetQuestNpcActor(npcs.Wendy.alias, 10007):DoFreeStyle(1220, true, nil, true, true, false, true)
end

function Quest10007:OnSubFinish1000703(arg1)
    print("OnSubFinish1000703")
end

function Quest10007:OnSubFailed1000703(arg1)
    print("OnSubFailed1000703")
    this:DestroyQuestNpcActor(npcs.Wendy.alias, 3)
end

function Quest10007:OnSubStart1000710(arg1)
    print("OnSubStart1000710")
    actorMgr:CreateActorWithPos("Q1000710Trigger_1", "Actor/Gadget/Q1000710Trigger_1", 70900002, 0, points._Q1000710Trigger_1Point_.pos, points._Q1000710Trigger_1Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1000710Trigger", "Actor/Gadget/Q1000710Trigger", 70900002, 0, points._Q1000710TriggerPoint_.pos, points._Q1000710TriggerPoint_.rot, true, false, 3)
end

function Quest10007:OnSubFinish1000710(arg1)
    print("OnSubFinish1000710")
    this:DestroyQuestTrigger("Q1000710Trigger_1", false)
end

function Quest10007:OnSubStart1000708(arg1)
    print("OnSubStart1000708")
    this:NpcCreateWithActionSafeCall(0, npcs.Wendy.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Wendy.alias, 10007):DoFreeStyle(1220, true, nil, true, true, false, true)
    end)
end

function Quest10007:OnSubFinish1000708(arg1)
    print("OnSubFinish1000708")
end

function Quest10007:OnSubStart1000705(arg1)
    print("OnSubStart1000705")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000705, 0, 30, 1, npcs.Wendy.id)
end

function Quest10007:OnSubFinish1000705(arg1)
    print("OnSubFinish1000705")
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 3)
end

function Quest10007:OnSubStart1000709(arg1)
    print("OnSubStart1000709")
    actorMgr:CreateActorWithPos("Q1000709Trigger_1", "Actor/Gadget/Q1000709Trigger_1", 70900002, 0, points._Q1000709Trigger_1Point_.pos, points._Q1000709Trigger_1Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1000709Trigger", "Actor/Gadget/Q1000709Trigger", 70900002, 0, points._Q1000709TriggerPoint_.pos, points._Q1000709TriggerPoint_.rot, true, false, 3)
end

function Quest10007:OnSubFinish1000709(arg1)
    print("OnSubFinish1000709")
    this:DestroyQuestTrigger("Q1000709Trigger_1", false)
end

function Quest10007:OnSubStart1000712(arg1)
    print("OnSubStart1000712")
    actorMgr:CreateActorWithPos("Q1000712Trigger", "Actor/Gadget/Q1000712Trigger", 70900002, 0, points._Q1000712TriggerPoint_.pos, points._Q1000712TriggerPoint_.rot, true, false, 3)
end

function Quest10007:OnSubFinish1000712(arg1)
    print("OnSubFinish1000712")
end

function Quest10007:OnSubStart1000706(arg1)
    print("OnSubStart1000706")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1000703, nil)
    end)
end

function Quest10007:OnSubFinish1000706(arg1)
    print("OnSubFinish1000706")
end

function Quest10007:OnSubFailed1000706(arg1)
    print("OnSubFailed1000706")
    this:ClearNarratorTask()
end

function Quest10007:OnSubStart1000711(arg1)
    print("OnSubStart1000711")
    actorMgr:CreateActorWithPos("Q1000711Trigger", "Actor/Gadget/Q1000711Trigger", 70900002, 0, points._Q1000711TriggerPoint_.pos, points._Q1000711TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1000711Trigger_1", "Actor/Gadget/Q1000711Trigger_1", 70900002, 0, points._Q1000711Trigger_1Point_.pos, points._Q1000711Trigger_1Point_.rot, true, false, 3)
end

function Quest10007:OnSubFinish1000711(arg1)
    print("OnSubFinish1000711")
    this:DestroyQuestTrigger("Q1000711Trigger_1", false)
end

function Quest10007:OnSubStart1000707(arg1)
    print("OnSubStart1000707")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000707, 0, 30, 1, npcs.Wendy.id)
end

function Quest10007:OnSubFinish1000707(arg1)
    print("OnSubFinish1000707")
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000022)
    end)
end

return Quest10007
