require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13001 = class("Quest13001", QuestActorProxy)
Quest13001.defaultAlias = "Quest13001"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13001:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1300101"] = self.OnSubStart1300101,
        ["1300102"] = self.OnSubStart1300102,
        ["1300103"] = self.OnSubStart1300103,
        ["1300104"] = self.OnSubStart1300104,
        ["1300106"] = self.OnSubStart1300106,
        ["1300107"] = self.OnSubStart1300107,
        ["1300108"] = self.OnSubStart1300108,
        ["1300109"] = self.OnSubStart1300109,
        ["1300105"] = self.OnSubStart1300105,
        ["1300112"] = self.OnSubStart1300112,
        ["1300110"] = self.OnSubStart1300110,
        ["1300111"] = self.OnSubStart1300111,
        ["1300114"] = self.OnSubStart1300114,
        ["1300116"] = self.OnSubStart1300116,
        ["1300115"] = self.OnSubStart1300115,
        ["1300117"] = self.OnSubStart1300117,
        ["1300118"] = self.OnSubStart1300118,
        ["1300113"] = self.OnSubStart1300113
    }
end

function Quest13001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1300101"] = self.OnSubFinish1300101,
        ["1300102"] = self.OnSubFinish1300102,
        ["1300103"] = self.OnSubFinish1300103,
        ["1300104"] = self.OnSubFinish1300104,
        ["1300106"] = self.OnSubFinish1300106,
        ["1300107"] = self.OnSubFinish1300107,
        ["1300108"] = self.OnSubFinish1300108,
        ["1300109"] = self.OnSubFinish1300109,
        ["1300105"] = self.OnSubFinish1300105,
        ["1300112"] = self.OnSubFinish1300112,
        ["1300110"] = self.OnSubFinish1300110,
        ["1300111"] = self.OnSubFinish1300111,
        ["1300114"] = self.OnSubFinish1300114,
        ["1300116"] = self.OnSubFinish1300116,
        ["1300115"] = self.OnSubFinish1300115,
        ["1300117"] = self.OnSubFinish1300117,
        ["1300118"] = self.OnSubFinish1300118,
        ["1300113"] = self.OnSubFinish1300113
    }
end

function Quest13001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13001:Start()
    print("Start")
end

function Quest13001:OnDestroy()
    print("OnDestroy")
end

function Quest13001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13001:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13001:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1300115)
    elseif arg1 == 3 then
        globalActor:ChangeDay24TimeClock(14, 0, 0, true)
    end
end

function Quest13001:OnSubStart1300101(arg1)
    print("OnSubStart1300101")
    this:CreateQuestNpc(arg1, npcs.Npc12603Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12603Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12597Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12597Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12598Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12598Data.alias):DoFreeStyle(1250, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1300101Trigger", "Actor/Gadget/Q1300101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300101_N12603").pos, sceneData:GetDummyPoint(3, "Q1300101_N12603").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc12598Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
end

function Quest13001:OnSubFinish1300101(arg1)
    print("OnSubFinish1300101")
    this:SafeDestroyQuestNpc(npcs.Npc12603Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12597Data.alias, 3)
end

function Quest13001:OnSubStart1300102(arg1)
    print("OnSubStart1300102")
    this:CreateQuestNpc(arg1, npcs.Npc12642Data.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12597Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc12597Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1051Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12598Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc12598Data.alias):DoFreeStyle(1250, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1300102Trigger", "Actor/Gadget/Q1300102Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300102_guide").pos, sceneData:GetDummyPoint(3, "Q1300102_guide").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc12598Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
end

function Quest13001:OnSubFinish1300102(arg1)
    print("OnSubFinish1300102")
    this:SafeDestroyQuestNpc(npcs.Npc12642Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12597Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12598Data.alias, 3)
end

function Quest13001:OnSubStart1300103(arg1)
    print("OnSubStart1300103")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12597Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc12597Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1051Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12598Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc12598Data.alias):DoFreeStyle(1250, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1300103Trigger", "Actor/Gadget/Q1300103Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300103_guide").pos, sceneData:GetDummyPoint(3, "Q1300103_guide").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc12597Data.alias)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc12598Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
end

function Quest13001:OnSubFinish1300103(arg1)
    print("OnSubFinish1300103")
    this:ActorDestroy("Q1300103Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12597Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12598Data.alias, 3)
end

function Quest13001:OnSubStart1300104(arg1)
    print("OnSubStart1300104")
    actorMgr:CreateActorWithPos("Q1300104Trigger", "Actor/Gadget/Q1300104Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300104_guide").pos, sceneData:GetDummyPoint(3, "Q1300104_guide").rot, true, false, 3)
end

function Quest13001:OnSubFinish1300104(arg1)
    print("OnSubFinish1300104")
    this:ActorDestroy("Q1300104Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest13001:OnSubStart1300106(arg1)
    print("OnSubStart1300106")
end

function Quest13001:OnSubFinish1300106(arg1)
    print("OnSubFinish1300106")
end

function Quest13001:OnSubStart1300107(arg1)
    print("OnSubStart1300107")
    this:CreateQuestNpc(arg1, npcs.Npc12612Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12612Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1300107Trigger", "Actor/Gadget/Q1300107Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300106_guide").pos, sceneData:GetDummyPoint(3, "Q1300106_guide").rot, true, false, 3)
end

function Quest13001:OnSubFinish1300107(arg1)
    print("OnSubFinish1300107")
    this:ActorDestroy("Q1300107Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc12603Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 13001)
    end)
end

function Quest13001:OnSubStart1300108(arg1)
    print("OnSubStart1300108")
    this:GetQuestNpcActor(npcs.Npc12612Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1300108Trigger", "Actor/Gadget/Q1300108Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300108_guide").pos, sceneData:GetDummyPoint(3, "Q1300108_guide").rot, true, false, 3)
end

function Quest13001:OnSubFinish1300108(arg1)
    print("OnSubFinish1300108")
    this:ActorDestroy("Q1300108Trigger")
end

function Quest13001:OnSubStart1300109(arg1)
    print("OnSubStart1300109")
    this:GetQuestNpcActor(npcs.Npc12612Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest13001:OnSubFinish1300109(arg1)
    print("OnSubFinish1300109")
    this:SafeDestroyQuestNpc(npcs.Npc12612Data.alias, 3)
end

function Quest13001:OnSubStart1300105(arg1)
    print("OnSubStart1300105")
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1300105Trigger", "Actor/Gadget/Q1300105Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300110_guide").pos, sceneData:GetDummyPoint(3, "Q1300110_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1300105TriggerNearCall", "Actor/Gadget/Q1300105TriggerNearCall", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300110_guide_02").pos, sceneData:GetDummyPoint(3, "Q1300110_guide_02").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1300105TriggerWalk", "Actor/Gadget/Q1300105TriggerWalk", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300110_guide").pos, sceneData:GetDummyPoint(3, "Q1300110_guide").rot, true, false, 3)
end

function Quest13001:OnSubFinish1300105(arg1)
    print("OnSubFinish1300105")
    this:ActorDestroy("Q1300105Trigger")
end

function Quest13001:OnSubStart1300112(arg1)
    print("OnSubStart1300112")
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        this:RequestInteraction(npcs.Npc1050Data.alias)
    end, nil, nil, "", false, true)
end

function Quest13001:OnSubFinish1300112(arg1)
    print("OnSubFinish1300112")
end

function Quest13001:OnSubStart1300110(arg1)
    print("OnSubStart1300110")
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12643Data.id, 0, false, 0)
end

function Quest13001:OnSubFinish1300110(arg1)
    print("OnSubFinish1300110")
    this:SafeDestroyQuestNpc(npcs.Npc12643Data.alias, 3)
end

function Quest13001:OnSubStart1300111(arg1)
    print("OnSubStart1300111")
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1300111Trigger", "Actor/Gadget/Q1300111Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "N12603_T1300112").pos, sceneData:GetDummyPoint(3, "N12603_T1300112").rot, true, false, 3)
end

function Quest13001:OnSubFinish1300111(arg1)
    print("OnSubFinish1300111")
end

function Quest13001:OnSubStart1300114(arg1)
    print("OnSubStart1300114")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0)
    this:DeployStoryByQuest(121300114)
end

function Quest13001:OnSubFinish1300114(arg1)
    print("OnSubFinish1300114")
end

function Quest13001:OnSubStart1300116(arg1)
    print("OnSubStart1300116")
    this:DeployStoryByQuest(121300114)
    this:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q1300116Trigger", "Actor/Gadget/Q1300116Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300110_guide").pos, sceneData:GetDummyPoint(3, "Q1300110_guide").rot, true, false, 3)
    end)
end

function Quest13001:OnSubFinish1300116(arg1)
    print("OnSubFinish1300116")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:CancelStoryByQuest(121300114)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest13001:OnSubStart1300115(arg1)
    print("OnSubStart1300115")
end

function Quest13001:OnSubFinish1300115(arg1)
    print("OnSubFinish1300115")
end

function Quest13001:OnSubStart1300117(arg1)
    print("OnSubStart1300117")
    actorMgr:CreateActorWithPos("Q1300117Trigger", "Actor/Gadget/Q1300117Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300117_guide").pos, sceneData:GetDummyPoint(3, "Q1300117_guide").rot, true, false, 3)
end

function Quest13001:OnSubFinish1300117(arg1)
    print("OnSubFinish1300117")
    this:NarratorOnlyTaskByData(datas.NarratorWithId3, nil, 13001)
end

function Quest13001:OnSubStart1300118(arg1)
    print("OnSubStart1300118")
end

function Quest13001:OnSubFinish1300118(arg1)
    print("OnSubFinish1300118")
end

function Quest13001:OnSubStart1300113(arg1)
    print("OnSubStart1300113")
end

function Quest13001:OnSubFinish1300113(arg1)
    print("OnSubFinish1300113")
end

return Quest13001
