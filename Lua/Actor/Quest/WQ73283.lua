require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73283 = class("Quest73283", QuestActorProxy)
Quest73283.defaultAlias = "Quest73283"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73283:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73283:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73283:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73283:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73283
