require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14033 = class("Quest14033", QuestActorProxy)
Quest14033.defaultAlias = "Quest14033"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14033:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1403301"] = self.OnSubStart1403301,
        ["1403303"] = self.OnSubStart1403303,
        ["1403304"] = self.OnSubStart1403304,
        ["1403305"] = self.OnSubStart1403305,
        ["1403306"] = self.OnSubStart1403306,
        ["1403318"] = self.OnSubStart1403318,
        ["1403307"] = self.OnSubStart1403307,
        ["1403308"] = self.OnSubStart1403308,
        ["1403309"] = self.OnSubStart1403309,
        ["1403302"] = self.OnSubStart1403302,
        ["1403310"] = self.OnSubStart1403310,
        ["1403323"] = self.OnSubStart1403323,
        ["1403319"] = self.OnSubStart1403319,
        ["1403311"] = self.OnSubStart1403311,
        ["1403312"] = self.OnSubStart1403312,
        ["1403320"] = self.OnSubStart1403320,
        ["1403321"] = self.OnSubStart1403321,
        ["1403322"] = self.OnSubStart1403322,
        ["1403324"] = self.OnSubStart1403324,
        ["1403325"] = self.OnSubStart1403325,
        ["1403313"] = self.OnSubStart1403313,
        ["1403314"] = self.OnSubStart1403314,
        ["1403326"] = self.OnSubStart1403326,
        ["1403327"] = self.OnSubStart1403327,
        ["1403315"] = self.OnSubStart1403315,
        ["1403316"] = self.OnSubStart1403316,
        ["1403317"] = self.OnSubStart1403317
    }
end

function Quest14033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1403301"] = self.OnSubFinish1403301,
        ["1403303"] = self.OnSubFinish1403303,
        ["1403304"] = self.OnSubFinish1403304,
        ["1403305"] = self.OnSubFinish1403305,
        ["1403306"] = self.OnSubFinish1403306,
        ["1403318"] = self.OnSubFinish1403318,
        ["1403307"] = self.OnSubFinish1403307,
        ["1403308"] = self.OnSubFinish1403308,
        ["1403309"] = self.OnSubFinish1403309,
        ["1403302"] = self.OnSubFinish1403302,
        ["1403310"] = self.OnSubFinish1403310,
        ["1403323"] = self.OnSubFinish1403323,
        ["1403319"] = self.OnSubFinish1403319,
        ["1403311"] = self.OnSubFinish1403311,
        ["1403312"] = self.OnSubFinish1403312,
        ["1403320"] = self.OnSubFinish1403320,
        ["1403321"] = self.OnSubFinish1403321,
        ["1403322"] = self.OnSubFinish1403322,
        ["1403324"] = self.OnSubFinish1403324,
        ["1403325"] = self.OnSubFinish1403325,
        ["1403313"] = self.OnSubFinish1403313,
        ["1403314"] = self.OnSubFinish1403314,
        ["1403326"] = self.OnSubFinish1403326,
        ["1403327"] = self.OnSubFinish1403327,
        ["1403315"] = self.OnSubFinish1403315,
        ["1403316"] = self.OnSubFinish1403316,
        ["1403317"] = self.OnSubFinish1403317
    }
end

function Quest14033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1403301"] = self.OnSubFailed1403301,
        ["1403303"] = self.OnSubFailed1403303,
        ["1403304"] = self.OnSubFailed1403304,
        ["1403305"] = self.OnSubFailed1403305,
        ["1403306"] = self.OnSubFailed1403306,
        ["1403318"] = self.OnSubFailed1403318,
        ["1403307"] = self.OnSubFailed1403307,
        ["1403308"] = self.OnSubFailed1403308,
        ["1403309"] = self.OnSubFailed1403309,
        ["1403302"] = self.OnSubFailed1403302,
        ["1403310"] = self.OnSubFailed1403310,
        ["1403323"] = self.OnSubFailed1403323,
        ["1403319"] = self.OnSubFailed1403319,
        ["1403311"] = self.OnSubFailed1403311,
        ["1403312"] = self.OnSubFailed1403312,
        ["1403320"] = self.OnSubFailed1403320,
        ["1403321"] = self.OnSubFailed1403321,
        ["1403322"] = self.OnSubFailed1403322,
        ["1403324"] = self.OnSubFailed1403324,
        ["1403325"] = self.OnSubFailed1403325,
        ["1403313"] = self.OnSubFailed1403313,
        ["1403314"] = self.OnSubFailed1403314,
        ["1403326"] = self.OnSubFailed1403326,
        ["1403327"] = self.OnSubFailed1403327,
        ["1403315"] = self.OnSubFailed1403315,
        ["1403316"] = self.OnSubFailed1403316,
        ["1403317"] = self.OnSubFailed1403317
    }
end

function Quest14033:Start()
    print("Start")
end

function Quest14033:OnDestroy()
    print("OnDestroy")
end

function Quest14033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14033:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 140332301 then
        actorUtils.FinishQuestID(false, 1403323)
    end
end

function Quest14033:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14033:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14033:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 0.5, arg5, 0.5, 2)
    end)
end

function Quest14033:OnSubStart1403301(arg1)
    print("OnSubStart1403301")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 14033):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1077.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1077.alias, 14033):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 14033):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1077.alias, 14033):DisableInteeHeadCtrl(true)
    end)
end

function Quest14033:OnSubFinish1403301(arg1)
    print("OnSubFinish1403301")
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_1403301, nil)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14033):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1077.alias, 14033):DisableInteeHeadCtrl(false)
end

function Quest14033:OnSubFailed1403301(arg1)
    print("OnSubFailed1403301")
end

function Quest14033:OnSubStart1403303(arg1)
    print("OnSubStart1403303")
    actorMgr:CreateActorWithPos("Q1403303Trigger", "Actor/Gadget/Q1403303Trigger", 70900002, 0, points.Q1403103Trigger.pos, points.Q1403103Trigger.rot, true, false, 3)
end

function Quest14033:OnSubFinish1403303(arg1)
    print("OnSubFinish1403303")
end

function Quest14033:OnSubFailed1403303(arg1)
    print("OnSubFailed1403303")
end

function Quest14033:OnSubStart1403304(arg1)
    print("OnSubStart1403304")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1077.id, 1403304, 0, 15, 1)
end

function Quest14033:OnSubFinish1403304(arg1)
    print("OnSubFinish1403304")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 1093)
    this:PlayerEnterDungeonWithData(2, 1211, 1403304, 1, datas.PlayerEnterDungeonData14032, nil, nil)
end

function Quest14033:OnSubFailed1403304(arg1)
    print("OnSubFailed1403304")
end

function Quest14033:OnSubStart1403305(arg1)
    print("OnSubStart1403305")
    actorMgr:CreateActorWithPos("Q1403305Trigger", "Actor/Gadget/Q1403305Trigger", 70900002, 0, points.Q1403305Trigger.pos, points.Q1403305Trigger.rot, true, false, 20225)
end

function Quest14033:OnSubFinish1403305(arg1)
    print("OnSubFinish1403305")
end

function Quest14033:OnSubFailed1403305(arg1)
    print("OnSubFailed1403305")
end

function Quest14033:OnSubStart1403306(arg1)
    print("OnSubStart1403306")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1077.id, 1403306, 0, 20, 1)
end

function Quest14033:OnSubFinish1403306(arg1)
    print("OnSubFinish1403306")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 20225)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData1403301, nil, nil, nil)
end

function Quest14033:OnSubFailed1403306(arg1)
    print("OnSubFailed1403306")
end

function Quest14033:OnSubStart1403318(arg1)
    print("OnSubStart1403318")
    this:CreateQuestNpc(arg1, npcs.Npc14167.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14170.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14171.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14172.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14167.alias, 14033):SitOnChair(8040, true)
    this:GetQuestNpcActor(npcs.Npc14170.alias, 14033):SitOnChair(8060, true)
    this:GetQuestNpcActor(npcs.Npc14171.alias, 14033):SitOnChair(8080, true)
    this:GetQuestNpcActor(npcs.Npc14172.alias, 14033):SitOnChair(8013, true)
    this:GetQuestNpcActor(npcs.Npc14167.alias, 14033):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14170.alias, 14033):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14171.alias, 14033):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14172.alias, 14033):DisableInteeHeadCtrl(true)
end

function Quest14033:OnSubFinish1403318(arg1)
    print("OnSubFinish1403318")
    this:SafeDestroyQuestNpc(npcs.Npc14167.alias, 1093)
    this:SafeDestroyQuestNpc(npcs.Npc14170.alias, 1093)
    this:SafeDestroyQuestNpc(npcs.Npc14171.alias, 1093)
    this:SafeDestroyQuestNpc(npcs.Npc14172.alias, 1093)
end

function Quest14033:OnSubFailed1403318(arg1)
    print("OnSubFailed1403318")
end

function Quest14033:OnSubStart1403307(arg1)
    print("OnSubStart1403307")
    actorMgr:CreateActorWithPos("Q1403307Trigger", "Actor/Gadget/Q1403307Trigger", 70900002, 0, points.Q1403307Trigger.pos, points.Q1403307Trigger.rot, true, false, 1093)
end

function Quest14033:OnSubFinish1403307(arg1)
    print("OnSubFinish1403307")
end

function Quest14033:OnSubFailed1403307(arg1)
    print("OnSubFailed1403307")
end

function Quest14033:OnSubStart1403308(arg1)
    print("OnSubStart1403308")
    this:DestroyQuestNpcActor(npcs.Npc14167.alias, 1093)
    this:DestroyQuestNpcActor(npcs.Npc14170.alias, 1093)
    this:DestroyQuestNpcActor(npcs.Npc14172.alias, 1093)
    this:DestroyQuestNpcActor(npcs.Npc14171.alias, 1093)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1077.id, 1403308, 0, 8, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1073.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14033):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1077.alias, 14033):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1071.alias, 14033):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1073.alias, 14033):SitOnChair(0, false)
end

function Quest14033:OnSubFinish1403308(arg1)
    print("OnSubFinish1403308")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 1093)
end

function Quest14033:OnSubFailed1403308(arg1)
    print("OnSubFailed1403308")
end

function Quest14033:OnSubStart1403309(arg1)
    print("OnSubStart1403309")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1077.id, 0, false, 0)
        this:NpcCreateWithNpcTrigger(npcs.Npc14131.id, 1403309, 0, 7)
        this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 14033):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1071.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1071.alias, 14033):DoFreeStyle(1220, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1073.id, 0, false, 0)
    end)
end

function Quest14033:OnSubFinish1403309(arg1)
    print("OnSubFinish1403309")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 1093)
    this:SafeDestroyQuestNpc(npcs.Npc14131.alias, 1093)
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 1093)
    this:SafeDestroyQuestNpc(npcs.Npc1071.alias, 1093)
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 1093)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData1403302, nil, nil, nil)
end

function Quest14033:OnSubFailed1403309(arg1)
    print("OnSubFailed1403309")
end

function Quest14033:OnSubStart1403302(arg1)
    print("OnSubStart1403302")
end

function Quest14033:OnSubFinish1403302(arg1)
    print("OnSubFinish1403302")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1403302, nil)
    end)
end

function Quest14033:OnSubFailed1403302(arg1)
    print("OnSubFailed1403302")
end

function Quest14033:OnSubStart1403310(arg1)
    print("OnSubStart1403310")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1077.id, 1403310, 0, 6, 1)
end

function Quest14033:OnSubFinish1403310(arg1)
    print("OnSubFinish1403310")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
end

function Quest14033:OnSubFailed1403310(arg1)
    print("OnSubFailed1403310")
end

function Quest14033:OnSubStart1403323(arg1)
    print("OnSubStart1403323")
end

function Quest14033:OnSubFinish1403323(arg1)
    print("OnSubFinish1403323")
end

function Quest14033:OnSubFailed1403323(arg1)
    print("OnSubFailed1403323")
end

function Quest14033:OnSubStart1403319(arg1)
    print("OnSubStart1403319")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1077.id, 1403319, 0, 6.5, 1)
end

function Quest14033:OnSubFinish1403319(arg1)
    print("OnSubFinish1403319")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
end

function Quest14033:OnSubFailed1403319(arg1)
    print("OnSubFailed1403319")
end

function Quest14033:OnSubStart1403311(arg1)
    print("OnSubStart1403311")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1077.id, 1403311, 0, 20, 1)
end

function Quest14033:OnSubFinish1403311(arg1)
    print("OnSubFinish1403311")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
end

function Quest14033:OnSubFailed1403311(arg1)
    print("OnSubFailed1403311")
end

function Quest14033:OnSubStart1403312(arg1)
    print("OnSubStart1403312")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121403312)
        this:QuestLimitRegionTask(1403312, 3, nil, {x = 4837.206, y = 344.04, z = 3639.822}, {x = 0, y = 0, z = 0}, 1, 60, 80, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "Q1403314LimitedHintRegion", nil, nil, nil)
    end)
end

function Quest14033:OnSubFinish1403312(arg1)
    print("OnSubFinish1403312")
end

function Quest14033:OnSubFailed1403312(arg1)
    print("OnSubFailed1403312")
    this:CancelStoryByQuest(121403312)
    this:ClearQuestLimitRegionTask()
end

function Quest14033:OnSubStart1403320(arg1)
    print("OnSubStart1403320")
end

function Quest14033:OnSubFinish1403320(arg1)
    print("OnSubFinish1403320")
end

function Quest14033:OnSubFailed1403320(arg1)
    print("OnSubFailed1403320")
end

function Quest14033:OnSubStart1403321(arg1)
    print("OnSubStart1403321")
end

function Quest14033:OnSubFinish1403321(arg1)
    print("OnSubFinish1403321")
end

function Quest14033:OnSubFailed1403321(arg1)
    print("OnSubFailed1403321")
end

function Quest14033:OnSubStart1403322(arg1)
    print("OnSubStart1403322")
end

function Quest14033:OnSubFinish1403322(arg1)
    print("OnSubFinish1403322")
end

function Quest14033:OnSubFailed1403322(arg1)
    print("OnSubFailed1403322")
end

function Quest14033:OnSubStart1403324(arg1)
    print("OnSubStart1403324")
    this:DeployStoryByQuest(121403312)
    this:QuestLimitRegionTask(1403324, 3, nil, {x = 4837.206, y = 344.04, z = 3639.822}, {x = 0, y = 0, z = 0}, 1, 60, 80, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "Q1403314LimitedHintRegion", nil, nil, nil)
end

function Quest14033:OnSubFinish1403324(arg1)
    print("OnSubFinish1403324")
end

function Quest14033:OnSubFailed1403324(arg1)
    print("OnSubFailed1403324")
    this:CancelStoryByQuest(121403312)
    this:ClearQuestLimitRegionTask()
end

function Quest14033:OnSubStart1403325(arg1)
    print("OnSubStart1403325")
    this:DeployStoryByQuest(121403312)
    this:QuestLimitRegionTask(1403325, 3, nil, {x = 4837.206, y = 344.04, z = 3639.822}, {x = 0, y = 0, z = 0}, 1, 60, 80, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "Q1403314LimitedHintRegion", nil, nil, nil)
end

function Quest14033:OnSubFinish1403325(arg1)
    print("OnSubFinish1403325")
    this:ClearQuestLimitRegionTask()
end

function Quest14033:OnSubFailed1403325(arg1)
    print("OnSubFailed1403325")
    this:CancelStoryByQuest(121403312)
    this:ClearQuestLimitRegionTask()
end

function Quest14033:OnSubStart1403313(arg1)
    print("OnSubStart1403313")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc14179.id, 1403313, 0, 30, 1)
    globalActor:ResumePaimonInProfilePage(datas.PaimonHideScene)
    this:DeployStoryByQuest(121403312)
    this:CreateLocalGadget(70220031, "1", {x = 4808.797, y = 344.739, z = 3646.578}, {x = 0, y = 337.885, z = 0}, 3, nil, nil, false, 201, true)
    this:CreateLocalGadget(70220031, "2", {x = 4811.007, y = 344.867, z = 3652.416}, {x = 0, y = 359.36, z = 0}, 3, nil, nil, false, 201, true)
end

function Quest14033:OnSubFinish1403313(arg1)
    print("OnSubFinish1403313")
    this:SafeDestroyQuestNpc(npcs.Npc14179.alias, 3)
    this:RemoveLocalGadget(70220031, "1")
    this:RemoveLocalGadget(70220031, "2")
end

function Quest14033:OnSubFailed1403313(arg1)
    print("OnSubFailed1403313")
    this:SafeDestroyQuestNpc(npcs.Npc14179.alias, 3)
    this:RemoveLocalGadget(70220031, "1")
    this:RemoveLocalGadget(70220031, "2")
end

function Quest14033:OnSubStart1403314(arg1)
    print("OnSubStart1403314")
    globalActor:DisablePaimonInProfilePage(datas.PaimonHideScene)
    this:ActionSafeCall(function(arg1_2)
        this:DeployStoryByQuest(121403314)
        this:QuestLimitRegionTask(1403314, 3, nil, {x = 4837.206, y = 344.04, z = 3639.822}, {x = 0, y = 0, z = 0}, 1, 60, 80, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "Q1403314LimitedHintRegion", nil, nil, nil)
        if actorUtils.IsMalePlayer() then
            this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DoFreeStyle(1080, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):SetPlayerNpcEnergy()
        else
            this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DoFreeStyle(1080, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):SetPlayerNpcEnergy()
        end
    end)
end

function Quest14033:OnSubFinish1403314(arg1)
    print("OnSubFinish1403314")
    globalActor:ResumePaimonInProfilePage(datas.PaimonHideScene)
end

function Quest14033:OnSubFailed1403314(arg1)
    print("OnSubFailed1403314")
    globalActor:ResumePaimonInProfilePage(datas.PaimonHideScene)
    this:CancelStoryByQuest(121403314)
    this:ClearQuestLimitRegionTask()
    this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 3)
end

function Quest14033:OnSubStart1403326(arg1)
    print("OnSubStart1403326")
end

function Quest14033:OnSubFinish1403326(arg1)
    print("OnSubFinish1403326")
end

function Quest14033:OnSubFailed1403326(arg1)
    print("OnSubFailed1403326")
end

function Quest14033:OnSubStart1403327(arg1)
    print("OnSubStart1403327")
end

function Quest14033:OnSubFinish1403327(arg1)
    print("OnSubFinish1403327")
end

function Quest14033:OnSubFailed1403327(arg1)
    print("OnSubFailed1403327")
end

function Quest14033:OnSubStart1403315(arg1)
    print("OnSubStart1403315")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc14132.id, 1403315, 0, 20, 1)
    globalActor:DisablePaimonInProfilePage(datas.PaimonHideScene)
    this:DeployStoryByQuest(121403314)
    this:QuestLimitRegionTask(1403315, 3, nil, {x = 4837.206, y = 344.04, z = 3639.822}, {x = 0, y = 0, z = 0}, 1, 60, 80, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "Q1403314LimitedHintRegion", nil, nil, nil)
    if actorUtils.IsMalePlayer() then
        this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DoFreeStyle(1080, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
        this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):SetPlayerNpcEnergy()
    else
        this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DoFreeStyle(1080, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
        this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):SetPlayerNpcEnergy()
    end

    this:CreateLocalGadget(70220031, "1", {x = 4808.797, y = 344.739, z = 3646.578}, {x = 0, y = 337.885, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70220031, "2", {x = 4811.007, y = 344.867, z = 3652.416}, {x = 0, y = 359.36, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70291288, "0", {x = 4803.73, y = 344.209, z = 3650.75}, {x = 0, y = 103.189, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest14033:OnSubFinish1403315(arg1)
    print("OnSubFinish1403315")
    this:SafeDestroyQuestNpc(npcs.Npc14132.alias, 3)
    globalActor:ResumePaimonInProfilePage(datas.PaimonHideScene)
    this:CancelStoryByQuest(121403314)
    this:RemoveLocalGadget(70220031, "1")
    this:RemoveLocalGadget(70220031, "2")
    this:RemoveLocalGadget(70291288, "0")
end

function Quest14033:OnSubFailed1403315(arg1)
    print("OnSubFailed1403315")
    globalActor:ResumePaimonInProfilePage(datas.PaimonHideScene)
    this:CancelStoryByQuest(121403314)
    this:ClearQuestLimitRegionTask()
    this:RemoveLocalGadget(70220031, "1")
    this:RemoveLocalGadget(70220031, "2")
    this:RemoveLocalGadget(70291288, "0")
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14132.alias, 3)
    this:ClearNpcTriggerByQuestId(1403315)
end

function Quest14033:OnSubStart1403316(arg1)
    print("OnSubStart1403316")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc14136.id, 1403316, 0, 10, 1)
    this:QuestLimitRegionTask(1403316, 3, nil, {x = 4837.206, y = 344.04, z = 3639.822}, {x = 0, y = 0, z = 0}, 1, 60, 80, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "Q1403314LimitedHintRegion", nil, nil, nil)
    globalActor:DisablePaimonInProfilePage(datas.PaimonHideScene)
    this:ActionSafeCall(function(arg1_2)
        this:DeployStoryByQuest(121403316)
        if actorUtils.IsMalePlayer() then
            this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DoFreeStyle(1230, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):SetPlayerNpcEnergy()
        else
            this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DoFreeStyle(1230, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):SetPlayerNpcEnergy()
        end
    end)
end

function Quest14033:OnSubFinish1403316(arg1)
    print("OnSubFinish1403316")
    this:SafeDestroyQuestNpc(npcs.Npc14136.alias, 3)
    globalActor:ResumePaimonInProfilePage(datas.PaimonHideScene)
end

function Quest14033:OnSubFailed1403316(arg1)
    print("OnSubFailed1403316")
    globalActor:ResumePaimonInProfilePage(datas.PaimonHideScene)
    this:CancelStoryByQuest(121403316)
    this:ClearQuestLimitRegionTask()
    this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14136.alias, 3)
    this:ClearNpcTriggerByQuestId(1403316)
end

function Quest14033:OnSubStart1403317(arg1)
    print("OnSubStart1403317")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc14136.id, 1403317, 0, 10, 1)
    globalActor:DisablePaimonInProfilePage(datas.PaimonHideScene)
    this:DeployStoryByQuest(121403316)
    this:QuestLimitRegionTask(1403314, 3, nil, {x = 4837.206, y = 344.04, z = 3639.822}, {x = 0, y = 0, z = 0}, 1, 60, 80, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "Q1403314LimitedHintRegion", nil, nil, nil)
    this:ActionSafeCall(function(arg1_2)
        if actorUtils.IsMalePlayer() then
            this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DoFreeStyle(1190, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):SetPlayerNpcEnergy()
        else
            this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DoFreeStyle(1190, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):SetPlayerNpcEnergy()
        end
    end)
end

function Quest14033:OnSubFinish1403317(arg1)
    print("OnSubFinish1403317")
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14136.alias, 3)
    this:ClearQuestLimitRegionTask()
    globalActor:ResumePaimonInProfilePage(datas.PaimonHideScene)
    this:ActionSafeCall(function(arg1)
        this:CancelStoryByQuest(121403316)
    end)

    this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 3)
end

function Quest14033:OnSubFailed1403317(arg1)
    print("OnSubFailed1403317")
    this:ClearQuestLimitRegionTask()
    globalActor:ResumePaimonInProfilePage(datas.PaimonHideScene)
    this:CancelStoryByQuest(121403316)
    this:GetQuestNpcActor(npcs.Npc1025.alias, 14033):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1026.alias, 14033):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14136.alias, 3)
    this:ClearNpcTriggerByQuestId(1403317)
end

return Quest14033
