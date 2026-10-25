require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19047 = class("Quest19047", QuestActorProxy)
Quest19047.defaultAlias = "Quest19047"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19047:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19047:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1904712"] = self.OnSubStart1904712,
        ["1904701"] = self.OnSubStart1904701,
        ["1904702"] = self.OnSubStart1904702,
        ["1904714"] = self.OnSubStart1904714,
        ["1904703"] = self.OnSubStart1904703,
        ["1904704"] = self.OnSubStart1904704,
        ["1904705"] = self.OnSubStart1904705,
        ["1904706"] = self.OnSubStart1904706,
        ["1904713"] = self.OnSubStart1904713,
        ["1904708"] = self.OnSubStart1904708,
        ["1904707"] = self.OnSubStart1904707,
        ["1904709"] = self.OnSubStart1904709,
        ["1904710"] = self.OnSubStart1904710,
        ["1904715"] = self.OnSubStart1904715,
        ["1904716"] = self.OnSubStart1904716,
        ["1904711"] = self.OnSubStart1904711
    }
end

function Quest19047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1904712"] = self.OnSubFinish1904712,
        ["1904701"] = self.OnSubFinish1904701,
        ["1904702"] = self.OnSubFinish1904702,
        ["1904714"] = self.OnSubFinish1904714,
        ["1904703"] = self.OnSubFinish1904703,
        ["1904704"] = self.OnSubFinish1904704,
        ["1904705"] = self.OnSubFinish1904705,
        ["1904706"] = self.OnSubFinish1904706,
        ["1904713"] = self.OnSubFinish1904713,
        ["1904708"] = self.OnSubFinish1904708,
        ["1904707"] = self.OnSubFinish1904707,
        ["1904709"] = self.OnSubFinish1904709,
        ["1904710"] = self.OnSubFinish1904710,
        ["1904715"] = self.OnSubFinish1904715,
        ["1904716"] = self.OnSubFinish1904716,
        ["1904711"] = self.OnSubFinish1904711
    }
end

function Quest19047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1904710"] = self.OnSubFailed1904710}
end

function Quest19047:Start()
    print("Start")
end

function Quest19047:OnDestroy()
    print("OnDestroy")
end

function Quest19047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19047:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    actorMgr:DestroyEntityActor("Q19047Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19047Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19047Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q19047Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q19047Trigger4", 3, false)
    self:CountDownUITerminate()
    self:UnCallFunc(self.FailQuest1904710)
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:UnCallYunjinDrama()
end

function Quest19047:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1904717)
    end
end

function Quest19047:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    if arg1.valueInt == 1 then
        actorUtils.FinishQuestID(true, 1904715)
    end
end

function Quest19047:FailQuest1904710()
    print("FailQuest1904710")
    actorUtils.FinishQuestID(true, 1904710)
end

function Quest19047:YunjinDrama1()
    print("YunjinDrama1")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 19047)
    self:GetQuestNpcActor(npcs.Coop_YunjinData.alias):PlayEmoSync("Cs_Emo_Avatar_Simple_Common_Set/Cs_Emo_Avatar_Talk/Cs_Emo_Coop_Common/Cs_Emo_Coop_Yunjin_01/Cs_Emo_190479902", "", "", EmoBackType.NONE, false)
end

function Quest19047:YunjinDrama2()
    print("YunjinDrama2")
    self:GetQuestNpcActor(npcs.Coop_YunjinData.alias):PlayEmoSync("Cs_Emo_Avatar_Simple_Common_Set/Cs_Emo_Avatar_Talk/Cs_Emo_Coop_Common/Cs_Emo_Coop_Yunjin_01/Cs_Emo_190479903", "", "", EmoBackType.NONE, false)
end

function Quest19047:YunjinDrama3()
    print("YunjinDrama3")
    self:GetQuestNpcActor(npcs.Coop_YunjinData.alias):PlayEmoSync("Cs_Emo_Avatar_Simple_Common_Set/Cs_Emo_Avatar_Talk/Cs_Emo_Coop_Common/Cs_Emo_Coop_Yunjin_01/Cs_Emo_190479904", "", "", EmoBackType.NONE, false)
end

function Quest19047:YunjinDrama4()
    print("YunjinDrama4")
    self:GetQuestNpcActor(npcs.Coop_YunjinData.alias):PlayEmoSync("Cs_Emo_Avatar_Simple_Common_Set/Cs_Emo_Avatar_Talk/Cs_Emo_Coop_Common/Cs_Emo_Coop_Yunjin_01/Cs_Emo_190479905", "", "", EmoBackType.NONE, false)
end

function Quest19047:YunjinDrama5()
    print("YunjinDrama5")
    self:GetQuestNpcActor(npcs.Coop_YunjinData.alias):PlayEmoSync("Cs_Emo_Avatar_Simple_Common_Set/Cs_Emo_Avatar_Talk/Cs_Emo_Coop_Common/Cs_Emo_Coop_Yunjin_01/Cs_Emo_190479906", "", "", EmoBackType.WITH_BLINK, false)
end

function Quest19047:UnCallYunjinDrama()
    print("YunjinDrama5")
    self:UnCallFunc(self.YunjinDrama1)
    self:UnCallFunc(self.YunjinDrama2)
    self:UnCallFunc(self.YunjinDrama3)
    self:UnCallFunc(self.YunjinDrama4)
    self:UnCallFunc(self.YunjinDrama5)
    self:GetQuestNpcActor(npcs.Coop_YunjinData.alias):ForceFinishEmoSync(EmoBackType.WITH_BLINK)
end

function Quest19047:OnSubStart1904712(arg1)
    print("OnSubStart1904712")
end

function Quest19047:OnSubFinish1904712(arg1)
    print("OnSubFinish1904712")
end

function Quest19047:OnSubStart1904701(arg1)
    print("OnSubStart1904701")
    self:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 1)
    actorMgr:CreateActorWithPos("Q19047Trigger", "Actor/Gadget/Q19047Trigger", 70900002, 0, {x = -614.9753, y = 215.2182, z = 246.1692}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest19047:OnSubFinish1904701(arg1)
    print("OnSubFinish1904701")
    self:RequestCoopInteractionFromSubStartPoint(106401, 1904701)
    self:RequestInteraction(npcs.Coop_YunjinData.alias)
end

function Quest19047:OnSubStart1904702(arg1)
    print("OnSubStart1904702")
end

function Quest19047:OnSubFinish1904702(arg1)
    print("OnSubFinish1904702")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
end

function Quest19047:OnSubStart1904714(arg1)
    print("OnSubStart1904714")
end

function Quest19047:OnSubFinish1904714(arg1)
    print("OnSubFinish1904714")
end

function Quest19047:OnSubStart1904703(arg1)
    print("OnSubStart1904703")
    actorMgr:CreateActorWithPos("Q19047Trigger1", "Actor/Gadget/Q19047Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1904704_C1904702_N509").pos, sceneData:GetDummyPoint(3, "Q1904704_C1904702_N509").rot, true, false, 3)
end

function Quest19047:OnSubFinish1904703(arg1)
    print("OnSubFinish1904703")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 1)
        arg1_2:RequestCoopInteractionFromSubStartPoint(106401, 1904702)
        arg1_2:RequestInteraction(npcs.Coop_YunjinData.alias)
    end, nil, nil, "", false, true)
end

function Quest19047:OnSubStart1904704(arg1)
    print("OnSubStart1904704")
end

function Quest19047:OnSubFinish1904704(arg1)
    print("OnSubFinish1904704")
end

function Quest19047:OnSubStart1904705(arg1)
    print("OnSubStart1904705")
    self.ActionSafeCall(self, function()
        self:CallDelay(2, function()
            actorMgr:CreateActorWithPos("Q19047Trigger4", "Actor/Gadget/Q19047Trigger4", 70900002, 0, {x = -149.2879, y = 256.8013, z = -14.17414}, {x = 0, y = 0, z = 0}, true, false, 3)
        end)
    end)
end

function Quest19047:OnSubFinish1904705(arg1)
    print("OnSubFinish1904705")
    self.ClearNarratorTask(self)
    self.StopNarrator(self)
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    actorMgr:DestroyEntityActor("Q19047Trigger4", 3, false)
    self.CallDelay(self, 2, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 2)
        end, nil, nil, "", false, true)
    end)
end

function Quest19047:OnSubStart1904706(arg1)
    print("OnSubStart1904706")
    self:CallDelay(2.6, function(arg1)
        arg1:RequestCoopInteractionFromSubStartPoint(106401, 1904703)
        actorMgr:CreateActorWithPos("Q19047Trigger3", "Actor/Gadget/Q19047Trigger3", 70900002, 0, {x = -148.2452, y = 260.3408, z = -19.33694}, {x = 0, y = 0, z = 0}, true, false)
    end)
end

function Quest19047:OnSubFinish1904706(arg1)
    print("OnSubFinish1904706")
end

function Quest19047:OnSubStart1904713(arg1)
    print("OnSubStart1904713")
end

function Quest19047:OnSubFinish1904713(arg1)
    print("OnSubFinish1904713")
    self:CallDelay(2, function(arg1)
        arg1:RequestInteraction(npcs.Coop_YunjinData.alias)
    end)

    self:RequestCoopInteractionFromSubStartPoint(106401, 1904704)
end

function Quest19047:OnSubStart1904708(arg1)
    print("OnSubStart1904708")
end

function Quest19047:OnSubFinish1904708(arg1)
    print("OnSubFinish1904708")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
end

function Quest19047:OnSubStart1904707(arg1)
    print("OnSubStart1904707")
    actorMgr:CreateActorWithPos("Q19047Trigger2", "Actor/Gadget/Q19047Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1904707_C1904704_N509").pos, sceneData:GetDummyPoint(3, "Q1904707_C1904704_N509").rot, true, false, 3)
end

function Quest19047:OnSubFinish1904707(arg1)
    print("OnSubFinish1904707")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 3)
        arg1_2:RequestInteraction(npcs.Coop_YunjinData.alias)
    end, nil, nil, "", false, true)
end

function Quest19047:OnSubStart1904709(arg1)
    print("OnSubStart1904709")
    self:GetQuestNpcActor(npcs.Coop_YunjinData.alias):EnableHeadCtrl(true)
    self:UnCallYunjinDrama()
    self:RequestCoopInteractionFromSubStartPoint(106401, 1904705)
end

function Quest19047:OnSubFinish1904709(arg1)
    print("OnSubFinish1904709")
end

function Quest19047:OnSubStart1904710(arg1)
    print("OnSubStart1904710")
    self.ClearNarratorTask(self)
    self.StopNarrator(self)
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self.ActionSafeCall(self, function()
        self:CountDownUIStart(66, 0, 3)
        self:CallDelay(70, self.FailQuest1904710)
        self:CallDelay(3, self.YunjinDrama1)
    end)

    self.GetQuestNpcActor(self, npcs.Coop_YunjinData.alias):EnableHeadCtrl(false)
    self.CallDelay(self, 7.5, self.YunjinDrama2)
    self.CallDelay(self, 19.1, self.YunjinDrama3)
    self.CallDelay(self, 29.8, self.YunjinDrama4)
    self.CallDelay(self, 41.4, self.YunjinDrama5)
end

function Quest19047:OnSubFinish1904710(arg1)
    print("OnSubFinish1904710")
    self:CountDownUITerminate()
    self:UnCallFunc(self.FailQuest1904710)
end

function Quest19047:OnSubFailed1904710(arg1)
    print("OnSubFailed1904710")
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:CountDownUITerminate()
    self:UnCallFunc(self.FailQuest1904710)
end

function Quest19047:OnSubStart1904715(arg1)
    print("OnSubStart1904715")
end

function Quest19047:OnSubFinish1904715(arg1)
    print("OnSubFinish1904715")
end

function Quest19047:OnSubStart1904716(arg1)
    print("OnSubStart1904716")
end

function Quest19047:OnSubFinish1904716(arg1)
    print("OnSubFinish1904716")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 19047)
    end)
end

function Quest19047:OnSubStart1904711(arg1)
    print("OnSubStart1904711")
    self:RequestCoopInteractionFromSubStartPoint(106401, 1904706)
    if self:GetSubQuestState(1904715) == 2 then
        actorUtils.FinishQuestID(false, 1904715)
    end
end

function Quest19047:OnSubFinish1904711(arg1)
    print("OnSubFinish1904711")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
end

return Quest19047
