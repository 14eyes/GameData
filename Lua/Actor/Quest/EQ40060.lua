require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40060 = class("Quest40060", QuestActorProxy)
Quest40060.defaultAlias = "Quest40060"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40060:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40060:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest40060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest40060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest40060
