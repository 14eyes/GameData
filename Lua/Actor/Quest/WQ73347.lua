require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73347 = class("Quest73347", QuestActorProxy)
Quest73347.defaultAlias = "Quest73347"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73347:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73347:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73347:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73347:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73347
