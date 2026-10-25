require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14020 = class("Quest14020", QuestActorProxy)
Quest14020.defaultAlias = "Quest14020"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14020:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402005"] = self.OnSubStart1402005,
        ["1402001"] = self.OnSubStart1402001,
        ["1402002"] = self.OnSubStart1402002,
        ["1402003"] = self.OnSubStart1402003,
        ["1402004"] = self.OnSubStart1402004
    }
end

function Quest14020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402005"] = self.OnSubFinish1402005,
        ["1402001"] = self.OnSubFinish1402001,
        ["1402002"] = self.OnSubFinish1402002,
        ["1402003"] = self.OnSubFinish1402003,
        ["1402004"] = self.OnSubFinish1402004
    }
end

function Quest14020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14020:Start()
    print("Start")
end

function Quest14020:OnDestroy()
    print("OnDestroy")
end

function Quest14020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14020:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14020:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest14020:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14020:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14020:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ClearSpeechBubbleTask()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5039Data.alias)
        if questNpcActor.uActor ~= nil then
            questNpcActor.uActor:StopDialogAudio()
        end
    elseif arg1 == 2 then
        this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140209906, 5, true, 15, 30, true, false)
    end
end

function Quest14020:OnSubStart1402005(arg1)
    print("OnSubStart1402005")
    this:CreateQuestNpc(arg1, npcs.Npc1082Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5038Data_01.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5039Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13955Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5040Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5075Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1402005TriggerFinish", "Actor/Gadget/Q1402005TriggerFinish", 70900002, 0, {x = 3558.376, y = 448.089, z = 4442.417}, {x = 0.0, y = 348.993, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140209906, 5, true, 15, 30, true, false)
    this:GetQuestNpcActor(npcs.Npc5038Data_01.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc13925Data.id, 6)
end

function Quest14020:OnSubFinish1402005(arg1)
    print("OnSubFinish1402005")
end

function Quest14020:OnSubStart1402001(arg1)
    print("OnSubStart1402001")
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5040Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5075Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1402001TriggerRequest", "Actor/Gadget/Q1402001TriggerRequest", 70900002, 0, {x = 3542.402, y = 445.919, z = 4435.381}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140209906, 5, true, 15, 30, true, false)
    this:GetQuestNpcActor(npcs.Npc5038Data_01.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14020:OnSubFinish1402001(arg1)
    print("OnSubFinish1402001")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13955Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5038Data_01.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13925Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5037Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5075Data.alias, 0, true)
end

function Quest14020:OnSubStart1402002(arg1)
    print("OnSubStart1402002")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1082Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5022Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5023Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5075Data.alias, 0, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1069Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1069Data.alias):DoFreeStyle(1220, true, nil, true, true, true, true)
        this:CreateQuestNpc(arg1, npcs.Npc5038Data_01.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5039Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13925Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:ClearSpeechBubbleTask()
        this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140209906, 5, true, 15, 30, true, false)
        this:GetQuestNpcActor(npcs.Npc5038Data_01.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
    end)

    actorMgr:CreateActorWithPos("Q1402002TriggerRequest", "Actor/Gadget/Q1402002TriggerRequest", 70900002, 0, points.TPos_Q1402002TriggerRequest.pos, points.TPos_Q1402002TriggerRequest.rot, true, false, 3)
end

function Quest14020:OnSubFinish1402002(arg1)
    print("OnSubFinish1402002")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121402001)
    end)
end

function Quest14020:OnSubStart1402003(arg1)
    print("OnSubStart1402003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13918Data.id, 1402003, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5022Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5023Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140209906, 5, true, 15, 30, true, false)
    this:GetQuestNpcActor(npcs.Npc5038Data_01.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1069Data.alias):DoFreeStyle(1220, true, nil, true, true, true, true)
end

function Quest14020:OnSubFinish1402003(arg1)
    print("OnSubFinish1402003")
    this:SafeDestroyQuestNpc(npcs.Npc13918Data.alias, 3)
    this:CancelStoryByQuest(121402001)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
end

function Quest14020:OnSubStart1402004(arg1)
    print("OnSubStart1402004")
    this:NpcCreateWithNpcTrigger(npcs.Npc1069Data.id, 1402004, 0, 15)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc5022Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5023Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5040Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5075Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1069Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(npcs.Npc5039Data.id, 140209906, 5, true, 15, 30, true, false)
    this:GetQuestNpcActor(npcs.Npc5038Data_01.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(true)
end

function Quest14020:OnSubFinish1402004(arg1)
    print("OnSubFinish1402004")
    this:LightNotifyTo(npcs.Npc5037Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5038Data_01.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5039Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5075Data.alias, 0, true)
    this:ClearSpeechBubbleTask()
end

return Quest14020
