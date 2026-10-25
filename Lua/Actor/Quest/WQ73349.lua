require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73349 = class("Quest73349", QuestActorProxy)
Quest73349.defaultAlias = "Quest73349"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73349:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73349:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73349:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73349:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73349
