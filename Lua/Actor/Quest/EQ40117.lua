require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40117 = class("Quest40117", QuestActorProxy)
Quest40117.defaultAlias = "Quest40117"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest40117:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40117:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4011701"] = self.OnSubStart4011701}
end

function Quest40117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4011701"] = self.OnSubFinish4011701}
end

function Quest40117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40117:Start()
    print("Start")
end

function Quest40117:OnDestroy()
    print("OnDestroy")
end

function Quest40117:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40117:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40117:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.GaiaData.alias, 10)
end

function Quest40117:OnSubStart4011701(arg1)
    print("OnSubStart4011701")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 1)
        this:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 2)
        this:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 3)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 4)
        this:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 5)
        this:CreateQuestNpc(arg1, npcs.GaiaData.id, 6)
        this:GetQuestNpcActor(npcs.GaiaData.alias):DoFreeStyle(1172, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1029Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1037Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13247Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc10090Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40117:OnSubFinish4011701(arg1)
    print("OnSubFinish4011701")
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.GaiaData.alias, 10)
end

return Quest40117
