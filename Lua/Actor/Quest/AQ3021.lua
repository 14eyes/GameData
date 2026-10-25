require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3021 = class("Quest3021", QuestActorProxy)
Quest3021.defaultAlias = "Quest3021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["302114"] = self.OnSubStart302114,
        ["302112"] = self.OnSubStart302112,
        ["302101"] = self.OnSubStart302101,
        ["302103"] = self.OnSubStart302103,
        ["302115"] = self.OnSubStart302115,
        ["302111"] = self.OnSubStart302111,
        ["302104"] = self.OnSubStart302104,
        ["302113"] = self.OnSubStart302113,
        ["302116"] = self.OnSubStart302116,
        ["302105"] = self.OnSubStart302105,
        ["302106"] = self.OnSubStart302106,
        ["302107"] = self.OnSubStart302107,
        ["302108"] = self.OnSubStart302108,
        ["302109"] = self.OnSubStart302109,
        ["302110"] = self.OnSubStart302110,
        ["302102"] = self.OnSubStart302102
    }
end

function Quest3021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["302114"] = self.OnSubFinish302114,
        ["302112"] = self.OnSubFinish302112,
        ["302101"] = self.OnSubFinish302101,
        ["302103"] = self.OnSubFinish302103,
        ["302115"] = self.OnSubFinish302115,
        ["302111"] = self.OnSubFinish302111,
        ["302104"] = self.OnSubFinish302104,
        ["302113"] = self.OnSubFinish302113,
        ["302116"] = self.OnSubFinish302116,
        ["302105"] = self.OnSubFinish302105,
        ["302106"] = self.OnSubFinish302106,
        ["302107"] = self.OnSubFinish302107,
        ["302108"] = self.OnSubFinish302108,
        ["302109"] = self.OnSubFinish302109,
        ["302110"] = self.OnSubFinish302110,
        ["302102"] = self.OnSubFinish302102
    }
end

function Quest3021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["302105"] = self.OnSubFailed302105}
end

function Quest3021:Start()
    print("Start")
end

function Quest3021:OnDestroy()
    print("OnDestroy")
end

function Quest3021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3021:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest3021:OnSubStart302114(arg1)
    print("OnSubStart302114")
    if self:GetQuestVar(302114, 0) == 0 then
        self:TransmitPlayerByQuestId(302112, 1)
        self:SetQuestVarByMainId(0, 3)
    end

    self:NotifyTo(npcs.Npc4403Data.alias, 1, true)
end

function Quest3021:OnSubFinish302114(arg1)
    print("OnSubFinish302114")
end

function Quest3021:OnSubStart302112(arg1)
    print("OnSubStart302112")
    actorMgr:CreateActorWithPos("Q302112Talk", "Actor/Gadget/Q302112Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q302112_N1052_guide").pos, sceneData:GetDummyPoint(3, "Q302112_N1052_guide").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12701Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
end

function Quest3021:OnSubFinish302112(arg1)
    print("OnSubFinish302112")
    self:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc4403Data.alias, 0, true)
    end)
end

function Quest3021:OnSubStart302101(arg1)
    print("OnSubStart302101")
    actorMgr:CreateActorWithPos("Q3021Trigger", "Actor/Gadget/Q3021Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q302103_N12709_Q302111").pos, sceneData:GetDummyPoint(3, "Q302103_N12709_Q302111").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12709Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12796Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12865Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12881Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12864Data.id, 0)
end

function Quest3021:OnSubFinish302101(arg1)
    print("OnSubFinish302101")
end

function Quest3021:OnSubStart302103(arg1)
    print("OnSubStart302103")
    self:RequestInteraction(npcs.Npc12709Data.alias)
end

function Quest3021:OnSubFinish302103(arg1)
    print("OnSubFinish302103")
    self:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
end

function Quest3021:OnSubStart302115(arg1)
    print("OnSubStart302115")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(30210301, function(arg1)
            actorUtils.FinishQuestID(false, 302115)
        end, nil, nil, false)
    end)
end

function Quest3021:OnSubFinish302115(arg1)
    print("OnSubFinish302115")
    self:TransmitPlayerWithTextByQuestId(302115, 1, {"QUEST_Message_Q3007"}, 2.5)
end

function Quest3021:OnSubStart302111(arg1)
    print("OnSubStart302111")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12709Data.id, 1)
    end)

    actorMgr:CreateActorWithPos("Q302111Talk", "Actor/Gadget/Q302111Talk", 70900002, 0, {x = -2350.058, y = 127.784, z = 5870.513}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3021:OnSubFinish302111(arg1)
    print("OnSubFinish302111")
    self:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
end

function Quest3021:OnSubStart302104(arg1)
    print("OnSubStart302104")
    self:DisableMainPageWithConfig(false, "DisableTestDIMona")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12796Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12865Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc13002Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12701Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12881Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12796Data.alias):DoFreeStyle(4412, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc13002Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12865Data.alias)
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc12881Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, false)
    end)
end

function Quest3021:OnSubFinish302104(arg1)
    print("OnSubFinish302104")
    self:DestroyQuestNpcActor(npcs.Npc12796Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12865Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc13002Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12701Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12881Data.alias, 3)
end

function Quest3021:OnSubStart302113(arg1)
    print("OnSubStart302113")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1053Data.id, 0, npcs.Npc1053Data.alias)
end

function Quest3021:OnSubFinish302113(arg1)
    print("OnSubFinish302113")
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20151)
end

function Quest3021:OnSubStart302116(arg1)
    print("OnSubStart302116")
    actorMgr:CreateActorWithPos("Q302116Trigger", "Actor/Gadget/Q302116Trigger", 70900002, 0, {x = 679.269, y = 56.442, z = 425.104}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20151)
end

function Quest3021:OnSubFinish302116(arg1)
    print("OnSubFinish302116")
end

function Quest3021:OnSubStart302105(arg1)
    print("OnSubStart302105")
    actorMgr:CreateActorWithPos("Q3021Trigger2", "Actor/Gadget/Q3021Trigger2", 70900002, 0, {x = 624.599, y = 64.751, z = 496.062}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20151)
    self:DisableMainPageWithConfig(true, "DisableTestDIMona")
    actorMgr:CreateActorWithPos("Q302105Kaiche", "Actor/Gadget/Q302105Kaiche", 70900002, 0, {x = 626.05, y = 55.866, z = 489.759}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20151)
end

function Quest3021:OnSubFinish302105(arg1)
    print("OnSubFinish302105")
    self:DisableMainPageWithConfig(false, "DisableTestDIMona")
end

function Quest3021:OnSubFailed302105(arg1)
    print("OnSubFailed302105")
    self:DisableMainPageWithConfig(false, "DisableTestDIMona")
end

function Quest3021:OnSubStart302106(arg1)
    print("OnSubStart302106")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1053Data.id, 0, npcs.Npc1053Data.alias)
end

function Quest3021:OnSubFinish302106(arg1)
    print("OnSubFinish302106")
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20151)
end

function Quest3021:OnSubStart302107(arg1)
    print("OnSubStart302107")
end

function Quest3021:OnSubFinish302107(arg1)
    print("OnSubFinish302107")
end

function Quest3021:OnSubStart302108(arg1)
    print("OnSubStart302108")
    actorMgr:CreateActorWithPos("Q3021Trigger1", "Actor/Gadget/Q3021Trigger1", 70900002, 0, {x = -2728.122, y = 279.257, z = 4141.245}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3021:OnSubFinish302108(arg1)
    print("OnSubFinish302108")
end

function Quest3021:OnSubStart302109(arg1)
    print("OnSubStart302109")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12709Data.id, 0, npcs.Npc12709Data.alias)
end

function Quest3021:OnSubFinish302109(arg1)
    print("OnSubFinish302109")
    self:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
end

function Quest3021:OnSubStart302110(arg1)
    print("OnSubStart302110")
    self:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    actorMgr:CreateActorWithPos("Q302110Talk", "Actor/Gadget/Q302110Talk", 70900002, 0, sceneData:GetDummyPoint(1077, "Q302110_T302110_N10000005").pos, sceneData:GetDummyPoint(1077, "Q302110_T302110_N10000005").rot, true, false, 1077)
end

function Quest3021:OnSubFinish302110(arg1)
    print("OnSubFinish302110")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1053Data.alias, 1077)
        arg1:DestroyQuestNpcActor(npcs.Npc1052Data.alias, 1077)
        arg1:DestroyQuestNpcActor(npcs.Npc1059Data.alias, 1077)
        arg1:DestroyQuestNpcActor(npcs.Npc1058Data.alias, 1077)
    end)
end

function Quest3021:OnSubStart302102(arg1)
    print("OnSubStart302102")
end

function Quest3021:OnSubFinish302102(arg1)
    print("OnSubFinish302102")
end

return Quest3021
