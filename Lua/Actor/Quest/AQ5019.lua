require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5019 = class("Quest5019", QuestActorProxy)
Quest5019.defaultAlias = "Quest5019"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest5019:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest5019:OnSubStartHandlerBuild()
    self.subStartHandlers = {["501901"] = self.OnSubStart501901, ["501902"] = self.OnSubStart501902}
end

function Quest5019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["501901"] = self.OnSubFinish501901, ["501902"] = self.OnSubFinish501902}
end

function Quest5019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5019:OnSubStart501901(arg1)
    print("OnSubStart501901")
    this:CreateQuestNpc(arg1, npcs.Npc14184.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14207.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14607.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14184.alias, 5019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14207.alias, 5019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14607.alias, 5019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14607.alias, 5019):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest5019:OnSubFinish501901(arg1)
    print("OnSubFinish501901")
    this:DestroyQuestNpcActor(npcs.Npc14607.alias, 3)
end

function Quest5019:OnSubStart501902(arg1)
    print("OnSubStart501902")
    this:GetQuestNpcActor(npcs.Npc14184.alias, 5019):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14207.alias, 5019):DisableInteeHeadCtrl(true)
end

function Quest5019:OnSubFinish501902(arg1)
    print("OnSubFinish501902")
    this:DestroyQuestNpcActor(npcs.Npc14184.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14207.alias, 3)
end

return Quest5019
