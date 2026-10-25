require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15037 = class("Quest15037", QuestActorProxy)
Quest15037.defaultAlias = "Quest15037"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15037:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503701"] = self.OnSubStart1503701,
        ["1503702"] = self.OnSubStart1503702,
        ["1503703"] = self.OnSubStart1503703,
        ["1503704"] = self.OnSubStart1503704,
        ["1503705"] = self.OnSubStart1503705,
        ["1503706"] = self.OnSubStart1503706,
        ["1503707"] = self.OnSubStart1503707,
        ["1503708"] = self.OnSubStart1503708,
        ["1503709"] = self.OnSubStart1503709,
        ["1503710"] = self.OnSubStart1503710,
        ["1503711"] = self.OnSubStart1503711,
        ["1503712"] = self.OnSubStart1503712,
        ["1503713"] = self.OnSubStart1503713,
        ["1503714"] = self.OnSubStart1503714,
        ["1503715"] = self.OnSubStart1503715,
        ["1503716"] = self.OnSubStart1503716,
        ["1503717"] = self.OnSubStart1503717
    }
end

function Quest15037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503701"] = self.OnSubFinish1503701,
        ["1503702"] = self.OnSubFinish1503702,
        ["1503703"] = self.OnSubFinish1503703,
        ["1503704"] = self.OnSubFinish1503704,
        ["1503705"] = self.OnSubFinish1503705,
        ["1503706"] = self.OnSubFinish1503706,
        ["1503707"] = self.OnSubFinish1503707,
        ["1503708"] = self.OnSubFinish1503708,
        ["1503709"] = self.OnSubFinish1503709,
        ["1503710"] = self.OnSubFinish1503710,
        ["1503711"] = self.OnSubFinish1503711,
        ["1503712"] = self.OnSubFinish1503712,
        ["1503713"] = self.OnSubFinish1503713,
        ["1503714"] = self.OnSubFinish1503714,
        ["1503715"] = self.OnSubFinish1503715,
        ["1503716"] = self.OnSubFinish1503716,
        ["1503717"] = self.OnSubFinish1503717
    }
end

function Quest15037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15037:Start()
    print("Start")
end

function Quest15037:OnDestroy()
    print("OnDestroy")
end

function Quest15037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15037:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q1503703Trigger")
    this:ActorDestroy("Q1503717Trigger")
end

function Quest15037:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1503716)
    end
end

function Quest15037:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15037:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15037:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15037:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15037:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest15037:OnSubStart1503701(arg1)
    print("OnSubStart1503701")
end

function Quest15037:OnSubFinish1503701(arg1)
    print("OnSubFinish1503701")
end

function Quest15037:OnSubStart1503702(arg1)
    print("OnSubStart1503702")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc1311.id, 0, 30, 1503702)
    end)
end

function Quest15037:OnSubFinish1503702(arg1)
    print("OnSubFinish1503702")
    this:SafeDestroyQuestNpc(npcs.Npc1311.alias, 1082)
end

function Quest15037:OnSubStart1503703(arg1)
    print("OnSubStart1503703")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15510.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
        this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
    end)

    actorMgr:CreateActorWithPos("Q1503703Trigger", "Actor/Gadget/Q1503703Trigger", 70900002, 0, points._Q1503703TriggerPoint_.pos, points._Q1503703TriggerPoint_.rot, true, false, 1082)
end

function Quest15037:OnSubFinish1503703(arg1)
    print("OnSubFinish1503703")
    this:ActorDestroy("Q1503703Trigger")
    this:SetNavigationByMainId(15037, true)
end

function Quest15037:OnSubStart1503704(arg1)
    print("OnSubStart1503704")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15306.id, 0, 1503704, 30, true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503704(arg1)
    print("OnSubFinish1503704")
    this:NpcDestroyImmediately(20271, npcs.Npc15306.alias)
end

function Quest15037:OnSubStart1503705(arg1)
    print("OnSubStart1503705")
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(121503700)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503705(arg1)
    print("OnSubFinish1503705")
end

function Quest15037:OnSubStart1503706(arg1)
    print("OnSubStart1503706")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503706)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503706(arg1)
    print("OnSubFinish1503706")
    this:NpcDestroyImmediately(20271, npcs.Npc15306.alias)
end

function Quest15037:OnSubStart1503707(arg1)
    print("OnSubStart1503707")
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(121503700)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503707(arg1)
    print("OnSubFinish1503707")
end

function Quest15037:OnSubStart1503708(arg1)
    print("OnSubStart1503708")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503708)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503708(arg1)
    print("OnSubFinish1503708")
    this:NpcDestroyImmediately(20271, npcs.Npc15306.alias)
end

function Quest15037:OnSubStart1503709(arg1)
    print("OnSubStart1503709")
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(121503700)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503709(arg1)
    print("OnSubFinish1503709")
end

function Quest15037:OnSubStart1503710(arg1)
    print("OnSubStart1503710")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503710)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503710(arg1)
    print("OnSubFinish1503710")
    this:NpcDestroyImmediately(20271, npcs.Npc15306.alias)
end

function Quest15037:OnSubStart1503711(arg1)
    print("OnSubStart1503711")
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(121503700)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503711(arg1)
    print("OnSubFinish1503711")
end

function Quest15037:OnSubStart1503712(arg1)
    print("OnSubStart1503712")
    this:NpcCreateWithNpcTrigger(npcs.Npc15306.id, 0, 40, 1503712)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503712(arg1)
    print("OnSubFinish1503712")
    this:NpcDestroyImmediately(20271, npcs.Npc15306.alias)
end

function Quest15037:OnSubStart1503713(arg1)
    print("OnSubStart1503713")
    this:CreateQuestNpc(arg1, npcs.Npc1311.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1311.alias, 15037):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1311.alias, 15037):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(121503700)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503713(arg1)
    print("OnSubFinish1503713")
end

function Quest15037:OnSubStart1503714(arg1)
    print("OnSubStart1503714")
    this:NpcCreateWithNpcTrigger(npcs.Npc1311.id, 0, 40, 1503714)
    this:GetQuestNpcActor(npcs.Npc1311.alias, 15037):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1311.alias, 15037):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:DeployStoryByQuest(121503700)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503714(arg1)
    print("OnSubFinish1503714")
    this:CancelStoryByQuest(121503700)
end

function Quest15037:OnSubStart1503715(arg1)
    print("OnSubStart1503715")
    this:NpcCreateWithNpcTrigger(npcs.Npc1311.id, 0, 40, 1503715)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DoFreeStyle(1340, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15510.alias, 15037):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_MidClosed01", 0, false, true, true)
    this:CreateLocalGadget(74018037, "15037", {x = 1.802, y = 0.939, z = 38.429}, {x = 0, y = 180, z = 0}, 1082, nil, nil, false, 0, true)
end

function Quest15037:OnSubFinish1503715(arg1)
    print("OnSubFinish1503715")
    this:NpcDestroyImmediately(1082, npcs.Npc15510.alias)
    this:RemoveLocalGadget(74018037, "15037")
    this:SetNavigationByMainId(15037, true)
end

function Quest15037:OnSubStart1503716(arg1)
    print("OnSubStart1503716")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1311.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1311.alias, 15037):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15468.id, 0, false, 0)
end

function Quest15037:OnSubFinish1503716(arg1)
    print("OnSubFinish1503716")
    this:NpcDestroyImmediately(20271, npcs.Npc1311.alias)
    this:NpcDestroyImmediately(20271, npcs.Npc15468.alias)
end

function Quest15037:OnSubStart1503717(arg1)
    print("OnSubStart1503717")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1311.id, 0, 1503717, 30, true)
    actorMgr:CreateActorWithPos("Q1503717Trigger", "Actor/Gadget/Q1503717Trigger", 70900002, 0, points._Q1503717TriggerPoint_.pos, points._Q1503717TriggerPoint_.rot, true, false, 20271)
end

function Quest15037:OnSubFinish1503717(arg1)
    print("OnSubFinish1503717")
    this:SafeDestroyQuestNpc(npcs.Npc1311.alias, 1082)
    this:ActorDestroy("Q1503717Trigger")
end

return Quest15037
