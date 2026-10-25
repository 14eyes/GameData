require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13007 = class("Quest13007", QuestActorProxy)
Quest13007.defaultAlias = "Quest13007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1300701"] = self.OnSubStart1300701,
        ["1300702"] = self.OnSubStart1300702,
        ["1300703"] = self.OnSubStart1300703,
        ["1300704"] = self.OnSubStart1300704,
        ["1300711"] = self.OnSubStart1300711,
        ["1300714"] = self.OnSubStart1300714,
        ["1300705"] = self.OnSubStart1300705,
        ["1300706"] = self.OnSubStart1300706,
        ["1300713"] = self.OnSubStart1300713,
        ["1300707"] = self.OnSubStart1300707,
        ["1300710"] = self.OnSubStart1300710,
        ["1300712"] = self.OnSubStart1300712,
        ["1300708"] = self.OnSubStart1300708,
        ["1300709"] = self.OnSubStart1300709
    }
end

function Quest13007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1300701"] = self.OnSubFinish1300701,
        ["1300702"] = self.OnSubFinish1300702,
        ["1300703"] = self.OnSubFinish1300703,
        ["1300704"] = self.OnSubFinish1300704,
        ["1300711"] = self.OnSubFinish1300711,
        ["1300714"] = self.OnSubFinish1300714,
        ["1300705"] = self.OnSubFinish1300705,
        ["1300706"] = self.OnSubFinish1300706,
        ["1300713"] = self.OnSubFinish1300713,
        ["1300707"] = self.OnSubFinish1300707,
        ["1300710"] = self.OnSubFinish1300710,
        ["1300712"] = self.OnSubFinish1300712,
        ["1300708"] = self.OnSubFinish1300708,
        ["1300709"] = self.OnSubFinish1300709
    }
end

function Quest13007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1300707"] = self.OnSubFailed1300707}
end

function Quest13007:Start()
    print("Start")
end

function Quest13007:OnDestroy()
    print("OnDestroy")
end

function Quest13007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13007:OnSubStart1300701(arg1)
    print("OnSubStart1300701")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12711Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12712Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12713Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12769Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12770Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4062Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4061Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4060Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4057Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12880Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12770Data.alias)
        questNpcActor:DoFreeStyle(1090, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc4060Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        local v = arg1_2:GetQuestNpcActor(npcs.Npc4062Data.alias)
        v:DoFreeStyle(1120, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc12711Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor2 = arg1_2:GetQuestNpcActor(npcs.Npc4061Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:DoFreeStyle(1170, true, nil, true, true, false, true)
        local questNpcActor3 = arg1_2:GetQuestNpcActor(npcs.Npc4057Data.alias)
        questNpcActor3:DisableInteeHeadCtrl(true)
        questNpcActor3:DoFreeStyle(1120, true, nil, true, true, false, true)
        local questNpcActor4 = arg1_2:GetQuestNpcActor(npcs.Npc4059Data.alias)
        questNpcActor4:DisableInteeHeadCtrl(true)
        questNpcActor4:DoFreeStyle(1240, true, nil, true, true, false, true)
        arg1_2:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4315Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4065Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4028Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4049Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4029Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4391Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4055Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4058Data.alias, 1, true)
    end)
end

function Quest13007:OnSubFinish1300701(arg1)
    print("OnSubFinish1300701")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_1300701, nil, 13007)
        arg1:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4062Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12711Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4061Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(false)
        arg1:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12711Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12712Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12769Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12770Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4062Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4061Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4060Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4057Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4059Data.alias, 3)
    end)
end

function Quest13007:OnSubStart1300702(arg1)
    print("OnSubStart1300702")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12711Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12712Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12769Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12770Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4062Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4061Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4060Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4057Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12769Data.alias)
        questNpcActor:DoFreeStyle(1060, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc4060Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12711Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
        local v = arg1_2:GetQuestNpcActor(npcs.Npc4057Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1120, true, nil, true, true, false, true)
        local questNpcActor2 = arg1_2:GetQuestNpcActor(npcs.Npc4059Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:DoFreeStyle(1240, true, nil, true, true, false, true)
        arg1_2:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4315Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4065Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4028Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4049Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4029Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4391Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4055Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4058Data.alias, 1, true)
    end)
end

function Quest13007:OnSubFinish1300702(arg1)
    print("OnSubFinish1300702")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest13007:OnSubStart1300703(arg1)
    print("OnSubStart1300703")
end

function Quest13007:OnSubFinish1300703(arg1)
    print("OnSubFinish1300703")
    self:NarratorOnlyTaskByData(datas.Narrator_1300702, nil, 13007)
end

function Quest13007:OnSubStart1300704(arg1)
    print("OnSubStart1300704")
end

function Quest13007:OnSubFinish1300704(arg1)
    print("OnSubFinish1300704")
    self:NarratorOnlyTaskByData(datas.Narrator_1300703, nil, 13007)
end

function Quest13007:OnSubStart1300711(arg1)
    print("OnSubStart1300711")
end

function Quest13007:OnSubFinish1300711(arg1)
    print("OnSubFinish1300711")
end

function Quest13007:OnSubStart1300714(arg1)
    print("OnSubStart1300714")
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4028Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4029Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4391Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4055Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4058Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12769Data.alias)
    questNpcActor:DoFreeStyle(1060, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12711Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    local v = self:GetQuestNpcActor(npcs.Npc4057Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1120, true, nil, true, true, false, true)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc4059Data.alias)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:DoFreeStyle(1240, true, nil, true, true, false, true)
end

function Quest13007:OnSubFinish1300714(arg1)
    print("OnSubFinish1300714")
end

function Quest13007:OnSubStart1300705(arg1)
    print("OnSubStart1300705")
    actorMgr:CreateActorWithPos("Q13007Trigger6", "Actor/Gadget/Q13007Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300605_N4057").pos, sceneData:GetDummyPoint(3, "Q1300605_N4057").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc4055Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc4058Data.id, 0)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4028Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4029Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4391Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12769Data.alias)
    questNpcActor:DoFreeStyle(1060, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12711Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    local v = self:GetQuestNpcActor(npcs.Npc4057Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1120, true, nil, true, true, false, true)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc4059Data.alias)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:DoFreeStyle(1240, true, nil, true, true, false, true)
    local questNpcActor3 = self:GetQuestNpcActor(npcs.Npc4055Data.alias)
    questNpcActor3:DisableInteeHeadCtrl(true)
    questNpcActor3:DoFreeStyle(1170, true, nil, true, true, false, true)
    local questNpcActor4 = self:GetQuestNpcActor(npcs.Npc4058Data.alias)
    questNpcActor4:DisableInteeHeadCtrl(true)
    questNpcActor4:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest13007:OnSubFinish1300705(arg1)
    print("OnSubFinish1300705")
    self:NarratorOnlyTaskByData(datas.Narrator_1300704)
    self:DestroyQuestNpcActor(npcs.Npc12769Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12770Data.alias, 3)
end

function Quest13007:OnSubStart1300706(arg1)
    print("OnSubStart1300706")
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4028Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4029Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4391Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q13007Trigger2", "Actor/Gadget/Q13007Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300702_N1054").pos, sceneData:GetDummyPoint(3, "Q1300702_N1054").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12711Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc4057Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(true)
    local v = self:GetQuestNpcActor(npcs.Npc4055Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1170, true, nil, true, true, false, true)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc4058Data.alias)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest13007:OnSubFinish1300706(arg1)
    print("OnSubFinish1300706")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest13007:OnSubStart1300713(arg1)
    print("OnSubStart1300713")
    actorMgr:CreateActorWithPos("Q13007Trigger", "Actor/Gadget/Q13007Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300713_guide").pos, sceneData:GetDummyPoint(3, "Q1300713_guide").rot, true, false, 3)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4028Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4029Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4391Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12769Data.alias)
    questNpcActor:DoFreeStyle(1060, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc4060Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12711Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    local v = self:GetQuestNpcActor(npcs.Npc4057Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc4055Data.alias)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:DoFreeStyle(1170, true, nil, true, true, false, true)
    local questNpcActor3 = self:GetQuestNpcActor(npcs.Npc4058Data.alias)
    questNpcActor3:DisableInteeHeadCtrl(true)
    questNpcActor3:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest13007:OnSubFinish1300713(arg1)
    print("OnSubFinish1300713")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4055Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4058Data.alias):DisableInteeHeadCtrl(false)
        arg1:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12711Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12712Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12769Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12770Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4062Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4061Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4060Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4057Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4059Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4055Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc4058Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4315Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4065Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4028Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4049Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4029Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4391Data.alias, 0, true)
    end)
end

function Quest13007:OnSubStart1300707(arg1)
    print("OnSubStart1300707")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12713Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12713Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
        actorMgr:CreateActorWithPos("Q13007Trigger3", "Actor/Gadget/Q13007Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300707_N12713").pos, sceneData:GetDummyPoint(3, "Q1300707_N12713").rot, true, false, 3)
        actorMgr:CreateActorWithPos("Q13007Trigger4", "Actor/Gadget/Q13007Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300707_N12713").pos, sceneData:GetDummyPoint(3, "Q1300707_N12713").rot, true, false, 3)
    end)
end

function Quest13007:OnSubFinish1300707(arg1)
    print("OnSubFinish1300707")
    self:ClearNarratorTask()
    self:StopNarrator()
    actorMgr:DestroyEntityActor("Q13007Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q13007Trigger4", 3, false)
end

function Quest13007:OnSubFailed1300707(arg1)
    print("OnSubFailed1300707")
    self:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
    self:ClearNarratorTask()
    self:StopNarrator()
    actorMgr:DestroyEntityActor("Q13007Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q13007Trigger4", 3, false)
end

function Quest13007:OnSubStart1300710(arg1)
    print("OnSubStart1300710")
    self:CallDelay(2, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12713Data.alias):DoFreeStateTrigger()
        arg1:ClearSpeechBubbleTask()
        actorMgr:CreateActorWithPos("Q13007Trigger5", "Actor/Gadget/Q13007Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300707_N12713").pos, sceneData:GetDummyPoint(3, "Q1300707_N12713").rot, true, false, 3)
    end)
end

function Quest13007:OnSubFinish1300710(arg1)
    print("OnSubFinish1300710")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
    end)
end

function Quest13007:OnSubStart1300712(arg1)
    print("OnSubStart1300712")
    actorMgr:CreateActorWithPos("Q13007Trigger1", "Actor/Gadget/Q13007Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300711_N1005").pos, sceneData:GetDummyPoint(3, "Q1300711_N1005").rot, true, false, 3)
end

function Quest13007:OnSubFinish1300712(arg1)
    print("OnSubFinish1300712")
    self:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12880Data.alias, 3)
end

function Quest13007:OnSubStart1300708(arg1)
    print("OnSubStart1300708")
end

function Quest13007:OnSubFinish1300708(arg1)
    print("OnSubFinish1300708")
end

function Quest13007:OnSubStart1300709(arg1)
    print("OnSubStart1300709")
end

function Quest13007:OnSubFinish1300709(arg1)
    print("OnSubFinish1300709")
end

return Quest13007
