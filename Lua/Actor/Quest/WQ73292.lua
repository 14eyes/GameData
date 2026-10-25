require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73292 = class("Quest73292", QuestActorProxy)
Quest73292.defaultAlias = "Quest73292"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73292:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73292:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73292:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73292:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73292
