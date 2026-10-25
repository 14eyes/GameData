require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1032 = class("Quest1032", QuestActorProxy)
Quest1032.defaultAlias = "Quest1032"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest1032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest1032:OnSubStartHandlerBuild()
    self.subStartHandlers = {["103201"] = self.OnSubStart103201}
end

function Quest1032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["103201"] = self.OnSubFinish103201}
end

function Quest1032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest1032:Start()
    print("Start")
end

function Quest1032:OnDestroy()
    print("OnDestroy")
end

function Quest1032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest1032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest1032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest1032:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest1032:OnSubStart103201(arg1)
    print("OnSubStart103201")
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.XiaoData.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DoFreeStyle(1050, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.XiaoData.alias):DoFreeStyle(4100, true, nil, true, true, false)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.XiaoData.alias)
        questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true)
        local v = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        v:PlayEmoSync("", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_None", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Closed01", 0, false, true)
        v:SpawnAttach("Paimon_BubbleWorry")
        v:DisableInteeHeadCtrl(true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)

    globalActor:DisablePaimonInProfilePage({20130})
end

function Quest1032:OnSubFinish103201(arg1)
    print("OnSubFinish103201")
end

return Quest1032
