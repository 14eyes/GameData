require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73304 = class("Quest73304", QuestActorProxy)
Quest73304.defaultAlias = "Quest73304"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73304:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73304:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73304:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73304:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73304
