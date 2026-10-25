require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19093 = class("Quest19093", QuestActorProxy)
Quest19093.defaultAlias = "Quest19093"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19093:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19093:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1909301"] = self.OnSubStart1909301}
end

function Quest19093:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1909301"] = self.OnSubFinish1909301}
end

function Quest19093:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19093:Start()
    print("Start")
end

function Quest19093:OnDestroy()
    print("OnDestroy")
end

function Quest19093:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19093:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19093:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4122Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4123Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4127Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4128Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4129Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4109Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4122Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4123Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4129Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1909301N516Trigger", 3, false)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
    this:CancelWeather()
end

function Quest19093:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19093:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19093:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19093:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest19093:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetWeather("BigWorld/Weather_ClearSky")
    end
end

function Quest19093:OnSubStart1909301(arg1)
    print("OnSubStart1909301")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909301)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaData.id, 1909301, 1, 5, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13304Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13305Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:NpcCreate(arg1, npcs.Npc13456Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19093:OnSubFinish1909301(arg1)
    print("OnSubFinish1909301")
    this:NpcDestroy(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4122Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4123Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4129Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
    this:CancelWeather()
end

return Quest19093
