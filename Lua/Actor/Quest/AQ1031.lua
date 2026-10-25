require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1031 = class("Quest1031", QuestActorProxy)
Quest1031.defaultAlias = "Quest1031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest1031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest1031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["103101"] = self.OnSubStart103101,
        ["103102"] = self.OnSubStart103102,
        ["103107"] = self.OnSubStart103107,
        ["103103"] = self.OnSubStart103103,
        ["103104"] = self.OnSubStart103104,
        ["103109"] = self.OnSubStart103109,
        ["103105"] = self.OnSubStart103105,
        ["103106"] = self.OnSubStart103106,
        ["103108"] = self.OnSubStart103108
    }
end

function Quest1031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["103101"] = self.OnSubFinish103101,
        ["103102"] = self.OnSubFinish103102,
        ["103107"] = self.OnSubFinish103107,
        ["103103"] = self.OnSubFinish103103,
        ["103104"] = self.OnSubFinish103104,
        ["103109"] = self.OnSubFinish103109,
        ["103105"] = self.OnSubFinish103105,
        ["103106"] = self.OnSubFinish103106,
        ["103108"] = self.OnSubFinish103108
    }
end

function Quest1031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest1031:Start()
    print("Start")
end

function Quest1031:OnDestroy()
    print("OnDestroy")
end

function Quest1031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest1031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest1031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest1031:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest1031:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest1031:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest1031:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 103101 then
        self:ShowReadingDialog(101894)
    elseif arg1 == 103107 then
        actorUtils.FinishQuestID(false, 103107)
    elseif arg1 == 103108 then
        actorUtils.FinishQuestID(false, 103108)
    elseif arg1 == 103109 then
        actorUtils.FinishQuestID(false, 103109)
    end
end

function Quest1031:OnSubStart103101(arg1)
    print("OnSubStart103101")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:NpcCreateWithActionSafeCall(arg1, npcs.Npc1048Data.id, 1)
        arg1_2:NpcCreate(arg1, npcs.Npc1049Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1044Data.alias)
        questNpcActor:DoFreeStyle(4100, true, nil, true, true, false)
        questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(8010, true, nil, true, true, false)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
    end)

    actorMgr:CreateActorWithPos("Q1031Trigger2", "Actor/Gadget/Q1031Trigger2", 70900002, 0, sceneData:GetDummyPoint(20130, "Q103101_N1048").pos, sceneData:GetDummyPoint(20130, "Q103101_N1048").rot, true, false, 20130)
end

function Quest1031:OnSubFinish103101(arg1)
    print("OnSubFinish103101")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 20130)
end

function Quest1031:OnSubStart103102(arg1)
    print("OnSubStart103102")
    self:NpcCreate(arg1, npcs.Npc1049Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1044Data.alias)
    questNpcActor:DoFreeStyle(4100, true, nil, true, true, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(8010, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
end

function Quest1031:OnSubFinish103102(arg1)
    print("OnSubFinish103102")
    self:SafeDestroyQuestNpc(npcs.Npc1049Data.alias, 20130)
end

function Quest1031:OnSubStart103107(arg1)
    print("OnSubStart103107")
end

function Quest1031:OnSubFinish103107(arg1)
    print("OnSubFinish103107")
end

function Quest1031:OnSubStart103103(arg1)
    print("OnSubStart103103")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(10310301, function(arg1)
            actorUtils.FinishQuestID(false, 103103)
        end, nil, nil, false)
    end)
end

function Quest1031:OnSubFinish103103(arg1)
    print("OnSubFinish103103")
    self:TransmitPlayerById(arg1, 1)
end

function Quest1031:OnSubStart103104(arg1)
    print("OnSubStart103104")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.XiaoData.id, 0)
        actorMgr:CreateActorWithPos("Q1031Trigger1", "Actor/Gadget/Q1031Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q103104_N10204").pos, sceneData:GetDummyPoint(3, "Q103104_N10204").rot, true, false, 3)
    end)
end

function Quest1031:OnSubFinish103104(arg1)
    print("OnSubFinish103104")
    self:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
end

function Quest1031:OnSubStart103109(arg1)
    print("OnSubStart103109")
end

function Quest1031:OnSubFinish103109(arg1)
    print("OnSubFinish103109")
end

function Quest1031:OnSubStart103105(arg1)
    print("OnSubStart103105")
    actorMgr:CreateActorWithPos("Q1031Trigger", "Actor/Gadget/Q1031Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q103106_N10204").pos, sceneData:GetDummyPoint(3, "Q103106_N10204").rot, true, false, 3)
end

function Quest1031:OnSubFinish103105(arg1)
    print("OnSubFinish103105")
end

function Quest1031:OnSubStart103106(arg1)
    print("OnSubStart103106")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.XiaoData.id, 1, npcs.XiaoData.alias)
end

function Quest1031:OnSubFinish103106(arg1)
    print("OnSubFinish103106")
    self:CallDelay(6, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            actorUtils.ShowRogueDiaryStagePage(3)
        end)
    end)
end

function Quest1031:OnSubStart103108(arg1)
    print("OnSubStart103108")
end

function Quest1031:OnSubFinish103108(arg1)
    print("OnSubFinish103108")
end

return Quest1031
