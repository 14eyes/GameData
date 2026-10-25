require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73288 = class("Quest73288", QuestActorProxy)
Quest73288.defaultAlias = "Quest73288"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73288:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73288:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73288:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73288:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73288
