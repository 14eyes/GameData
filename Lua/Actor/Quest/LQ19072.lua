require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19072 = class("Quest19072", QuestActorProxy)
Quest19072.defaultAlias = "Quest19072"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19072:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19072:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1907201"] = self.OnSubStart1907201, ["1907202"] = self.OnSubStart1907202}
end

function Quest19072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1907201"] = self.OnSubFinish1907201, ["1907202"] = self.OnSubFinish1907202}
end

function Quest19072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19072:Start()
    print("Start")
end

function Quest19072:OnDestroy()
    print("OnDestroy")
end

function Quest19072:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19072:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19072:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13236Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13237Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13238Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4369Data.alias, 0, true)
end

function Quest19072:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19072:OnSubStart1907201(arg1)
    print("OnSubStart1907201")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907201)
    this:CreateQuestNpc(arg1, npcs.Npc1055Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc1055Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4369Data.alias, 1, true)
end

function Quest19072:OnSubFinish1907201(arg1)
    print("OnSubFinish1907201")
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
end

function Quest19072:OnSubStart1907202(arg1)
    print("OnSubStart1907202")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907202)
    this:CreateQuestNpc(arg1, npcs.Npc13236Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13237Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc13238Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc13236Data.alias):DoFreeStyle(1190, true, nil, true, true, true, false)
    this:GetQuestNpcActor(npcs.Npc13237Data.alias):DoFreeStyle(1230, true, nil, true, true, true, false)
    this:GetQuestNpcActor(npcs.Npc13238Data.alias):DoFreeStyle(1120, true, nil, true, true, true, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4369Data.alias, 1, true)
end

function Quest19072:OnSubFinish1907202(arg1)
    print("OnSubFinish1907202")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:EnterSceneLookCamera(datas.NewVector3, 1, 3, true, true)
    end)

    this:NarratorOnlyTaskByData(datas.Narrator_1907201, nil, 19072)
    this:SafeDestroyQuestNpc(npcs.Npc13236Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13237Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13238Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4369Data.alias, 0, true)
end

return Quest19072
