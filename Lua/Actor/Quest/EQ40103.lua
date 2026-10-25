require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40103 = class("Quest40103", QuestActorProxy)
Quest40103.defaultAlias = "Quest40103"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40103:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4010301"] = self.OnSubStart4010301,
        ["4010302"] = self.OnSubStart4010302,
        ["4010303"] = self.OnSubStart4010303,
        ["4010304"] = self.OnSubStart4010304,
        ["4010305"] = self.OnSubStart4010305,
        ["4010307"] = self.OnSubStart4010307,
        ["4010308"] = self.OnSubStart4010308,
        ["4010309"] = self.OnSubStart4010309,
        ["4010310"] = self.OnSubStart4010310,
        ["4010313"] = self.OnSubStart4010313,
        ["4010306"] = self.OnSubStart4010306
    }
end

function Quest40103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4010301"] = self.OnSubFinish4010301,
        ["4010302"] = self.OnSubFinish4010302,
        ["4010303"] = self.OnSubFinish4010303,
        ["4010304"] = self.OnSubFinish4010304,
        ["4010305"] = self.OnSubFinish4010305,
        ["4010307"] = self.OnSubFinish4010307,
        ["4010308"] = self.OnSubFinish4010308,
        ["4010309"] = self.OnSubFinish4010309,
        ["4010310"] = self.OnSubFinish4010310,
        ["4010313"] = self.OnSubFinish4010313,
        ["4010306"] = self.OnSubFinish4010306
    }
end

function Quest40103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4010310"] = self.OnSubFailed4010310, ["4010306"] = self.OnSubFailed4010306}
end

function Quest40103:Start()
    print("Start")
end

function Quest40103:OnDestroy()
    print("OnDestroy")
end

function Quest40103:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40103:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13155Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13153Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1065Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13091Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13151Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13208Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13209Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13293Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13294Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13295Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13296Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13297Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4010303_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010304_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010305_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010306_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010307_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010308_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010310_TriggerIn", 3, false)
end

function Quest40103:OnSubStart4010301(arg1)
    print("OnSubStart4010301")
end

function Quest40103:OnSubFinish4010301(arg1)
    print("OnSubFinish4010301")
    this:ActionSafeCall(function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:NarratorOnlyTaskByData(datas.Q4010302_NarratorWithId)
        end)
    end)
end

function Quest40103:OnSubStart4010302(arg1)
    print("OnSubStart4010302")
    this:CreateQuestNpc(arg1, npcs.Npc13091Data.id, 1)
end

function Quest40103:OnSubFinish4010302(arg1)
    print("OnSubFinish4010302")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13091Data.alias, 3)
end

function Quest40103:OnSubStart4010303(arg1)
    print("OnSubStart4010303")
    this:CreateQuestNpc(arg1, npcs.Npc13155Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc13155Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13208Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc13208Data.alias):DoFreeStyle(4412, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13209Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc13209Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13293Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc13294Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc13295Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc13296Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc13297Data.id, 8)
    actorMgr:CreateActorWithPos("Q4010303_TriggerIn", "Actor/Gadget/Q4010303_TriggerIn", 70900002, 0, points.TPos_Q4010303_TriggerIn.pos, points.TPos_Q4010303_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13293Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13294Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13295Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13296Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13297Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
end

function Quest40103:OnSubFinish4010303(arg1)
    print("OnSubFinish4010303")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4010304_NarratorWithId)
    end)
end

function Quest40103:OnSubStart4010304(arg1)
    print("OnSubStart4010304")
    this:GetQuestNpcActor(npcs.Npc13155Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13208Data.alias):DoFreeStyle(4412, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13209Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4010304_TriggerIn", "Actor/Gadget/Q4010304_TriggerIn", 70900002, 0, points.TPos_Q4010304_TriggerIn.pos, points.TPos_Q4010304_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13293Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13294Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13295Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13296Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13297Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
end

function Quest40103:OnSubFinish4010304(arg1)
    print("OnSubFinish4010304")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13155Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13208Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13209Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13293Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13294Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13295Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13296Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13297Data.alias, 3)
end

function Quest40103:OnSubStart4010305(arg1)
    print("OnSubStart4010305")
    this:CreateQuestNpc(arg1, npcs.Npc13153Data.id, 1)
    actorMgr:CreateActorWithPos("Q4010305_TriggerIn", "Actor/Gadget/Q4010305_TriggerIn", 70900002, 0, points.TPos_Q4010305_TriggerIn.pos, points.TPos_Q4010305_TriggerIn.rot, true, false, 3)
end

function Quest40103:OnSubFinish4010305(arg1)
    print("OnSubFinish4010305")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4010307_NarratorWithId_2)
    end)
end

function Quest40103:OnSubStart4010307(arg1)
    print("OnSubStart4010307")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 2)
    actorMgr:CreateActorWithPos("Q4010307_TriggerIn", "Actor/Gadget/Q4010307_TriggerIn", 70900002, 0, points.TPos_Q4010307_TriggerIn.pos, points.TPos_Q4010307_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
end

function Quest40103:OnSubFinish4010307(arg1)
    print("OnSubFinish4010307")
    this:NarratorOnlyTaskByData(datas.Q4010307_NarratorWithId)
    this:SafeDestroyQuestNpc(npcs.Npc13153Data.alias, 3)
end

function Quest40103:OnSubStart4010308(arg1)
    print("OnSubStart4010308")
    actorMgr:CreateActorWithPos("Q4010308_TriggerIn", "Actor/Gadget/Q4010308_TriggerIn", 70900002, 0, points.TPos_Q4010308_TriggerIn.pos, points.TPos_Q4010308_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
end

function Quest40103:OnSubFinish4010308(arg1)
    print("OnSubFinish4010308")
end

function Quest40103:OnSubStart4010309(arg1)
    print("OnSubStart4010309")
    this:ActionSafeCall(function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:PlayCutsceneIndex(4010309, function(arg1)
                this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
                    actorUtils.FinishQuestID(false, 4010309)
                end, nil, nil, 0, false, true)
            end, nil, nil, false)
        end, nil, nil, 0, false, true)
    end)
end

function Quest40103:OnSubFinish4010309(arg1)
    print("OnSubFinish4010309")
end

function Quest40103:OnSubStart4010310(arg1)
    print("OnSubStart4010310")
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 1)
    actorMgr:CreateActorWithPos("Q4010310_TriggerIn", "Actor/Gadget/Q4010310_TriggerIn", 70900002, 0, points.TPos_Q4010310_TriggerIn.pos, points.TPos_Q4010310_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
end

function Quest40103:OnSubFinish4010310(arg1)
    print("OnSubFinish4010310")
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
end

function Quest40103:OnSubFailed4010310(arg1)
    print("OnSubFailed4010310")
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
end

function Quest40103:OnSubStart4010313(arg1)
    print("OnSubStart4010313")
    this:ActionSafeCall(function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:PlayCutsceneIndex(4010313, function(arg1)
                this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
                    actorUtils.FinishQuestID(false, 4010313)
                end, nil, nil, 0, false, true)
            end, nil, nil, false)
        end, nil, nil, 0, false, true)
    end)
end

function Quest40103:OnSubFinish4010313(arg1)
    print("OnSubFinish4010313")
end

function Quest40103:OnSubStart4010306(arg1)
    print("OnSubStart4010306")
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 4)
    actorMgr:CreateActorWithPos("Q4010306_TriggerIn", "Actor/Gadget/Q4010306_TriggerIn", 70900002, 0, points.TPos_Q4010306_TriggerIn.pos, points.TPos_Q4010306_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):SitOnChair(8010)
end

function Quest40103:OnSubFinish4010306(arg1)
    print("OnSubFinish4010306")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4010306_NarratorWithId)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
end

function Quest40103:OnSubFailed4010306(arg1)
    print("OnSubFailed4010306")
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
end

return Quest40103
