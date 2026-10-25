require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14017 = class("Quest14017", QuestActorProxy)
Quest14017.defaultAlias = "Quest14017"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14017:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1401701"] = self.OnSubStart1401701,
        ["1401713"] = self.OnSubStart1401713,
        ["1401702"] = self.OnSubStart1401702,
        ["1401703"] = self.OnSubStart1401703,
        ["1401704"] = self.OnSubStart1401704,
        ["1401705"] = self.OnSubStart1401705,
        ["1401711"] = self.OnSubStart1401711,
        ["1401712"] = self.OnSubStart1401712,
        ["1401706"] = self.OnSubStart1401706,
        ["1401707"] = self.OnSubStart1401707,
        ["1401714"] = self.OnSubStart1401714,
        ["1401708"] = self.OnSubStart1401708,
        ["1401715"] = self.OnSubStart1401715,
        ["1401709"] = self.OnSubStart1401709,
        ["1401710"] = self.OnSubStart1401710
    }
end

function Quest14017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1401701"] = self.OnSubFinish1401701,
        ["1401713"] = self.OnSubFinish1401713,
        ["1401702"] = self.OnSubFinish1401702,
        ["1401703"] = self.OnSubFinish1401703,
        ["1401704"] = self.OnSubFinish1401704,
        ["1401705"] = self.OnSubFinish1401705,
        ["1401711"] = self.OnSubFinish1401711,
        ["1401712"] = self.OnSubFinish1401712,
        ["1401706"] = self.OnSubFinish1401706,
        ["1401707"] = self.OnSubFinish1401707,
        ["1401714"] = self.OnSubFinish1401714,
        ["1401708"] = self.OnSubFinish1401708,
        ["1401715"] = self.OnSubFinish1401715,
        ["1401709"] = self.OnSubFinish1401709,
        ["1401710"] = self.OnSubFinish1401710
    }
end

function Quest14017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1401705"] = self.OnSubFailed1401705}
end

function Quest14017:Start()
    print("Start")
end

function Quest14017:OnDestroy()
    print("OnDestroy")
end

function Quest14017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14017:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14017:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest14017:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14017:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14017:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest14017:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 1401714)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 1401715)
    end
end

function Quest14017:OnSubStart1401701(arg1)
    print("OnSubStart1401701")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc1075Data.id, 1401701, 0, 10, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13321Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13399Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5126Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13321Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14017:OnSubFinish1401701(arg1)
    print("OnSubFinish1401701")
end

function Quest14017:OnSubStart1401713(arg1)
    print("OnSubStart1401713")
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5126Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1401713_Trigger", "Actor/Gadget/Q1401713_Trigger", 70900002, 0, points.TPos_Q1401713_Trigger.pos, points.TPos_Q1401713_Trigger.rot, true, false, 3)
end

function Quest14017:OnSubFinish1401713(arg1)
    print("OnSubFinish1401713")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13709Data.alias, 3)
end

function Quest14017:OnSubStart1401702(arg1)
    print("OnSubStart1401702")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13323Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13321Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13399Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5126Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13323Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13321Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13399Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    end)
end

function Quest14017:OnSubFinish1401702(arg1)
    print("OnSubFinish1401702")
end

function Quest14017:OnSubStart1401703(arg1)
    print("OnSubStart1401703")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc1075Data.id, 1401703, 0, 20, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5126Data.alias, 1, true)
end

function Quest14017:OnSubFinish1401703(arg1)
    print("OnSubFinish1401703")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1401703)
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13709Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13323Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13321Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13399Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5126Data.alias, 0, true)
end

function Quest14017:OnSubStart1401704(arg1)
    print("OnSubStart1401704")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc13320Data.id, 1401704, 0, 20, 1)
    this:ActorDestroy("Q1401705_ChallengeFailTrigger")
    this:ActorDestroy("Q1401705_FocusTrigger")
end

function Quest14017:OnSubFinish1401704(arg1)
    print("OnSubFinish1401704")
    this:SafeDestroyQuestNpc(npcs.Npc13320Data.alias, 3)
end

function Quest14017:OnSubStart1401705(arg1)
    print("OnSubStart1401705")
    actorMgr:CreateActorWithPos("Q1401705_ChallengeFailTrigger", "Actor/Gadget/Q1401705_ChallengeFailTrigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q1401705_FocusTrigger", "Actor/Gadget/Q1401705_FocusTrigger", 70900002, 0, {x = 2655.066, y = 469.117, z = 4125.125}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest14017:OnSubFinish1401705(arg1)
    print("OnSubFinish1401705")
    this:ActorDestroy("Q1401705_ChallengeFailTrigger")
    this:ActorDestroy("Q1401705_FocusTrigger")
end

function Quest14017:OnSubFailed1401705(arg1)
    print("OnSubFailed1401705")
    this:ActorDestroy("Q1401705_ChallengeFailTrigger")
    this:ActorDestroy("Q1401705_FocusTrigger")
end

function Quest14017:OnSubStart1401711(arg1)
    print("OnSubStart1401711")
    this:CreateQuestNpc(arg1, npcs.Npc13320Data.id, 0)
    this:CallDelayByQuest("delaySpawnTrigger", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q1401711_Trigger", "Actor/Gadget/Q1401711_Trigger", 70900002, 0, points.TPos_Q1401711_Trigger.pos, points.TPos_Q1401711_Trigger.rot, true, false, 3)
    end)
end

function Quest14017:OnSubFinish1401711(arg1)
    print("OnSubFinish1401711")
    this:ActorDestroy("Q1401711_Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc13320Data.alias, 3)
end

function Quest14017:OnSubStart1401712(arg1)
    print("OnSubStart1401712")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
    this:GetQuestNpcActor(npcs.Npc13774Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13775Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13776Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13777Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    actorMgr:CreateActorWithPos("Q14017_DisablePaimonTrigger", "Actor/Gadget/Q14017_DisablePaimonTrigger", 70900002, 0, points.TPos_Q14017_DisablePaimonTrigger.pos, points.TPos_Q14017_DisablePaimonTrigger.rot, true, false, 3)
end

function Quest14017:OnSubFinish1401712(arg1)
    print("OnSubFinish1401712")
    this:DeployStoryByQuest(121401700)
end

function Quest14017:OnSubStart1401706(arg1)
    print("OnSubStart1401706")
    this:GetQuestNpcActor(npcs.Npc13774Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13775Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13776Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13777Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    actorMgr:CreateActorWithPos("Q14017_DisablePaimonTrigger", "Actor/Gadget/Q14017_DisablePaimonTrigger", 70900002, 0, points.TPos_Q14017_DisablePaimonTrigger.pos, points.TPos_Q14017_DisablePaimonTrigger.rot, true, false, 3)
end

function Quest14017:OnSubFinish1401706(arg1)
    print("OnSubFinish1401706")
    this:CancelStoryByQuest(121401700)
end

function Quest14017:OnSubStart1401707(arg1)
    print("OnSubStart1401707")
    this:GetQuestNpcActor(npcs.Npc13774Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13775Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13776Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13777Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    actorMgr:CreateActorWithPos("Q14017_DisablePaimonTrigger", "Actor/Gadget/Q14017_DisablePaimonTrigger", 70900002, 0, points.TPos_Q14017_DisablePaimonTrigger.pos, points.TPos_Q14017_DisablePaimonTrigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1401707_Trigger", "Actor/Gadget/Q1401707_Trigger", 70900002, 0, points.TPos_Q1401707_Trigger.pos, points.TPos_Q1401707_Trigger.rot, true, false, 3)
end

function Quest14017:OnSubFinish1401707(arg1)
    print("OnSubFinish1401707")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1401709)
    this:ActorDestroy("Q14017_DisablePaimonTrigger")
    globalActor:ResumePaimonInProfilePage({3})
    this:SafeDestroyQuestNpc(npcs.Npc13774Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13775Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13776Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13777Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Quest14017:OnSubStart1401714(arg1)
    print("OnSubStart1401714")
end

function Quest14017:OnSubFinish1401714(arg1)
    print("OnSubFinish1401714")
end

function Quest14017:OnSubStart1401708(arg1)
    print("OnSubStart1401708")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 1401708, 0, 5, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13365Data.id, 0)
end

function Quest14017:OnSubFinish1401708(arg1)
    print("OnSubFinish1401708")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1401708)
    this:SafeDestroyQuestNpc(npcs.Npc13365Data.alias, 3)
end

function Quest14017:OnSubStart1401715(arg1)
    print("OnSubStart1401715")
end

function Quest14017:OnSubFinish1401715(arg1)
    print("OnSubFinish1401715")
end

function Quest14017:OnSubStart1401709(arg1)
    print("OnSubStart1401709")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 1401709, 0, 10, 1)
end

function Quest14017:OnSubFinish1401709(arg1)
    print("OnSubFinish1401709")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest14017:OnSubStart1401710(arg1)
    print("OnSubStart1401710")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc13323Data.id, 1401710, 0, 10, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13321Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13399Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5123Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5128Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5130Data.id, 0)
    this:CreateLocalGadget(70711335, "0", datas.PaintPoint, {x = 0.0, y = 283.235, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70711355, "0", datas.PaintPoint, {x = 0.0, y = 283.235, z = 0.0}, 3, nil, nil, false)
end

function Quest14017:OnSubFinish1401710(arg1)
    print("OnSubFinish1401710")
    this:RemoveLocalGadget(70711335, "0")
    this:RemoveLocalGadget(70711355, "0")
    this:SafeDestroyQuestNpc(npcs.Npc13323Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13321Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13399Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5123Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5128Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5130Data.alias, 3)
end

return Quest14017
