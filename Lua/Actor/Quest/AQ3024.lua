require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3024 = class("Quest3024", QuestActorProxy)
Quest3024.defaultAlias = "Quest3024"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3024:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["302414"] = self.OnSubStart302414,
        ["302410"] = self.OnSubStart302410,
        ["302401"] = self.OnSubStart302401,
        ["302413"] = self.OnSubStart302413,
        ["302411"] = self.OnSubStart302411,
        ["302412"] = self.OnSubStart302412,
        ["302402"] = self.OnSubStart302402,
        ["302403"] = self.OnSubStart302403,
        ["302404"] = self.OnSubStart302404,
        ["302405"] = self.OnSubStart302405,
        ["302406"] = self.OnSubStart302406,
        ["302407"] = self.OnSubStart302407,
        ["302408"] = self.OnSubStart302408,
        ["302409"] = self.OnSubStart302409
    }
end

function Quest3024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["302414"] = self.OnSubFinish302414,
        ["302410"] = self.OnSubFinish302410,
        ["302401"] = self.OnSubFinish302401,
        ["302413"] = self.OnSubFinish302413,
        ["302411"] = self.OnSubFinish302411,
        ["302412"] = self.OnSubFinish302412,
        ["302402"] = self.OnSubFinish302402,
        ["302403"] = self.OnSubFinish302403,
        ["302404"] = self.OnSubFinish302404,
        ["302405"] = self.OnSubFinish302405,
        ["302406"] = self.OnSubFinish302406,
        ["302407"] = self.OnSubFinish302407,
        ["302408"] = self.OnSubFinish302408,
        ["302409"] = self.OnSubFinish302409
    }
end

function Quest3024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3024:Start()
    print("Start")
end

function Quest3024:OnDestroy()
    print("OnDestroy")
end

function Quest3024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3024:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12801Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12802Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12803Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12804Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4428Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12765Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12766Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4428Data.alias, 0, true)
end

function Quest3024:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3024:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3024:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest3024:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest3024:OnSubStart302414(arg1)
    print("OnSubStart302414")
end

function Quest3024:OnSubFinish302414(arg1)
    print("OnSubFinish302414")
end

function Quest3024:OnSubStart302410(arg1)
    print("OnSubStart302410")
end

function Quest3024:OnSubFinish302410(arg1)
    print("OnSubFinish302410")
end

function Quest3024:OnSubStart302401(arg1)
    print("OnSubStart302401")
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4317Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4319Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q302401_Trigger", 302401, npcs.Npc1059Data.id, 1, 8)
end

function Quest3024:OnSubFinish302401(arg1)
    print("OnSubFinish302401")
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
end

function Quest3024:OnSubStart302413(arg1)
    print("OnSubStart302413")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1059Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4317Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4319Data.alias, 1, true)
end

function Quest3024:OnSubFinish302413(arg1)
    print("OnSubFinish302413")
end

function Quest3024:OnSubStart302411(arg1)
    print("OnSubStart302411")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4317Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4319Data.alias, 1, true)
    this:LevelLoadFinishSafeCall(function(arg1)
        this:RequestInteraction(npcs.Npc1053Data.alias)
    end)
end

function Quest3024:OnSubFinish302411(arg1)
    print("OnSubFinish302411")
    this:NPCDestroyImmediately(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1077)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1077)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 1077)
    this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
end

function Quest3024:OnSubStart302412(arg1)
    print("OnSubStart302412")
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4317Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4319Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q302412_Trigger", 302412, npcs.Npc1059Data.id, 1, 20)
end

function Quest3024:OnSubFinish302412(arg1)
    print("OnSubFinish302412")
    this:LightNotifyTo(npcs.Npc4317Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4319Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1077)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 1077)
end

function Quest3024:OnSubStart302402(arg1)
    print("OnSubStart302402")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1059Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12709Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcWithTrigger("Q302402_Trigger", 302402, npcs.Npc1053Data.id, 2, 20)
    end)
end

function Quest3024:OnSubFinish302402(arg1)
    print("OnSubFinish302402")
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1077)
    this:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
end

function Quest3024:OnSubStart302403(arg1)
    print("OnSubStart302403")
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc12766Data.id, 3)
    this:CreateQuestNpcWithTrigger("Q302403_Trigger", 302403, npcs.Npc12765Data.id, 2, 10)
end

function Quest3024:OnSubFinish302403(arg1)
    print("OnSubFinish302403")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1077)
    this:SafeDestroyQuestNpc(npcs.Npc12765Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12766Data.alias, 3)
end

function Quest3024:OnSubStart302404(arg1)
    print("OnSubStart302404")
    this:CreateQuestNpc(arg1, npcs.Npc12709Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4363Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4354Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4358Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q302404_Trigger", 302404, npcs.Npc1058Data.id, 1, 20)
end

function Quest3024:OnSubFinish302404(arg1)
    print("OnSubFinish302404")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_302402, nil, 3024)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
end

function Quest3024:OnSubStart302405(arg1)
    print("OnSubStart302405")
    this:CreateQuestNpc(arg1, npcs.Npc12802Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4356Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4360Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4363Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4354Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4358Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q302405_N12801_Trigger", 302405, npcs.Npc12801Data.id, 1, 8)
    this:CreateQuestNpcWithTrigger("Q302405_N13123_Trigger", 302405, npcs.Npc13123Data.id, 4, 20)
end

function Quest3024:OnSubFinish302405(arg1)
    print("OnSubFinish302405")
    if actorMgr:GetActor("Q302405_N12801_Trigger") ~= nil then
        this:ActorDestroy("Q302405_N12801_Trigger")
    end

    if actorMgr:GetActor("Q302405_N13123_Trigger") ~= nil then
        this:ActorDestroy("Q302405_N13123_Trigger")
    end

    this:SafeDestroyQuestNpc(npcs.Npc12801Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12802Data.alias, 3)
end

function Quest3024:OnSubStart302406(arg1)
    print("OnSubStart302406")
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4356Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4360Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc4363Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4354Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4358Data.alias, 0, true)
end

function Quest3024:OnSubFinish302406(arg1)
    print("OnSubFinish302406")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:CallDelay(1, function(arg1)
            this:NarratorOnlyTaskByData(datas.Narrator_302401, nil, 3024)
        end)
    end)

    this:LightNotifyTo(npcs.Npc4356Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4360Data.alias, 0, true)
end

function Quest3024:OnSubStart302407(arg1)
    print("OnSubStart302407")
    this:CreateQuestNpc(arg1, npcs.Npc12801Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12802Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc12804Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q302407_Trigger", 302407, npcs.Npc12803Data.id, 3, 20)
    this:GetQuestNpcActor(npcs.Npc12803Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest3024:OnSubFinish302407(arg1)
    print("OnSubFinish302407")
    this:SafeDestroyQuestNpc(npcs.Npc12801Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12802Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12803Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12804Data.alias, 3)
end

function Quest3024:OnSubStart302408(arg1)
    print("OnSubStart302408")
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
end

function Quest3024:OnSubFinish302408(arg1)
    print("OnSubFinish302408")
end

function Quest3024:OnSubStart302409(arg1)
    print("OnSubStart302409")
    this:DailyNpcSafeHideSelf(npcs.Npc4428Data.alias, 1, true)
    this:CallDelay(1, function(arg1)
        this:CreateQuestNpcWithTriggerBlack("Q302409_Trigger", 302409, npcs.Npc1058Data.id, 1, 20, 1)
    end)
end

function Quest3024:OnSubFinish302409(arg1)
    print("OnSubFinish302409")
    this:LightNotifyTo(npcs.Npc4428Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12801Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12802Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12803Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
end

return Quest3024
