require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73341 = class("Quest73341", QuestActorProxy)
Quest73341.defaultAlias = "Quest73341"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73341:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73341:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73341:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73341:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73341
