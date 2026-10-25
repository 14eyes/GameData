require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13006 = class("Quest13006", QuestActorProxy)
Quest13006.defaultAlias = "Quest13006"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13006:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1300601"] = self.OnSubStart1300601,
        ["1300602"] = self.OnSubStart1300602,
        ["1300604"] = self.OnSubStart1300604,
        ["1300606"] = self.OnSubStart1300606,
        ["1300605"] = self.OnSubStart1300605,
        ["1300607"] = self.OnSubStart1300607,
        ["1300608"] = self.OnSubStart1300608,
        ["1300609"] = self.OnSubStart1300609,
        ["1300610"] = self.OnSubStart1300610,
        ["1300611"] = self.OnSubStart1300611,
        ["1300612"] = self.OnSubStart1300612,
        ["1300613"] = self.OnSubStart1300613,
        ["1300614"] = self.OnSubStart1300614,
        ["1300603"] = self.OnSubStart1300603
    }
end

function Quest13006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1300601"] = self.OnSubFinish1300601,
        ["1300602"] = self.OnSubFinish1300602,
        ["1300604"] = self.OnSubFinish1300604,
        ["1300606"] = self.OnSubFinish1300606,
        ["1300605"] = self.OnSubFinish1300605,
        ["1300607"] = self.OnSubFinish1300607,
        ["1300608"] = self.OnSubFinish1300608,
        ["1300609"] = self.OnSubFinish1300609,
        ["1300610"] = self.OnSubFinish1300610,
        ["1300611"] = self.OnSubFinish1300611,
        ["1300612"] = self.OnSubFinish1300612,
        ["1300613"] = self.OnSubFinish1300613,
        ["1300614"] = self.OnSubFinish1300614,
        ["1300603"] = self.OnSubFinish1300603
    }
end

function Quest13006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13006:Start()
    print("Start")
end

function Quest13006:OnDestroy()
    print("OnDestroy")
end

function Quest13006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 or arg1 == 3 then
        self:GetQuestNpcActor(npcs.Npc12713Data.alias):UnSpawnAttach("Embroidery_PelvisCtrl")
    elseif arg1 == 2 then
        self:GetQuestNpcActor(npcs.Npc12713Data.alias):SpawnAttach("Embroidery_PelvisCtrl")
    end
end

function Quest13006:OnSubStart1300601(arg1)
    print("OnSubStart1300601")
    actorMgr:CreateActorWithPos("Q13006Trigger", "Actor/Gadget/Q13006Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300601_N1054").pos, sceneData:GetDummyPoint(3, "Q1300601_N1054").rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest13006:OnSubFinish1300601(arg1)
    print("OnSubFinish1300601")
end

function Quest13006:OnSubStart1300602(arg1)
    print("OnSubStart1300602")
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13006Trigger2", "Actor/Gadget/Q13006Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300601_N1054").pos, sceneData:GetDummyPoint(3, "Q1300601_N1054").rot, true, false, 3)
end

function Quest13006:OnSubFinish1300602(arg1)
    print("OnSubFinish1300602")
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DoFreeStateTrigger()
    this:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
end

function Quest13006:OnSubStart1300604(arg1)
    print("OnSubStart1300604")
    this:CreateQuestNpc(arg1, npcs.Npc4055Data.id, 0)
    this:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q13006Trigger3", "Actor/Gadget/Q13006Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300604_N4055").pos, sceneData:GetDummyPoint(3, "Q1300604_N4055").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc4055Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
end

function Quest13006:OnSubFinish1300604(arg1)
    print("OnSubFinish1300604")
    this:GetQuestNpcActor(npcs.Npc4055Data.alias):DoFreeStateTrigger()
    this:NarratorOnlyTaskByData(datas.Narrator_1300601, nil, 13006)
end

function Quest13006:OnSubStart1300606(arg1)
    print("OnSubStart1300606")
    this:CreateQuestNpc(arg1, npcs.Npc4058Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc4058Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc4048Data.alias, 1, true)
end

function Quest13006:OnSubFinish1300606(arg1)
    print("OnSubFinish1300606")
    this:NarratorOnlyTaskByData(datas.Narrator_1300602, nil, 13006)
end

function Quest13006:OnSubStart1300605(arg1)
    print("OnSubStart1300605")
    this:CreateQuestNpc(arg1, npcs.Npc4057Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4057Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc4059Data.alias)
    v:DoFreeStyle(1120, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4048Data.alias, 1, true)
end

function Quest13006:OnSubFinish1300605(arg1)
    print("OnSubFinish1300605")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc4059Data.alias, 3)
        this:NarratorOnlyTaskByData(datas.Narrator_1300603, nil, 13006)
        this:DestroyQuestNpcActor(npcs.Npc4057Data.alias, 3)
    end)
end

function Quest13006:OnSubStart1300607(arg1)
    print("OnSubStart1300607")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q13006Trigger1", "Actor/Gadget/Q13006Trigger1", 70900002, 0, {x = -410.811, y = 239.831, z = 2818.086}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q13006Trigger4", "Actor/Gadget/Q13006Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300610_N12713").pos, sceneData:GetDummyPoint(3, "Q1300610_N12713").rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc12711Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12712Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12713Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12769Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12770Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4062Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4061Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12889Data.id, 0)
        this:NotifyTo(npcs.Npc4057Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4060Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4059Data.alias, 1, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12711Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12770Data.alias):DoFreeStyle(5010, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc4062Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc4061Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12713Data.alias)
        questNpcActor:SitOnChair(0)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:LookAt({x = -407.221, y = 241.555, z = 2823.656})
    end)
end

function Quest13006:OnSubFinish1300607(arg1)
    print("OnSubFinish1300607")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc4055Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4058Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12889Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
        this:NarratorOnlyTaskByData(datas.Narrator_1300604, nil, 13006)
        this:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4059Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4057Data.alias, 0, true)
    end)
end

function Quest13006:OnSubStart1300608(arg1)
    print("OnSubStart1300608")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    end)
end

function Quest13006:OnSubFinish1300608(arg1)
    print("OnSubFinish1300608")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest13006:OnSubStart1300609(arg1)
    print("OnSubStart1300609")
    this:NotifyTo(npcs.Npc4060Data.alias, 1, true)
end

function Quest13006:OnSubFinish1300609(arg1)
    print("OnSubFinish1300609")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest13006:OnSubStart1300610(arg1)
    print("OnSubStart1300610")
    this:NotifyTo(npcs.Npc4060Data.alias, 1, true)
end

function Quest13006:OnSubFinish1300610(arg1)
    print("OnSubFinish1300610")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest13006:OnSubStart1300611(arg1)
    print("OnSubStart1300611")
    this:NotifyTo(npcs.Npc4060Data.alias, 1, true)
end

function Quest13006:OnSubFinish1300611(arg1)
    print("OnSubFinish1300611")
end

function Quest13006:OnSubStart1300612(arg1)
    print("OnSubStart1300612")
    this:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12711Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12770Data.alias):DoFreeStyle(5010, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc4062Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc4061Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12713Data.alias)
    questNpcActor:SitOnChair(0)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:LookAt({x = -407.221, y = 241.555, z = 2823.656})
    actorMgr:CreateActorWithPos("Q13006Trigger4", "Actor/Gadget/Q13006Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300610_N12713").pos, sceneData:GetDummyPoint(3, "Q1300610_N12713").rot, true, false, 3)
end

function Quest13006:OnSubFinish1300612(arg1)
    print("OnSubFinish1300612")
    this:NarratorOnlyTaskByData(datas.Narrator_1300605, nil, 13006)
end

function Quest13006:OnSubStart1300613(arg1)
    print("OnSubStart1300613")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4060Data.id, 0)
        this:NotifyTo(npcs.Npc4028Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4391Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4055Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4058Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4057Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4059Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1054Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = arg1_2:GetQuestNpcActor(npcs.Npc4060Data.alias)
        v:DoFreeStyle(1190, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc12711Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12770Data.alias):DoFreeStyle(5010, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc4062Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc4061Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor2 = arg1_2:GetQuestNpcActor(npcs.Npc12713Data.alias)
        questNpcActor2:SitOnChair(0)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:LookAt({x = -407.221, y = 241.555, z = 2823.656})
        actorMgr:CreateActorWithPos("Q13006Trigger4", "Actor/Gadget/Q13006Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300610_N12713").pos, sceneData:GetDummyPoint(3, "Q1300610_N12713").rot, true, false, 3)
    end)
end

function Quest13006:OnSubFinish1300613(arg1)
    print("OnSubFinish1300613")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc4060Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12711Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12712Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12769Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12770Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4062Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4061Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4060Data.alias, 3)
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
        actorMgr:DestroyEntityActor("Q13006Trigger4", 3, false)
    end)
end

function Quest13006:OnSubStart1300614(arg1)
    print("OnSubStart1300614")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12711Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12712Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12713Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12769Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12770Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4062Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4061Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4060Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4057Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 0)
        this:NotifyTo(npcs.Npc4055Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4058Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4315Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4065Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4028Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4049Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4029Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4391Data.alias, 1, true)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12770Data.alias)
        questNpcActor:DoFreeStyle(1090, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc4060Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12712Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        local v = arg1_2:GetQuestNpcActor(npcs.Npc4062Data.alias)
        v:DoFreeStyle(1120, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc1054Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
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
    end)
end

function Quest13006:OnSubFinish1300614(arg1)
    print("OnSubFinish1300614")
    this:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4062Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12711Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4061Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12711Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12712Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12769Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12770Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4062Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4061Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4060Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4057Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4059Data.alias, 3)
        this:LightNotifyTo(npcs.Npc4055Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4058Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4315Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4065Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4028Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4049Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4029Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4391Data.alias, 0, true)
    end)
end

function Quest13006:OnSubStart1300603(arg1)
    print("OnSubStart1300603")
end

function Quest13006:OnSubFinish1300603(arg1)
    print("OnSubFinish1300603")
end

return Quest13006
