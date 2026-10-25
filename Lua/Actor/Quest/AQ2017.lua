require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2017 = class("Quest2017", QuestActorProxy)
Quest2017.defaultAlias = "Quest2017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas
local tbl

function Quest2017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
    tbl = {
        npcs.Npc12259Data,
        npcs.Npc12260Data,
        npcs.Npc12261Data,
        npcs.Npc12262Data,
        npcs.Npc12263Data,
        npcs.Npc12264Data,
        npcs.Npc12265Data
    }
end

function Quest2017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201701"] = self.OnSubStart201701,
        ["201702"] = self.OnSubStart201702,
        ["201712"] = self.OnSubStart201712,
        ["201703"] = self.OnSubStart201703,
        ["201704"] = self.OnSubStart201704,
        ["201710"] = self.OnSubStart201710,
        ["201705"] = self.OnSubStart201705,
        ["201706"] = self.OnSubStart201706,
        ["201707"] = self.OnSubStart201707,
        ["201708"] = self.OnSubStart201708,
        ["201714"] = self.OnSubStart201714,
        ["201711"] = self.OnSubStart201711,
        ["201713"] = self.OnSubStart201713,
        ["201709"] = self.OnSubStart201709,
        ["201715"] = self.OnSubStart201715
    }
end

function Quest2017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201701"] = self.OnSubFinish201701,
        ["201702"] = self.OnSubFinish201702,
        ["201712"] = self.OnSubFinish201712,
        ["201703"] = self.OnSubFinish201703,
        ["201704"] = self.OnSubFinish201704,
        ["201710"] = self.OnSubFinish201710,
        ["201705"] = self.OnSubFinish201705,
        ["201706"] = self.OnSubFinish201706,
        ["201707"] = self.OnSubFinish201707,
        ["201708"] = self.OnSubFinish201708,
        ["201714"] = self.OnSubFinish201714,
        ["201711"] = self.OnSubFinish201711,
        ["201713"] = self.OnSubFinish201713,
        ["201709"] = self.OnSubFinish201709,
        ["201715"] = self.OnSubFinish201715
    }
end

function Quest2017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201701"] = self.OnSubFailed201701,
        ["201702"] = self.OnSubFailed201702,
        ["201712"] = self.OnSubFailed201712,
        ["201703"] = self.OnSubFailed201703,
        ["201704"] = self.OnSubFailed201704,
        ["201710"] = self.OnSubFailed201710,
        ["201705"] = self.OnSubFailed201705,
        ["201706"] = self.OnSubFailed201706,
        ["201707"] = self.OnSubFailed201707,
        ["201708"] = self.OnSubFailed201708,
        ["201714"] = self.OnSubFailed201714,
        ["201711"] = self.OnSubFailed201711,
        ["201713"] = self.OnSubFailed201713,
        ["201709"] = self.OnSubFailed201709
    }
end

function Quest2017:Start()
    print("Start")
end

function Quest2017:OnDestroy()
    print("OnDestroy")
end

function Quest2017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2017:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest2017:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest2017:MUSTREAD()
    print("MUSTREAD")
end

function Quest2017:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 201712)
    elseif arg1 == 2 then
    end
end

function Quest2017:FailQuest201711()
    print("FailQuest201711")
    self:FinishQuestID(true, 201711)
end

function Quest2017:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest2017:SneakClear()
    self:UnCallFunc(self.FailQuest201711)
    self:CountDownUITerminate()
    for i = 1, #tbl do
        self:DestroyQuestNpcActor(tbl[i].alias, 3)
    end

    self:ClearSpeechBubbleTask()
    self:ActorDestroy("Q2017CatchTrigger1")
    self:ActorDestroy("Q2017CatchTrigger2")
    self:ActorDestroy("Q2017CatchTrigger3")
    self:ActorDestroy("Q2017CatchTrigger4")
    self:ActorDestroy("Q2017CatchTrigger5")
    self:ActorDestroy("Q2017CatchTrigger6")
    self:ActorDestroy("Q2017Trigger4")
    self:ActorDestroy("Q2017Trigger5")
end

function Quest2017:OnSubStart201701(arg1)
    print("OnSubStart201701")
    self:CreateQuestNpc(arg1, npcs.Npc12240Data.id, 2)
    actorMgr:CreateActorWithPos("Q2017Trigger", "Actor/Gadget/Q2017Trigger", 70900002, 0, {x = -2771.933, y = 226.2996, z = -4480.922}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest2017:OnSubFinish201701(arg1)
    print("OnSubFinish201701")
end

function Quest2017:OnSubFailed201701(arg1)
    print("OnSubFailed201701")
end

function Quest2017:OnSubStart201702(arg1)
    print("OnSubStart201702")
end

function Quest2017:OnSubFinish201702(arg1)
    print("OnSubFinish201702")
    self:NpcDestroy(npcs.Npc12240Data.alias, 3)
end

function Quest2017:OnSubFailed201702(arg1)
    print("OnSubFailed201702")
end

function Quest2017:OnSubStart201712(arg1)
    print("OnSubStart201712")
end

function Quest2017:OnSubFinish201712(arg1)
    print("OnSubFinish201712")
end

function Quest2017:OnSubFailed201712(arg1)
    print("OnSubFailed201712")
end

function Quest2017:OnSubStart201703(arg1)
    print("OnSubStart201703")
end

function Quest2017:OnSubFinish201703(arg1)
    print("OnSubFinish201703")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 2017)
end

function Quest2017:OnSubFailed201703(arg1)
    print("OnSubFailed201703")
end

function Quest2017:OnSubStart201704(arg1)
    print("OnSubStart201704")
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 1)
    actorMgr:CreateActorWithPos("Q2017Trigger2", "Actor/Gadget/Q2017Trigger2", 70900002, 0, {x = -2.083808, y = 0, z = -6.270584}, {x = 0, y = 0, z = 0}, true, false, 1060)
end

function Quest2017:OnSubFinish201704(arg1)
    print("OnSubFinish201704")
end

function Quest2017:OnSubFailed201704(arg1)
    print("OnSubFailed201704")
end

function Quest2017:OnSubStart201710(arg1)
    print("OnSubStart201710")
    self:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 1)
    self:NotifyTo(npcs.Npc3035Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1013Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc1033Data.alias):SitOnChair()
end

function Quest2017:OnSubFinish201710(arg1)
    print("OnSubFinish201710")
end

function Quest2017:OnSubFailed201710(arg1)
    print("OnSubFailed201710")
end

function Quest2017:OnSubStart201705(arg1)
    print("OnSubStart201705")
    self:GetQuestNpcActor(npcs.Npc1013Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc1033Data.alias):SitOnChair()
    self:NotifyTo(npcs.Npc3035Data.alias, 1, true)
    self:ActionSafeCall(function(arg1_2)
        if 5 < arg1_2:GetLevelTime() then
            if arg1_2:GetQuestVar(arg1.QuestConfigId, 1) ~= 1 then
                arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 2017)
                arg1_2:SetQuestVar(arg1.QuestConfigId, 1, 1)
            end
        end
    end)

    self:LightNotifyTo(npcs.Npc3054Data.alias, 0, true)
end

function Quest2017:OnSubFinish201705(arg1)
    print("OnSubFinish201705")
end

function Quest2017:OnSubFailed201705(arg1)
    print("OnSubFailed201705")
end

function Quest2017:OnSubStart201706(arg1)
    print("OnSubStart201706")
    self:GetQuestNpcActor(npcs.Npc1013Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc1033Data.alias):SitOnChair()
    self:NotifyTo(npcs.Npc3035Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2017Trigger1", "Actor/Gadget/Q2017Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q201706Target").pos, sceneData:GetDummyPoint(3, "Q201706Target").rot, true, false, 3)
end

function Quest2017:OnSubFinish201706(arg1)
    print("OnSubFinish201706")
end

function Quest2017:OnSubFailed201706(arg1)
    print("OnSubFailed201706")
end

function Quest2017:OnSubStart201707(arg1)
    print("OnSubStart201707")
    self:GetQuestNpcActor(npcs.Npc1013Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc1033Data.alias):SitOnChair()
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1040Data.id, 1, npcs.Npc1040Data.alias)
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3035Data.alias, 1, true)
end

function Quest2017:OnSubFinish201707(arg1)
    print("OnSubFinish201707")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpcById(201708, npcs.Npc1040Data.id)
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
        questNpcActor:DoFreeStyle(1280)
        questNpcActor:LookAt({x = -3282.423, y = 283.41, z = -4428.257})
    end)
end

function Quest2017:OnSubFailed201707(arg1)
    print("OnSubFailed201707")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1040Data.alias, 3)
    end)
end

function Quest2017:OnSubStart201708(arg1)
    print("OnSubStart201708")
    self.GetQuestNpcActor(self, npcs.Npc1013Data.alias):SitOnChair()
    self.GetQuestNpcActor(self, npcs.Npc1033Data.alias):SitOnChair()
    self.NotifyTo(self, npcs.Npc3054Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc3035Data.alias, 1, true)
    self.UnSpawn(self, gadgets.Gadget71700316Data.alias)
    self.DelaySpawnGadget(self, arg1, gadgets.Gadget71700316Data.id, 1, 0)
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
        questNpcActor:DoFreeStyle(1280)
        questNpcActor:LookAt({x = -3282.423, y = 283.41, z = -4428.257})
    end)
end

function Quest2017:OnSubFinish201708(arg1)
    print("OnSubFinish201708")
    self:DestroyQuestNpcActor(npcs.Npc1040Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3035Data.alias, 0, true)
end

function Quest2017:OnSubFailed201708(arg1)
    print("OnSubFailed201708")
    self:ActionSafeCall(function(arg1)
        arg1.ShowBlackScreen(arg1, 0.5, 1, 0.5, function()
            arg1:DestroyQuestNpcActor(npcs.Npc1040Data.alias, 3)
            arg1:UnSpawn(gadgets.Gadget71700316Data.alias)
        end)
    end)
end

function Quest2017:OnSubStart201714(arg1)
    print("OnSubStart201714")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2017Trigger3", "Actor/Gadget/Q2017Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q201708Yanhua").pos, sceneData:GetDummyPoint(3, "Q201708Yanhua").rot, true, false, 3)
end

function Quest2017:OnSubFinish201714(arg1)
    print("OnSubFinish201714")
end

function Quest2017:OnSubFailed201714(arg1)
    print("OnSubFailed201714")
end

function Quest2017:OnSubStart201711(arg1)
    print("OnSubStart201711")
    self.SneakClear(self)
    self.ForceFlushRemove(self)
    self.DestroyQuestNpcActor(self, npcs.Npc1013Data.alias, 1060)
    self.DestroyQuestNpcActor(self, npcs.Npc1033Data.alias, 1060)
    if self.GetSubQuestState(self, 202202) == 2 then
        local actor = actorMgr:GetActor("2022")
        if actor ~= nil then
            actor:FinishQuestID(false, 202202)
        end
    end

    self.ClearNarratorTask(self)
    self.StopNarrator(self)
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self.NotifyTo(self, npcs.Npc3054Data.alias, 1, true)
    self.NarratorOnlyTaskByData(self, datas.NarratorWithId2, nil, 2017)
    self.CountDownUIStart(self, 60, 0, 3)
    self.CallDelay(self, 63, self.FailQuest201711)
    actorMgr:CreateActorWithPos("Q2017Trigger4", "Actor/Gadget/Q2017Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q201703Target").pos, sceneData:GetDummyPoint(3, "Q201703Target").rot, true, false, 3)
    self.CallDelay(self, 0.2, function()
        for i = 1, #tbl do
            self:CreateQuestNpc(arg1, tbl[i].id)
        end

        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12259Data.alias)
        questNpcActor.PatrolPosNum = #npcs.Npc12259Data.PatrolPos
        questNpcActor.PatrolPos = npcs.Npc12259Data.PatrolPos
        questNpcActor.PatrolDir = npcs.Npc12259Data.PatrolDir
        questNpcActor.PatrolNext = 0
        questNpcActor:Start()
    end)

    self.EnterTailMode(self, 35)
    actorMgr:CreateActorWithPos("Q2017CatchTrigger1", "Actor/Gadget/Q2017CatchTrigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q201711_Soilder2Rout1").pos, sceneData:GetDummyPoint(3, "Q201711_Soilder2Rout1").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q2017CatchTrigger2", "Actor/Gadget/Q2017CatchTrigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q201711_Soilder3Rout1").pos, sceneData:GetDummyPoint(3, "Q201711_Soilder3Rout1").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q2017CatchTrigger3", "Actor/Gadget/Q2017CatchTrigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q201711_Soilder4Rout1").pos, sceneData:GetDummyPoint(3, "Q201711_Soilder4Rout1").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q2017CatchTrigger4", "Actor/Gadget/Q2017CatchTrigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q201711_Soilder5Rout1").pos, sceneData:GetDummyPoint(3, "Q201711_Soilder5Rout1").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q2017CatchTrigger5", "Actor/Gadget/Q2017CatchTrigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q201711_Soilder6Rout4").pos, sceneData:GetDummyPoint(3, "Q201711_Soilder6Rout4").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q2017CatchTrigger6", "Actor/Gadget/Q2017CatchTrigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q201711_Soilder6Rout1").pos, sceneData:GetDummyPoint(3, "Q201711_Soilder6Rout1").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q2017Trigger5", "Actor/Gadget/Q2017Trigger5", 70900002, 0, {x = -3138.4, y = 313.9, z = -4439.167}, {x = 0, y = 0, z = 0}, true, false, 3)
    self.CreateSpeechBubbleTask(self, npcs.Npc12259Data.id, 20179901, 5, true, 2, 3, true)
    self.CreateSpeechBubbleTask(self, npcs.Npc12260Data.id, 20179902, 5, true, 2, 3, true)
    self.CreateSpeechBubbleTask(self, npcs.Npc12261Data.id, 20179903, 5, true, 2, 3, true)
    self.CreateSpeechBubbleTask(self, npcs.Npc12262Data.id, 20179904, 5, true, 2, 3, true)
    self.CreateSpeechBubbleTask(self, npcs.Npc12263Data.id, 20179905, 5, true, 2, 3, true)
    self.CreateSpeechBubbleTask(self, npcs.Npc12264Data.id, 20179906, 5, true, 2, 3, true)
    self.CreateSpeechBubbleTask(self, npcs.Npc12265Data.id, 20179903, 5, true, 2, 3, true)
    self.PlayEffect(self, "Eff_Quest_Yoimiya_Fireworks_01", {x = -3200.156, y = 258.5931, z = -4455.167}, {x = 0, y = 0, z = 0})
    self.PlayEffect(self, "Eff_Quest_Yoimiya_Explosion_01", {x = -3199.57, y = 265.68, z = -4458.26}, {x = 0, y = 0, z = 0})
    self.TryAddShake(self, {x = 1, y = -2.5, z = 0}, 0.56, 1, 8)
    self.CallDelay(self, 0.9, function()
        self:PlayEffect("Eff_Quest_Yoimiya_Explosion_01", {x = -3196.04, y = 267.5931, z = -4454.01}, {x = 0, y = 0, z = 0})
        self:TryAddShake({x = 2, y = -2.5, z = 1.5}, 0.36, 1, 8)
    end)

    self.CallDelay(self, 2.9, function()
        self:PlayEffect("Eff_Quest_Yoimiya_Explosion_01", {x = -3200.04, y = 266.18, z = -4452.39}, {x = 0, y = 0, z = 0})
        self:TryAddShake({x = -2, y = -2.5, z = 0.5}, 0.41, 1, 8)
    end)

    self.CallDelay(self, 3.1, function()
        self:PlayEffect("Eff_Quest_Yoimiya_Explosion_01", {x = -3198.14, y = 268.59, z = -4455.81}, {x = 0, y = 0, z = 0})
        self:TryAddShake({x = -1, y = -2.5, z = -1.5}, 0.41, 1, 8)
    end)
end

function Quest2017:OnSubFinish201711(arg1)
    print("OnSubFinish201711")
    self:ExitTailMode()
    self:TransmitPlayerById(arg1, 2)
end

function Quest2017:OnSubFailed201711(arg1)
    print("OnSubFailed201711")
    self:UnCallFunc(self.FailQuest201711)
end

function Quest2017:OnSubStart201715(arg1)
    print("OnSubStart201715")
    self:SneakClear()
    self:ForceFlushRemove()
end

function Quest2017:OnSubFinish201715(arg1)
    print("OnSubFinish201715")
end

function Quest2017:OnSubStart201713(arg1)
    print("OnSubStart201713")
    self.FinishQuestID(self, false, 201713)
    self.ActionSafeCall(self, function()
        self:CallDelay(0.5, function()
            self:SneakClear()
            self:ForceFlushRemove()
        end)
    end)
end

function Quest2017:OnSubFinish201713(arg1)
    print("OnSubFinish201713")
end

function Quest2017:OnSubFailed201713(arg1)
    print("OnSubFailed201713")
end

function Quest2017:OnSubStart201709(arg1)
    print("OnSubStart201709")
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id)
    self:LightNotifyTo(npcs.Npc3054Data.alias, 0, true)
end

function Quest2017:OnSubFinish201709(arg1)
    print("OnSubFinish201709")
end

function Quest2017:OnSubFailed201709(arg1)
    print("OnSubFailed201709")
end

return Quest2017
