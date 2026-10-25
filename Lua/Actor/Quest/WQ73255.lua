require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73255 = class("Quest73255", QuestActorProxy)
Quest73255.defaultAlias = "Quest73255"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73255:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73255:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73255:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73255:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73255
