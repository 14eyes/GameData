require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75089 = class("Quest75089", QuestActorProxy)
Quest75089.defaultAlias = "Quest75089"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75089:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75089:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75089:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75089:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75089
