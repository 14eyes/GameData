require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14021 = class("Quest14021", QuestActorProxy)
Quest14021.defaultAlias = "Quest14021"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14021:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402101"] = self.OnSubStart1402101,
        ["1402102"] = self.OnSubStart1402102,
        ["1402121"] = self.OnSubStart1402121,
        ["1402103"] = self.OnSubStart1402103,
        ["1402104"] = self.OnSubStart1402104,
        ["1402105"] = self.OnSubStart1402105,
        ["1402106"] = self.OnSubStart1402106,
        ["1402107"] = self.OnSubStart1402107,
        ["1402108"] = self.OnSubStart1402108,
        ["1402109"] = self.OnSubStart1402109,
        ["1402110"] = self.OnSubStart1402110,
        ["1402111"] = self.OnSubStart1402111,
        ["1402112"] = self.OnSubStart1402112,
        ["1402117"] = self.OnSubStart1402117,
        ["1402119"] = self.OnSubStart1402119,
        ["1402113"] = self.OnSubStart1402113,
        ["1402114"] = self.OnSubStart1402114,
        ["1402115"] = self.OnSubStart1402115,
        ["1402116"] = self.OnSubStart1402116,
        ["1402120"] = self.OnSubStart1402120,
        ["1402118"] = self.OnSubStart1402118
    }
end

function Quest14021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402101"] = self.OnSubFinish1402101,
        ["1402102"] = self.OnSubFinish1402102,
        ["1402121"] = self.OnSubFinish1402121,
        ["1402103"] = self.OnSubFinish1402103,
        ["1402104"] = self.OnSubFinish1402104,
        ["1402105"] = self.OnSubFinish1402105,
        ["1402106"] = self.OnSubFinish1402106,
        ["1402107"] = self.OnSubFinish1402107,
        ["1402108"] = self.OnSubFinish1402108,
        ["1402109"] = self.OnSubFinish1402109,
        ["1402110"] = self.OnSubFinish1402110,
        ["1402111"] = self.OnSubFinish1402111,
        ["1402112"] = self.OnSubFinish1402112,
        ["1402117"] = self.OnSubFinish1402117,
        ["1402119"] = self.OnSubFinish1402119,
        ["1402113"] = self.OnSubFinish1402113,
        ["1402114"] = self.OnSubFinish1402114,
        ["1402115"] = self.OnSubFinish1402115,
        ["1402116"] = self.OnSubFinish1402116,
        ["1402120"] = self.OnSubFinish1402120,
        ["1402118"] = self.OnSubFinish1402118
    }
end

function Quest14021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1402121"] = self.OnSubFailed1402121,
        ["1402106"] = self.OnSubFailed1402106,
        ["1402114"] = self.OnSubFailed1402114
    }
end

function Quest14021:Start()
    print("Start")
end

function Quest14021:OnDestroy()
    print("OnDestroy")
end

function Quest14021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14021:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14021:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14021:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest14021:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14021:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest14021:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14021:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetWeather("BigWorld/Weather_ClearSky_Fd41_PSHA_1st")
        actorMgr:CreateActorWithPos("Q1402108TriggerCancelWeather", "Actor/Gadget/Q1402108TriggerCancelWeather", 70900002, 0, points.TPos_Q1402108TriggerCancelWeather.pos, points.TPos_Q1402108TriggerCancelWeather.rot, true, false, 3)
    elseif arg1 == 3 then
        this:ClearSpeechBubbleTask()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5039Data.alias)
        if questNpcActor.uActor ~= nil then
            questNpcActor.uActor:StopDialogAudio()
        end
    elseif arg1 == 2 then
        this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140209906, 6, true, 10, 15, true, false)
    end
end

function Quest14021:OnSubStart1402101(arg1)
    print("OnSubStart1402101")
    this:CreateQuestNpc(arg1, npcs.Npc1082Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5039Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5038Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1069Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc5038Data.alias):DoFreeStyle(1090, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1069Data.alias):DoFreeStyle(1090, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1069Data.alias):DisableInteeHeadCtrl(true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140209906, 5, true, 8, 15, true, false)
    this:CreateQuestNpcById(1402101, npcs.Npc13925Data.id, 5)
end

function Quest14021:OnSubFinish1402101(arg1)
    print("OnSubFinish1402101")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13925Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5037Data.alias, 0, true)
end

function Quest14021:OnSubStart1402102(arg1)
    print("OnSubStart1402102")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1082Data.id, 1402102, 0, 15, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5038Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5039Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13925Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5038Data.alias)
        questNpcActor:DoFreeStyle(1110, true, nil, true, true, true, true)
        this:ClearSpeechBubbleTask()
        this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140219917, 6, true, 10, 15, true, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest14021:OnSubFinish1402102(arg1)
    print("OnSubFinish1402102")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 1089)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1402103", 3, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId1402101)
        end)
    end)
end

function Quest14021:OnSubStart1402121(arg1)
    print("OnSubStart1402121")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14021:OnSubFinish1402121(arg1)
    print("OnSubFinish1402121")
end

function Quest14021:OnSubFailed1402121(arg1)
    print("OnSubFailed1402121")
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("1402103")
end

function Quest14021:OnSubStart1402103(arg1)
    print("OnSubStart1402103")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5038Data.alias)
    questNpcActor:DoFreeStyle(1110, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140219917, 6, true, 10, 15, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1082Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1082Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)

    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 1089)
end

function Quest14021:OnSubFinish1402103(arg1)
    print("OnSubFinish1402103")
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(false)
end

function Quest14021:OnSubStart1402104(arg1)
    print("OnSubStart1402104")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5038Data.alias)
    questNpcActor:DoFreeStyle(1110, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140219917, 6, true, 10, 15, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14021:OnSubFinish1402104(arg1)
    print("OnSubFinish1402104")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 1089)
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("1402103")
    this:SafeDestroyQuestNpc(npcs.Npc5039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13925Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5037Data.alias, 0, true)
end

function Quest14021:OnSubStart1402105(arg1)
    print("OnSubStart1402105")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13922Data.id, 1402105, 0, 15, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5061Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13943Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13944Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13945Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13946Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5056Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5038Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5039Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13925Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14072Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc14072Data.alias):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc5038Data.alias):DoFreeStyle(1110, true, nil, true, true, true, true)
        this:ClearSpeechBubbleTask()
        this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140219917, 6, true, 10, 15, true, false)
        this:GetQuestNpcActor(npcs.Npc13943Data.alias):DoFreeStyle(1180, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13944Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13946Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13945Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13944Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13945Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13946Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13943Data.alias):DisableInteeHeadCtrl(true)
    end)

    actorMgr:CreateActorWithPos("Q1402105TriggerNarrator", "Actor/Gadget/Q1402105TriggerNarrator", 70900002, 0, {x = 3505.018, y = 421.176, z = 4629.116}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest14021:OnSubFinish1402105(arg1)
    print("OnSubFinish1402105")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13922Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14072Data.alias, 1089)
    this:LightNotifyTo(npcs.Npc5037Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5061Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5056Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5058Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5060Data.alias, 0, true)
end

function Quest14021:OnSubStart1402106(arg1)
    print("OnSubStart1402106")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1070Data.id, 1402106, 0, 5, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5056Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5061Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1402106TriggerA", "Actor/Gadget/Q1402106TriggerA", 70900002, 0, {x = 3503.982, y = 421.176, z = 4618.912}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q1402106TriggerB", "Actor/Gadget/Q1402106TriggerB", 70900002, 0, {x = 3485.413, y = 421.176, z = 4609.699}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc5038Data.alias):DoFreeStyle(1110, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140219917, 6, true, 10, 15, true, false)
    this:GetQuestNpcActor(npcs.Npc13943Data.alias):DoFreeStyle(1180, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13944Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13946Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13945Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13944Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13945Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13946Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13943Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14021:OnSubFinish1402106(arg1)
    print("OnSubFinish1402106")
    this:ActorDestroy("Q1402106TriggerA")
    this:ActorDestroy("Q1402106TriggerB")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData06)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest14021:OnSubFailed1402106(arg1)
    print("OnSubFailed1402106")
    this:ActorDestroy("Q1402106N1070Trigger")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1402106TriggerA")
    this:ActorDestroy("Q1402106TriggerB")
end

function Quest14021:OnSubStart1402107(arg1)
    print("OnSubStart1402107")
    this:NpcCreateWithNpcTrigger(npcs.Npc14072Data.id, 1402107, 5, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13955Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5056Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5061Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc5038Data.alias):DoFreeStyle(1110, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140219917, 6, true, 10, 15, true, false)
    this:GetQuestNpcActor(npcs.Npc13943Data.alias):DoFreeStyle(1180, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13944Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13946Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13945Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13944Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13945Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13946Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13943Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14021:OnSubFinish1402107(arg1)
    print("OnSubFinish1402107")
    this:LightNotifyTo(npcs.Npc5056Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5058Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5060Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5061Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc14072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13955Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13943Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13944Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13945Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13946Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13925Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5037Data.alias, 0, true)
end

function Quest14021:OnSubStart1402108(arg1)
    print("OnSubStart1402108")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5038Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5039Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13925Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13955Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1070Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1082Data.id, 0)
        this:CreateLocalGadget(70291004, "1", points.SitPointTransfrom.pos, points.SitPointTransfrom.rot, 3, nil, nil, true, 0)
        this:GetQuestNpcActor(npcs.Npc1082Data.alias):SitOnChair(0, false)
        actorMgr:CreateActorWithPos("Q1402108TriggerRequest", "Actor/Gadget/Q1402108TriggerRequest", 70900002, 0, {x = 4154.644, y = 479.294, z = 4529.457}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc5038Data.alias):DoFreeStyle(1110, true, nil, true, true, true, true)
        this:ClearSpeechBubbleTask()
        this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140219917, 6, true, 10, 15, true, false)
        this:GetQuestNpcActor(npcs.Npc1070Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc13955Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13955Data.alias):DisableInteeHeadCtrl(true)
        this:CreateQuestNpc(arg1, npcs.Npc14072Data.id, 0)
        local realAlias = this:GetRealAlias(npcs.Npc13955Data.alias)
        this:GetQuestNpcActor(npcs.Npc1070Data.alias):LookAtTarget(realAlias, datas.lookParam, true)
        this:GetQuestNpcActor(npcs.Npc14072Data.alias):DoFreeStyle(1130, true, nil, true, true, false, true)
    end)

    this:CancelWeather()
end

function Quest14021:OnSubFinish1402108(arg1)
    print("OnSubFinish1402108")
    this:CancelWeather()
    this:ActorDestroy("Q1402108TriggerCancelWeather")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13955Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14072Data.alias, 3)
    this:RemoveLocalGadget(70291004, "1")
end

function Quest14021:OnSubStart1402109(arg1)
    print("OnSubStart1402109")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1402109TriggerNarrator", "Actor/Gadget/Q1402109TriggerNarrator", 70900002, 0, points.TPos_Q1402109TriggerNarrator.pos, points.TPos_Q1402109TriggerNarrator.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5038Data.alias)
    questNpcActor:DoFreeStyle(1110, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140219917, 6, true, 10, 15, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14021:OnSubFinish1402109(arg1)
    print("OnSubFinish1402109")
end

function Quest14021:OnSubStart1402110(arg1)
    print("OnSubStart1402110")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14021:OnSubFinish1402110(arg1)
    print("OnSubFinish1402110")
end

function Quest14021:OnSubStart1402111(arg1)
    print("OnSubStart1402111")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14021:OnSubFinish1402111(arg1)
    print("OnSubFinish1402111")
end

function Quest14021:OnSubStart1402112(arg1)
    print("OnSubStart1402112")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14021:OnSubFinish1402112(arg1)
    print("OnSubFinish1402112")
end

function Quest14021:OnSubStart1402117(arg1)
    print("OnSubStart1402117")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5038Data.alias)
    questNpcActor:DoFreeStyle(1110, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140219917, 6, true, 10, 15, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14021:OnSubFinish1402117(arg1)
    print("OnSubFinish1402117")
    this:SafeDestroyQuestNpc(npcs.Npc5038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5039Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest14021:OnSubStart1402119(arg1)
    print("OnSubStart1402119")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1082Data.id, 1402119, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
end

function Quest14021:OnSubFinish1402119(arg1)
    print("OnSubFinish1402119")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData19)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
end

function Quest14021:OnSubStart1402113(arg1)
    print("OnSubStart1402113")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1082Data.id, 1402113, 0, 15, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
end

function Quest14021:OnSubFinish1402113(arg1)
    print("OnSubFinish1402113")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 1089)
end

function Quest14021:OnSubStart1402114(arg1)
    print("OnSubStart1402114")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1402114", 3, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId1402106)
        end)
    end)
end

function Quest14021:OnSubFinish1402114(arg1)
    print("OnSubFinish1402114")
end

function Quest14021:OnSubFailed1402114(arg1)
    print("OnSubFailed1402114")
    this:UnCallDelayByQuest("1402114")
    this:ClearNarratorTask()
end

function Quest14021:OnSubStart1402115(arg1)
    print("OnSubStart1402115")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1082Data.id, 1402115, 0, 20, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
end

function Quest14021:OnSubFinish1402115(arg1)
    print("OnSubFinish1402115")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 1089)
    this:LightNotifyTo(npcs.Npc5038Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5039Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5037Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13925Data.alias, 3)
end

function Quest14021:OnSubStart1402116(arg1)
    print("OnSubStart1402116")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1402116TriggerRequest", "Actor/Gadget/Q1402116TriggerRequest", 70900002, 0, {x = 3491.397, y = 431.689, z = 4609.77}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1082Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13925Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1070Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
        this:GetQuestNpcActor(npcs.Npc1082Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1070Data.alias):DoFreeStyle(1060, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):DoFreeStyle(1130, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1070Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest14021:OnSubFinish1402116(arg1)
    print("OnSubFinish1402116")
    this:ClearSpeechBubbleTask()
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 1089)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 1089)
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 1089)
    this:SafeDestroyQuestNpc(npcs.Npc13925Data.alias, 3)
end

function Quest14021:OnSubStart1402120(arg1)
    print("OnSubStart1402120")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14021:OnSubFinish1402120(arg1)
    print("OnSubFinish1402120")
end

function Quest14021:OnSubStart1402118(arg1)
    print("OnSubStart1402118")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14021:OnSubFinish1402118(arg1)
    print("OnSubFinish1402118")
end

return Quest14021
