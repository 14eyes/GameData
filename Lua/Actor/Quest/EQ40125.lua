require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40125 = class("Quest40125", QuestActorProxy)
Quest40125.defaultAlias = "Quest40125"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest40125:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40125:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4012501"] = self.OnSubStart4012501}
end

function Quest40125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4012501"] = self.OnSubFinish4012501}
end

function Quest40125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40125:Start()
    print("Start")
end

function Quest40125:OnDestroy()
    print("OnDestroy")
end

function Quest40125:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40125:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40125:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc2606Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc2605Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13253Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
end

function Quest40125:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40125:OnSubStart4012501(arg1)
    print("OnSubStart4012501")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 1)
        this:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc2606Data.id, 2)
        this:GetQuestNpcActor(npcs.Npc2606Data.alias):DoFreeStyle(1110, true, nil, true, true, false, false)
        this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2605Data.id, 3)
        this:GetQuestNpcActor(npcs.Npc2605Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 4)
        this:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 5)
        this:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc13253Data.id, 6)
        this:GetQuestNpcActor(npcs.Npc1029Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2606Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2605Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1037Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13253Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40125:OnSubFinish4012501(arg1)
    print("OnSubFinish4012501")
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc2606Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc2605Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13253Data.alias, 10)
end

return Quest40125
