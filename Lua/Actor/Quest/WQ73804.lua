require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73804 = class("Quest73804", QuestActorProxy)
Quest73804.defaultAlias = "Quest73804"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73804:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73804:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73804:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73804:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73804
