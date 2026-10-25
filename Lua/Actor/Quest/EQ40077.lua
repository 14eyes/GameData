require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40077 = class("Quest40077", QuestActorProxy)
Quest40077.defaultAlias = "Quest40077"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40077:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40077:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007711"] = self.OnSubStart4007711,
        ["4007701"] = self.OnSubStart4007701,
        ["4007709"] = self.OnSubStart4007709,
        ["4007702"] = self.OnSubStart4007702,
        ["4007703"] = self.OnSubStart4007703,
        ["4007704"] = self.OnSubStart4007704,
        ["4007705"] = self.OnSubStart4007705,
        ["4007706"] = self.OnSubStart4007706,
        ["4007707"] = self.OnSubStart4007707,
        ["4007710"] = self.OnSubStart4007710,
        ["4007708"] = self.OnSubStart4007708
    }
end

function Quest40077:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007711"] = self.OnSubFinish4007711,
        ["4007701"] = self.OnSubFinish4007701,
        ["4007709"] = self.OnSubFinish4007709,
        ["4007702"] = self.OnSubFinish4007702,
        ["4007703"] = self.OnSubFinish4007703,
        ["4007704"] = self.OnSubFinish4007704,
        ["4007705"] = self.OnSubFinish4007705,
        ["4007706"] = self.OnSubFinish4007706,
        ["4007707"] = self.OnSubFinish4007707,
        ["4007710"] = self.OnSubFinish4007710,
        ["4007708"] = self.OnSubFinish4007708
    }
end

function Quest40077:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40077:Start()
    print("Start")
end

function Quest40077:OnDestroy()
    print("OnDestroy")
end

function Quest40077:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40077:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40077:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12605Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12625Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12644Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12645Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12649Data.alias, 9)
    actorMgr:DestroyEntityActor("Q4007707_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007708_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007710_Trigger", 0, false)
end

function Quest40077:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40077:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 4007709)
    elseif arg1 == 1 then
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12605Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:LookAt(sceneData:GetDummyPoint(9, "Q4007614_N12605").pos)
            questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true)
        end)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 4007708)
    end
end

function Quest40077:OnSubStart4007711(arg1)
    print("OnSubStart4007711")
    self:CreateQuestNpcWithTriggerBlack("Q4007711_Trigger", 4007711, npcs.Npc12605Data.id, 1, 30, 1)
end

function Quest40077:OnSubFinish4007711(arg1)
    print("OnSubFinish4007711")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40077:OnSubStart4007701(arg1)
    print("OnSubStart4007701")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12605Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12605Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12649Data.id, 6)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12605Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:LookAt(sceneData:GetDummyPoint(9, "Q4007614_N12605").pos)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true)
    end)
end

function Quest40077:OnSubFinish4007701(arg1)
    print("OnSubFinish4007701")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12649Data.alias, 9)
end

function Quest40077:OnSubStart4007709(arg1)
    print("OnSubStart4007709")
    self:GetQuestNpcActor(npcs.Npc12605Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest40077:OnSubFinish4007709(arg1)
    print("OnSubFinish4007709")
end

function Quest40077:OnSubStart4007702(arg1)
    print("OnSubStart4007702")
    self:GetQuestNpcActor(npcs.Npc12605Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest40077:OnSubFinish4007702(arg1)
    print("OnSubFinish4007702")
    local questVar = self:GetQuestVar(4007702, 0)
    self:SetQuestVarByMainId(0, questVar + 1)
    self:CallDelay(1, function(arg1)
        local questVar = arg1:GetQuestVar(4007702, 0)
        if questVar == 1 then
            arg1:NarratorOnlyTaskByData(datas.Narrator_4007701, nil, 40077)
        elseif questVar == 2 then
            arg1:NarratorOnlyTaskByData(datas.Narrator_4007702, nil, 40077)
        end
    end)
end

function Quest40077:OnSubStart4007703(arg1)
    print("OnSubStart4007703")
    self:GetQuestNpcActor(npcs.Npc12605Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest40077:OnSubFinish4007703(arg1)
    print("OnSubFinish4007703")
    local questVar = self:GetQuestVar(4007703, 0)
    self:SetQuestVarByMainId(0, questVar + 1)
    self:CallDelay(1, function(arg1)
        local questVar = arg1:GetQuestVar(4007703, 0)
        if questVar == 1 then
            arg1:NarratorOnlyTaskByData(datas.Narrator_4007701, nil, 40077)
        elseif questVar == 2 then
            arg1:NarratorOnlyTaskByData(datas.Narrator_4007702, nil, 40077)
        end
    end)
end

function Quest40077:OnSubStart4007704(arg1)
    print("OnSubStart4007704")
    self:GetQuestNpcActor(npcs.Npc12605Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
end

function Quest40077:OnSubFinish4007704(arg1)
    print("OnSubFinish4007704")
    local questVar = self:GetQuestVar(4007704, 0)
    self:SetQuestVarByMainId(0, questVar + 1)
    self:CallDelay(1, function(arg1)
        local questVar = arg1:GetQuestVar(4007704, 0)
        if questVar == 1 then
            arg1:NarratorOnlyTaskByData(datas.Narrator_4007701, nil, 40077)
        elseif questVar == 2 then
            arg1:NarratorOnlyTaskByData(datas.Narrator_4007702, nil, 40077)
        end
    end)
end

function Quest40077:OnSubStart4007705(arg1)
    print("OnSubStart4007705")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12605Data.alias)
    questNpcActor:DoFreeStyle(4100, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:LookAt(sceneData:GetDummyPoint(9, "Q4007614_N12605").pos)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true)
end

function Quest40077:OnSubFinish4007705(arg1)
    print("OnSubFinish4007705")
    self:NarratorOnlyTaskByData(datas.Narrator_4007703, nil, 40077)
end

function Quest40077:OnSubStart4007706(arg1)
    print("OnSubStart4007706")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12605Data.alias)
    questNpcActor:DoFreeStyle(4100, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:LookAt(sceneData:GetDummyPoint(9, "Q4007614_N12605").pos)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true)
end

function Quest40077:OnSubFinish4007706(arg1)
    print("OnSubFinish4007706")
end

function Quest40077:OnSubStart4007707(arg1)
    print("OnSubStart4007707")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12605Data.alias)
    questNpcActor:DoFreeStyle(4100, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:LookAt(sceneData:GetDummyPoint(9, "Q4007614_N12605").pos)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true)
    self:CreateQuestNpcWithTriggerBlack("Q4007707_Trigger", 4007707, npcs.Npc1032Data.id, 1, 10, 1)
end

function Quest40077:OnSubFinish4007707(arg1)
    print("OnSubFinish4007707")
    self:SafeDestroyQuestNpc(npcs.Npc12605Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40077:OnSubStart4007710(arg1)
    print("OnSubStart4007710")
    self:CreateQuestNpcWithTriggerBlack("Q4007710_Trigger", 4007710, npcs.Npc1032Data.id, 1, 10, 1)
end

function Quest40077:OnSubFinish4007710(arg1)
    print("OnSubFinish4007710")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40077:OnSubStart4007708(arg1)
    print("OnSubStart4007708")
end

function Quest40077:OnSubFinish4007708(arg1)
    print("OnSubFinish4007708")
end

return Quest40077
