require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13008 = class("Quest13008", QuestActorProxy)
Quest13008.defaultAlias = "Quest13008"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13008:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1300801"] = self.OnSubStart1300801,
        ["1300802"] = self.OnSubStart1300802,
        ["1300804"] = self.OnSubStart1300804,
        ["1300806"] = self.OnSubStart1300806,
        ["1300807"] = self.OnSubStart1300807,
        ["1300808"] = self.OnSubStart1300808,
        ["1300805"] = self.OnSubStart1300805,
        ["1300803"] = self.OnSubStart1300803
    }
end

function Quest13008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1300801"] = self.OnSubFinish1300801,
        ["1300802"] = self.OnSubFinish1300802,
        ["1300804"] = self.OnSubFinish1300804,
        ["1300806"] = self.OnSubFinish1300806,
        ["1300807"] = self.OnSubFinish1300807,
        ["1300808"] = self.OnSubFinish1300808,
        ["1300805"] = self.OnSubFinish1300805,
        ["1300803"] = self.OnSubFinish1300803
    }
end

function Quest13008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13008:Start()
    print("Start")
end

function Quest13008:OnDestroy()
    print("OnDestroy")
end

function Quest13008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13008:OnSubStart1300801(arg1)
    print("OnSubStart1300801")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc12880Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12713Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc12713Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest13008:OnSubFinish1300801(arg1)
    print("OnSubFinish1300801")
    this:NarratorOnlyTaskByData(datas.Narrator_1300801, nil, 13008)
    this:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
end

function Quest13008:OnSubStart1300802(arg1)
    print("OnSubStart1300802")
    this:ActionSafeCall(function(arg1_2)
        this:CallDelay(1, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12713Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12771Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12714Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12769Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12770Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc4057Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc4060Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12712Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12711Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc4061Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc4062Data.id, 0)
            arg1_2:NotifyTo(npcs.Npc4048Data.alias, 1, true)
            arg1_2:NotifyTo(npcs.Npc4315Data.alias, 1, true)
            arg1_2:NotifyTo(npcs.Npc4065Data.alias, 1, true)
            arg1_2:NotifyTo(npcs.Npc4028Data.alias, 1, true)
            arg1_2:NotifyTo(npcs.Npc4029Data.alias, 1, true)
            arg1_2:NotifyTo(npcs.Npc4049Data.alias, 1, true)
            arg1_2:NotifyTo(npcs.Npc4055Data.alias, 1, true)
            arg1_2:NotifyTo(npcs.Npc4058Data.alias, 1, true)
            arg1_2:NotifyTo(npcs.Npc4391Data.alias, 1, true)
            arg1_2:GetQuestNpcActor(npcs.Npc12771Data.alias):DisableInteeHeadCtrl(true)
            arg1_2:GetQuestNpcActor(npcs.Npc12714Data.alias):DisableInteeHeadCtrl(true)
            local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12769Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, true)
            arg1_2:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(true)
            local v = arg1_2:GetQuestNpcActor(npcs.Npc4057Data.alias)
            v:DisableInteeHeadCtrl(true)
            v:DoFreeStyle(1170, true, nil, true, true, false, true)
            arg1_2:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(true)
            local questNpcActor2 = arg1_2:GetQuestNpcActor(npcs.Npc4060Data.alias)
            questNpcActor2:DisableInteeHeadCtrl(true)
            questNpcActor2:DoFreeStyle(1120, true, nil, true, true, false, true)
            local questNpcActor3 = arg1_2:GetQuestNpcActor(npcs.Npc12712Data.alias)
            questNpcActor3:DisableInteeHeadCtrl(true)
            questNpcActor3:DoFreeStyle(1120, true, nil, true, true, false, true)
            arg1_2:GetQuestNpcActor(npcs.Npc12711Data.alias):DisableInteeHeadCtrl(true)
            arg1_2:GetQuestNpcActor(npcs.Npc4061Data.alias):DisableInteeHeadCtrl(true)
            arg1_2:GetQuestNpcActor(npcs.Npc4062Data.alias):DisableInteeHeadCtrl(true)
            actorMgr:CreateActorWithPos("Q13008Trigger", "Actor/Gadget/Q13008Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300701_N4060").pos, sceneData:GetDummyPoint(3, "Q1300701_N4060").rot, true, false, 3)
        end)
    end)
end

function Quest13008:OnSubFinish1300802(arg1)
    print("OnSubFinish1300802")
    this:ActionSafeCall(function(arg1)
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
        actorMgr:DestroyEntityActor("Q13008Trigger", 3, false)
        arg1:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12771Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12714Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12769Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12770Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12713Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4060Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12712Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12711Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4061Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc4062Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc12880Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12771Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12714Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12769Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12770Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4057Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4059Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4060Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12712Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12711Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4061Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4062Data.alias, 3)
        this:LightNotifyTo(npcs.Npc4055Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4058Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4029Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4049Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4391Data.alias, 0, true)
    end)
end

function Quest13008:OnSubStart1300804(arg1)
    print("OnSubStart1300804")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc12713Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc12713Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1054Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4315Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4065Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4028Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4059Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4060Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4061Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4062Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q13008Trigger2", "Actor/Gadget/Q13008Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300704_N1005").pos, sceneData:GetDummyPoint(3, "Q1300704_N1005").rot, true, false, 3)
    end)
end

function Quest13008:OnSubFinish1300804(arg1)
    print("OnSubFinish1300804")
    this:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_1300802, nil, 13008)
        actorMgr:DestroyEntityActor("Q13008Trigger2", 3, false)
        globalActor:ResumePaimonInProfilePage({3})
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
    end)
end

function Quest13008:OnSubStart1300806(arg1)
    print("OnSubStart1300806")
    this:NotifyTo(npcs.Npc4059Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4028Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4061Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest13008:OnSubFinish1300806(arg1)
    print("OnSubFinish1300806")
    this:AfterMainPageActiveSafeCall(function(arg1)
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
        arg1:LightNotifyTo(npcs.Npc4059Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4315Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4065Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4028Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4060Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4061Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4062Data.alias, 0, true)
    end)
end

function Quest13008:OnSubStart1300807(arg1)
    print("OnSubStart1300807")
    this:ShowBlackScreen(0, 0.5, 0.5, function(arg1_2)
        arg1_2:NotifyTo(npcs.Npc4060Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4061Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4062Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4315Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4065Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4391Data.alias, 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12769Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12770Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12713Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4057Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12712Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4055Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4058Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4028Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4029Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4049Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12769Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc4057Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc4055Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc4058Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc4029Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        actorMgr:CreateActorWithPos("Q13008Trigger1", "Actor/Gadget/Q13008Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300701_N4060").pos, sceneData:GetDummyPoint(3, "Q1300701_N4060").rot, true, false, 3)
    end, nil, nil, "", false, true)
end

function Quest13008:OnSubFinish1300807(arg1)
    print("OnSubFinish1300807")
    this:ActionSafeCall(function(arg1)
        actorMgr:DestroyEntityActor("Q13008Trigger1", 3, false)
        this:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12769Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12770Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12713Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4057Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4059Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12712Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4055Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4058Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4028Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4029Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4049Data.alias, 3)
        this:LightNotifyTo(npcs.Npc4060Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4061Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4062Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4315Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4065Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4391Data.alias, 0, true)
    end)
end

function Quest13008:OnSubStart1300808(arg1)
    print("OnSubStart1300808")
end

function Quest13008:OnSubFinish1300808(arg1)
    print("OnSubFinish1300808")
end

function Quest13008:OnSubStart1300805(arg1)
    print("OnSubStart1300805")
end

function Quest13008:OnSubFinish1300805(arg1)
    print("OnSubFinish1300805")
end

function Quest13008:OnSubStart1300803(arg1)
    print("OnSubStart1300803")
end

function Quest13008:OnSubFinish1300803(arg1)
    print("OnSubFinish1300803")
end

return Quest13008
