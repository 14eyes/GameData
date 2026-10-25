require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14029 = class("Quest14029", QuestActorProxy)
Quest14029.defaultAlias = "Quest14029"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14029:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402901"] = self.OnSubStart1402901,
        ["1402902"] = self.OnSubStart1402902,
        ["1402912"] = self.OnSubStart1402912,
        ["1402903"] = self.OnSubStart1402903,
        ["1402904"] = self.OnSubStart1402904,
        ["1402905"] = self.OnSubStart1402905,
        ["1402906"] = self.OnSubStart1402906,
        ["1402907"] = self.OnSubStart1402907,
        ["1402908"] = self.OnSubStart1402908,
        ["1402909"] = self.OnSubStart1402909,
        ["1402910"] = self.OnSubStart1402910,
        ["1402911"] = self.OnSubStart1402911
    }
end

function Quest14029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402901"] = self.OnSubFinish1402901,
        ["1402902"] = self.OnSubFinish1402902,
        ["1402912"] = self.OnSubFinish1402912,
        ["1402903"] = self.OnSubFinish1402903,
        ["1402904"] = self.OnSubFinish1402904,
        ["1402905"] = self.OnSubFinish1402905,
        ["1402906"] = self.OnSubFinish1402906,
        ["1402907"] = self.OnSubFinish1402907,
        ["1402908"] = self.OnSubFinish1402908,
        ["1402909"] = self.OnSubFinish1402909,
        ["1402910"] = self.OnSubFinish1402910,
        ["1402911"] = self.OnSubFinish1402911
    }
end

function Quest14029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1402901"] = self.OnSubFailed1402901,
        ["1402902"] = self.OnSubFailed1402902,
        ["1402912"] = self.OnSubFailed1402912,
        ["1402903"] = self.OnSubFailed1402903,
        ["1402904"] = self.OnSubFailed1402904,
        ["1402905"] = self.OnSubFailed1402905,
        ["1402906"] = self.OnSubFailed1402906,
        ["1402907"] = self.OnSubFailed1402907,
        ["1402908"] = self.OnSubFailed1402908,
        ["1402909"] = self.OnSubFailed1402909,
        ["1402910"] = self.OnSubFailed1402910,
        ["1402911"] = self.OnSubFailed1402911
    }
end

function Quest14029:Start()
    print("Start")
end

function Quest14029:OnDestroy()
    print("OnDestroy")
end

function Quest14029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14029:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest14029:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14029:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14029:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14029:OnSubStart1402901(arg1)
    print("OnSubStart1402901")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14039.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14043.id, arg1)
    this:NpcCreateWithNpcTrigger(npcs.Npc14042.id, 1402901, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc14044.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14041.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14166.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14168.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14169.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14173.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14174.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14159.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14160.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14161.id, arg1)
    this:GetQuestNpcActor(npcs.Npc14044.alias, 14029):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14173.alias, 14029):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14042.alias, 14029):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateLocalGadget(70711592, "0", {x = 50.705, y = 0.564, z = 6.223}, {x = 0, y = 90, z = 0}, 1092, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc14039.alias, 14029):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:CreateLocalGadget(70711579, "0", {x = 5080.922, y = 494.069, z = 4559.774}, {x = 0, y = 127.824, z = 0}, 3, nil, nil, false, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14159.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14159.alias, 14029):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14029):DoFreeStyle(1280, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14029):DoFreeStyle(1080, true, nil, true, true, false, false)
    end)
end

function Quest14029:OnSubFinish1402901(arg1)
    print("OnSubFinish1402901")
    this:SafeDestroyQuestNpc(npcs.Npc14039.alias, 1092)
    this:SafeDestroyQuestNpc(npcs.Npc14042.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14041.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14166.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14168.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14169.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14173.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14174.alias, 3)
end

function Quest14029:OnSubFailed1402901(arg1)
    print("OnSubFailed1402901")
end

function Quest14029:OnSubStart1402902(arg1)
    print("OnSubStart1402902")
    this:CreateLocalGadget(70711579, "0", {x = 5080.922, y = 494.069, z = 4559.774}, {x = 0, y = 127.824, z = 0}, 3, nil, nil, false, 201)
    this:SafeDestroyQuestNpc(npcs.Npc14056.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14163.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14164.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14165.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14166.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14168.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14175.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14176.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14041.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14054.alias, 3)
    this:ActorDestroy("Q1402906_Trigger")
    this:ActorDestroy("Q1402912_NarratorTrigger")
    this:ActorDestroy("Q1402903N14056Trigger")
    this:ActorDestroy("Q1402904N1079Trigger")
    this:ActorDestroy("Q1402905N1079Trigger")
    this:ActorDestroy("Q1402908N14047Trigger")
    this:ClearNarratorTask()
    actorMgr:GetActor("14029"):SetQuestVarByMainId(0, 0)
    this:GetQuestNpcActor(npcs.Npc14159.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14160.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14161.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14159.alias, 14029):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14160.alias, 14029):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14161.alias, 14029):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest14029:OnSubFinish1402902(arg1)
    print("OnSubFinish1402902")
    this:SafeDestroyQuestNpc(npcs.Npc14159.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14160.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14161.alias, 3)
end

function Quest14029:OnSubFailed1402902(arg1)
    print("OnSubFailed1402902")
end

function Quest14029:OnSubStart1402912(arg1)
    print("OnSubStart1402912")
    if this:GetQuestVar(1402912, 0) == 0 then
        actorMgr:CreateActorWithPos("Q1402912_NarratorTrigger", "Actor/Gadget/Q1402912_NarratorTrigger", 70900002, 0, points.Q1402912_NarratorTrigger.pos, points.Q1402912_NarratorTrigger.rot, true, false, 20218)
    end
end

function Quest14029:OnSubFinish1402912(arg1)
    print("OnSubFinish1402912")
    this:ActorDestroy("Q1402912_NarratorTrigger")
end

function Quest14029:OnSubFailed1402912(arg1)
    print("OnSubFailed1402912")
end

function Quest14029:OnSubStart1402903(arg1)
    print("OnSubStart1402903")
    this:NpcCreateWithNpcTrigger(npcs.Npc14056.id, 1402903, 0, 30)
end

function Quest14029:OnSubFinish1402903(arg1)
    print("OnSubFinish1402903")
    this:SafeDestroyQuestNpc(npcs.Npc14056.alias, 20218)
    this:ClearNarratorTask()
end

function Quest14029:OnSubFailed1402903(arg1)
    print("OnSubFailed1402903")
end

function Quest14029:OnSubStart1402904(arg1)
    print("OnSubStart1402904")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1079.id, 1402904, 0, 10, 1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14056.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14163.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14164.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14165.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14166.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14168.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14175.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14176.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14041.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14041.alias, 14029):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14163.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14164.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14165.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14041.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14166.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14168.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14165.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14056.alias, 14029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14163.alias, 14029):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        this:GetQuestNpcActor(npcs.Npc14165.alias, 14029):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        this:GetQuestNpcActor(npcs.Npc14164.alias, 14029):DoFreeStyle(4120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14056.alias, 14029):DoFreeStyle(1160, true, nil, true, true, false, false)
    end)
end

function Quest14029:OnSubFinish1402904(arg1)
    print("OnSubFinish1402904")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 20218)
    this:ClearNarratorTask()
end

function Quest14029:OnSubFailed1402904(arg1)
    print("OnSubFailed1402904")
end

function Quest14029:OnSubStart1402905(arg1)
    print("OnSubStart1402905")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1079.id, 1402905, 0, 10, 1)
    this:GetQuestNpcActor(npcs.Npc14041.alias, 14029):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14163.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14164.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14165.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14041.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14166.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14168.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14165.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14056.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14163.alias, 14029):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc14165.alias, 14029):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc14164.alias, 14029):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14056.alias, 14029):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest14029:OnSubFinish1402905(arg1)
    print("OnSubFinish1402905")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 20218)
end

function Quest14029:OnSubFailed1402905(arg1)
    print("OnSubFailed1402905")
end

function Quest14029:OnSubStart1402906(arg1)
    print("OnSubStart1402906")
    this:CreateQuestNpc(arg1, npcs.Npc14055.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14054.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1402906_Trigger", "Actor/Gadget/Q1402906_Trigger", 70900002, 0, points.Q1402706_Trigger.pos, points.Q1402706_Trigger.rot, true, false, 20218)
    this:GetQuestNpcActor(npcs.Npc14041.alias, 14029):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14163.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14164.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14165.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14041.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14166.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14168.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14165.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14056.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14163.alias, 14029):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc14165.alias, 14029):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc14164.alias, 14029):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14056.alias, 14029):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest14029:OnSubFinish1402906(arg1)
    print("OnSubFinish1402906")
    this:SafeDestroyQuestNpc(npcs.Npc14047.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14055.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14054.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14056.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14163.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14164.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14165.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14166.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14168.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14175.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14176.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc14041.alias, 20218)
end

function Quest14029:OnSubFailed1402906(arg1)
    print("OnSubFailed1402906")
end

function Quest14029:OnSubStart1402907(arg1)
    print("OnSubStart1402907")
end

function Quest14029:OnSubFinish1402907(arg1)
    print("OnSubFinish1402907")
end

function Quest14029:OnSubFailed1402907(arg1)
    print("OnSubFailed1402907")
end

function Quest14029:OnSubStart1402908(arg1)
    print("OnSubStart1402908")
    this:CallDelayByQuest("delayCreate1402908", 1, function(arg1)
        this:CreateQuestNpcWithTriggerBlackEx("Q1402908N14047Trigger", 1402908, npcs.Npc14047.id, 0, 80, 0.5, 1, 0.5, 2)
    end)
end

function Quest14029:OnSubFinish1402908(arg1)
    print("OnSubFinish1402908")
    this:SafeDestroyQuestNpc(npcs.Npc14047.alias, 20218)
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 20218)
end

function Quest14029:OnSubFailed1402908(arg1)
    print("OnSubFailed1402908")
end

function Quest14029:OnSubStart1402909(arg1)
    print("OnSubStart1402909")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1079.id, 1402909, 0, 20, 1)
    this:CreateQuestNpc(arg1, npcs.Npc14043.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14044.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14169.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14173.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14174.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc14159.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14160.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14161.id, 0, false, 0)
    this:CreateLocalGadget(70711579, "0", {x = 5080.922, y = 494.069, z = 4559.774}, {x = 0, y = 127.824, z = 0}, 3, nil, nil, false, 201)
    actorMgr:CreateActorWithPos("Q1402909_BlackTrigger", "Actor/Gadget/Q1402909_BlackTrigger", 70900002, 0, points.Q1402909_BlackTrigger.pos, points.Q1402909_BlackTrigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc14159.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14160.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14161.alias, 14029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14159.alias, 14029):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14160.alias, 14029):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14161.alias, 14029):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest14029:OnSubFinish1402909(arg1)
    print("OnSubFinish1402909")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14169.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14173.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14174.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14159.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14160.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14161.alias, 3)
    this:ClearNarratorTask()
    this:ActorDestroy("Q1402909_BlackTrigger")
end

function Quest14029:OnSubFailed1402909(arg1)
    print("OnSubFailed1402909")
end

function Quest14029:OnSubStart1402910(arg1)
    print("OnSubStart1402910")
    this:NpcCreateWithNpcTrigger(npcs.Npc14047.id, 1402910, 0, 8)
    this:CreateQuestNpc(arg1, npcs.Npc14043.id, 0, false, 0)
    this:CreateLocalGadget(70711579, "0", {x = 5080.922, y = 494.069, z = 4559.774}, {x = 0, y = 127.824, z = 0}, 3, nil, nil, false, 201)
    this:GetQuestNpcActor(npcs.Npc14047.alias, 14029):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest14029:OnSubFinish1402910(arg1)
    print("OnSubFinish1402910")
    this:SafeDestroyQuestNpc(npcs.Npc14047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14043.alias, 3)
    this:RemoveLocalGadget(70711579, "0")
end

function Quest14029:OnSubFailed1402910(arg1)
    print("OnSubFailed1402910")
end

function Quest14029:OnSubStart1402911(arg1)
    print("OnSubStart1402911")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14042.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14043.id, arg1)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q1402911_Trigger", "Actor/Gadget/Q1402911_Trigger", 70900002, 0, points.Q1402911_Trigger.pos, points.Q1402911_Trigger.rot, true, false, 1092)
        this:CreateLocalGadget(70711592, "0", {x = 50.705, y = 0.564, z = 6.223}, {x = 0, y = 90, z = 0}, 1092, nil, nil, false, 0)
        this:GetQuestNpcActor(npcs.Npc14039.alias, 14029):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end)
end

function Quest14029:OnSubFinish1402911(arg1)
    print("OnSubFinish1402911")
    this:SafeDestroyQuestNpc(npcs.Npc14039.alias, 1092)
    this:SafeDestroyQuestNpc(npcs.Npc14042.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14043.alias, 3)
end

function Quest14029:OnSubFailed1402911(arg1)
    print("OnSubFailed1402911")
end

return Quest14029
