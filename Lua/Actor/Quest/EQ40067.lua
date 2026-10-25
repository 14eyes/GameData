require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40067 = class("Quest40067", QuestActorProxy)
Quest40067.defaultAlias = "Quest40067"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40067:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40067:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4006701"] = self.OnSubStart4006701,
        ["4006702"] = self.OnSubStart4006702,
        ["4006703"] = self.OnSubStart4006703,
        ["4006704"] = self.OnSubStart4006704,
        ["4006705"] = self.OnSubStart4006705,
        ["4006706"] = self.OnSubStart4006706,
        ["4006707"] = self.OnSubStart4006707,
        ["4006708"] = self.OnSubStart4006708,
        ["4006709"] = self.OnSubStart4006709,
        ["4006717"] = self.OnSubStart4006717,
        ["4006710"] = self.OnSubStart4006710,
        ["4006711"] = self.OnSubStart4006711,
        ["4006715"] = self.OnSubStart4006715,
        ["4006716"] = self.OnSubStart4006716,
        ["4006712"] = self.OnSubStart4006712,
        ["4006713"] = self.OnSubStart4006713,
        ["4006714"] = self.OnSubStart4006714
    }
end

function Quest40067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4006701"] = self.OnSubFinish4006701,
        ["4006702"] = self.OnSubFinish4006702,
        ["4006703"] = self.OnSubFinish4006703,
        ["4006704"] = self.OnSubFinish4006704,
        ["4006705"] = self.OnSubFinish4006705,
        ["4006706"] = self.OnSubFinish4006706,
        ["4006707"] = self.OnSubFinish4006707,
        ["4006708"] = self.OnSubFinish4006708,
        ["4006709"] = self.OnSubFinish4006709,
        ["4006717"] = self.OnSubFinish4006717,
        ["4006710"] = self.OnSubFinish4006710,
        ["4006711"] = self.OnSubFinish4006711,
        ["4006715"] = self.OnSubFinish4006715,
        ["4006716"] = self.OnSubFinish4006716,
        ["4006712"] = self.OnSubFinish4006712,
        ["4006713"] = self.OnSubFinish4006713,
        ["4006714"] = self.OnSubFinish4006714
    }
end

function Quest40067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40067:Start()
    print("Start")
end

function Quest40067:OnDestroy()
    print("OnDestroy")
end

function Quest40067:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40067:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40067:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12625Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12646Data.alias, 20140)
    actorMgr:DestroyEntityActor("Q4006704_NarratorTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006704_SafeTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006705_NarratorTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006705_SafeTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006706_NarratorTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006706_SafeTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006707_NarratorTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006707_SafeTrigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006708_SafeTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006709_SafeTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006710_NarratorTrigger1", 20140, false)
    actorMgr:DestroyEntityActor("Q4006710_NarratorTrigger2", 20140, false)
    actorMgr:DestroyEntityActor("Q4006711_SafeTrigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006712_NarratorTrigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006712_Trigger", 20140, false)
    actorMgr:DestroyEntityActor("Q4006714_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006717_SafeTrigger", 20140, false)
end

function Quest40067:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40067:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 4006716)
    end
end

function Quest40067:OnSubStart4006701(arg1)
    print("OnSubStart4006701")
end

function Quest40067:OnSubFinish4006701(arg1)
    print("OnSubFinish4006701")
end

function Quest40067:OnSubStart4006702(arg1)
    print("OnSubStart4006702")
end

function Quest40067:OnSubFinish4006702(arg1)
    print("OnSubFinish4006702")
    globalActor:PlayerEnterDungeonPoint(13, 1144, 4006702, 1)
end

function Quest40067:OnSubStart4006703(arg1)
    print("OnSubStart4006703")
    self:CreateQuestNpcWithTriggerBlack("Q4006703_Trigger", 4006703, npcs.Npc1042Data.id, 1, 20, 1)
end

function Quest40067:OnSubFinish4006703(arg1)
    print("OnSubFinish4006703")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20140)
end

function Quest40067:OnSubStart4006704(arg1)
    print("OnSubStart4006704")
    actorMgr:CreateActorWithPos("Q4006704_NarratorTrigger", "Actor/Gadget/Q4006704_NarratorTrigger", 70900002, 0, {x = -0.075, y = 0.0, z = 2.463}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
    actorMgr:CreateActorWithPos("Q4006704_SafeTrigger", "Actor/Gadget/Q4006704_SafeTrigger", 70900002, 0, {x = -88.02, y = -5.392, z = 14.1}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006704(arg1)
    print("OnSubFinish4006704")
    if actorMgr:GetActor("Q4006704_NarratorTrigger") ~= nil then
        self:ActorDestroy("Q4006704_NarratorTrigger")
    else
    end

    if actorMgr:GetActor("Q4006704_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006704_SafeTrigger")
    end
end

function Quest40067:OnSubStart4006705(arg1)
    print("OnSubStart4006705")
    actorMgr:CreateActorWithPos("Q4006705_SafeTrigger", "Actor/Gadget/Q4006705_SafeTrigger", 70900002, 0, {x = -83.397, y = 20.141, z = 118.035}, {x = 0.0, y = 54.0, z = 0.0}, true, false, 20140)
    actorMgr:CreateActorWithPos("Q4006705_NarratorTrigger", "Actor/Gadget/Q4006705_NarratorTrigger", 70900002, 0, {x = -88.02, y = -5.392, z = 14.1}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006705(arg1)
    print("OnSubFinish4006705")
    if actorMgr:GetActor("Q4006705_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006705_SafeTrigger")
    else
    end

    if actorMgr:GetActor("Q4006705_NarratorTrigger") ~= nil then
        self:ActorDestroy("Q4006705_NarratorTrigger")
    end
end

function Quest40067:OnSubStart4006706(arg1)
    print("OnSubStart4006706")
    actorMgr:CreateActorWithPos("Q4006706_NarratorTrigger", "Actor/Gadget/Q4006706_NarratorTrigger", 70900002, 0, {x = -84.459, y = 6.048, z = 117.154}, {x = 0.0, y = 54.075, z = 0.0}, true, false, 20140)
    actorMgr:CreateActorWithPos("Q4006706_SafeTrigger", "Actor/Gadget/Q4006706_SafeTrigger", 70900002, 0, {x = -1.718, y = 38.512, z = 252.815}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006706(arg1)
    print("OnSubFinish4006706")
    if actorMgr:GetActor("Q4006706_NarratorTrigger") ~= nil then
        self:ActorDestroy("Q4006706_NarratorTrigger")
    else
    end

    if actorMgr:GetActor("Q4006706_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006706_SafeTrigger")
    end
end

function Quest40067:OnSubStart4006707(arg1)
    print("OnSubStart4006707")
    actorMgr:CreateActorWithPos("Q4006707_NarratorTrigger", "Actor/Gadget/Q4006707_NarratorTrigger", 70900002, 0, {x = -1.06, y = 48.403, z = 255.192}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
    actorMgr:CreateActorWithPos("Q4006707_SafeTrigger", "Actor/Gadget/Q4006707_SafeTrigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006707(arg1)
    print("OnSubFinish4006707")
    self:NarratorOnlyTaskByData(datas.Narrator_4006705, nil, 40067)
    if actorMgr:GetActor("Q4006707_NarratorTrigger") ~= nil then
        self:ActorDestroy("Q4006707_NarratorTrigger")
        if actorMgr:GetActor("Q4006707_SafeTrigger") ~= nil then
            self:ActorDestroy("Q4006707_SafeTrigger")
        end
    end
end

function Quest40067:OnSubStart4006708(arg1)
    print("OnSubStart4006708")
    actorMgr:CreateActorWithPos("Q4006708_SafeTrigger", "Actor/Gadget/Q4006708_SafeTrigger", 70900002, 0, {x = 45.747, y = 56.044, z = 334.002}, {x = 0.0, y = 10.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006708(arg1)
    print("OnSubFinish4006708")
    self:NarratorOnlyTaskByData(datas.Narrator_4006706, nil, 40067)
    if actorMgr:GetActor("Q4006708_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006708_SafeTrigger")
    end
end

function Quest40067:OnSubStart4006709(arg1)
    print("OnSubStart4006709")
    actorMgr:CreateActorWithPos("Q4006709_SafeTrigger", "Actor/Gadget/Q4006709_SafeTrigger", 70900002, 0, {x = 51.003, y = 83.208, z = 653.679}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006709(arg1)
    print("OnSubFinish4006709")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_4006707, nil, 40067)
    end)

    if actorMgr:GetActor("Q4006709_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006709_SafeTrigger")
    end
end

function Quest40067:OnSubStart4006717(arg1)
    print("OnSubStart4006717")
    actorMgr:CreateActorWithPos("Q4006717_SafeTrigger", "Actor/Gadget/Q4006717_SafeTrigger", 70900002, 0, {x = 71.773, y = 106.97, z = 890.262}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006717(arg1)
    print("OnSubFinish4006717")
end

function Quest40067:OnSubStart4006710(arg1)
    print("OnSubStart4006710")
    self:CreateQuestNpc(arg1, npcs.Npc12646Data.id, 1)
    actorMgr:CreateActorWithPos("Q4006710_NarratorTrigger1", "Actor/Gadget/Q4006710_NarratorTrigger1", 70900002, 0, {x = 81.089, y = 82.445, z = 675.22}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
    actorMgr:CreateActorWithPos("Q4006710_NarratorTrigger2", "Actor/Gadget/Q4006710_NarratorTrigger2", 70900002, 0, {x = 141.476, y = 84.816, z = 704.944}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006710(arg1)
    print("OnSubFinish4006710")
    self:SafeDestroyQuestNpc(npcs.Npc12646Data.alias, 20140)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.Narrator_4006710, nil, 40067)
        end)
    end)

    if actorMgr:GetActor("Q4006710_NarratorTrigger1") ~= nil then
        self:ActorDestroy("Q4006710_NarratorTrigger1")
        if actorMgr:GetActor("Q4006710_NarratorTrigger2") ~= nil then
            self:ActorDestroy("Q4006710_NarratorTrigger2")
        end
    end
end

function Quest40067:OnSubStart4006711(arg1)
    print("OnSubStart4006711")
    actorMgr:CreateActorWithPos("Q4006711_SafeTrigger", "Actor/Gadget/Q4006711_SafeTrigger", 70900002, 0, {x = 84.661, y = 125.865, z = 1005.865}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006711(arg1)
    print("OnSubFinish4006711")
    if actorMgr:GetActor("Q4006711_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006711_SafeTrigger")
    end
end

function Quest40067:OnSubStart4006715(arg1)
    print("OnSubStart4006715")
    self:CreateQuestNpcWithTriggerBlack("Q4006715_Trigger", 4006715, npcs.Npc12646Data.id, 1, 50, 1)
end

function Quest40067:OnSubFinish4006715(arg1)
    print("OnSubFinish4006715")
    self:SafeDestroyQuestNpc(npcs.Npc12646Data.alias, 20140)
end

function Quest40067:OnSubStart4006716(arg1)
    print("OnSubStart4006716")
end

function Quest40067:OnSubFinish4006716(arg1)
    print("OnSubFinish4006716")
end

function Quest40067:OnSubStart4006712(arg1)
    print("OnSubStart4006712")
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 1)
    actorMgr:CreateActorWithPos("Q4006712_Trigger", "Actor/Gadget/Q4006712_Trigger", 70900002, 0, {x = 76.667, y = 135.477, z = 1034.027}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
    actorMgr:CreateActorWithPos("Q4006712_NarratorTrigger", "Actor/Gadget/Q4006712_NarratorTrigger", 70900002, 0, {x = 71.227, y = 113.607, z = 974.369}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20140)
end

function Quest40067:OnSubFinish4006712(arg1)
    print("OnSubFinish4006712")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20140)
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
    if actorMgr:GetActor("Q4006712_NarratorTrigger") ~= nil then
        self:ActorDestroy("Q4006712_NarratorTrigger")
    end
end

function Quest40067:OnSubStart4006713(arg1)
    print("OnSubStart4006713")
    self:CreateQuestNpcWithTriggerBlack("Q4006713_Trigger", 4006713, npcs.Npc1032Data.id, 1, 10, 1)
end

function Quest40067:OnSubFinish4006713(arg1)
    print("OnSubFinish4006713")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20140)
end

function Quest40067:OnSubStart4006714(arg1)
    print("OnSubStart4006714")
    self:CreateQuestNpc(arg1, npcs.Npc12625Data.id, 2)
    actorMgr:CreateActorWithPos("Q4006714_Trigger", "Actor/Gadget/Q4006714_Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q4006415_guide").pos, sceneData:GetDummyPoint(9, "Q4006415_guide").rot, true, false, 9)
end

function Quest40067:OnSubFinish4006714(arg1)
    print("OnSubFinish4006714")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20140)
    self:SafeDestroyQuestNpc(npcs.Npc12625Data.alias, 9)
    self:CallDelay(6, function(arg1)
        actorUtils.ShowContext("SummerTimeV2StagePage", 1)
    end)
end

return Quest40067
