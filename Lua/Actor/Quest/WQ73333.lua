require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73333 = class("Quest73333", QuestActorProxy)
Quest73333.defaultAlias = "Quest73333"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73333:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73333:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73333:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73333:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73333
