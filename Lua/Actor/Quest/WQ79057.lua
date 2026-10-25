require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79057 = class("Quest79057", QuestActorProxy)
Quest79057.defaultAlias = "Quest79057"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79057:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79057:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7905701"] = self.OnSubStart7905701}
end

function Quest79057:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7905701"] = self.OnSubFinish7905701}
end

function Quest79057:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79057:Start()
    print("Start")
end

function Quest79057:OnDestroy()
    print("OnDestroy")
end

function Quest79057:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79057:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79057:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79057:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest79057:OnSubStart7905701(arg1)
    print("OnSubStart7905701")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21017Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21018Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21019Data.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21020Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21021Data.id, 5)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21022Data.id, 6)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21023Data.id, 7)
end

function Quest79057:OnSubFinish7905701(arg1)
    print("OnSubFinish7905701")
end

return Quest79057
