require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73340 = class("Quest73340", QuestActorProxy)
Quest73340.defaultAlias = "Quest73340"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73340:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73340:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73340:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73340:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73340
