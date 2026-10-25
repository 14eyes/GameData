require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73517 = class("Quest73517", QuestActorProxy)
Quest73517.defaultAlias = "Quest73517"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73517:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73517:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7351702"] = self.OnSubStart7351702, ["7351701"] = self.OnSubStart7351701}
end

function Quest73517:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7351702"] = self.OnSubFinish7351702, ["7351701"] = self.OnSubFinish7351701}
end

function Quest73517:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73517:Start()
    print("Start")
end

function Quest73517:OnDestroy()
    print("OnDestroy")
end

function Quest73517:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73517:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73517:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
end

function Quest73517:OnSubStart7351702(arg1)
    print("OnSubStart7351702")
end

function Quest73517:OnSubFinish7351702(arg1)
    print("OnSubFinish7351702")
end

function Quest73517:OnSubStart7351701(arg1)
    print("OnSubStart7351701")
    this:CreateQuestNpc(arg1, npcs.Npc30342Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30343Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc30342Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30343Data.alias):DisableInteeHeadCtrl(true)
end

function Quest73517:OnSubFinish7351701(arg1)
    print("OnSubFinish7351701")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
end

return Quest73517
