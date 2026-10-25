require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75153 = class("Quest75153", QuestActorProxy)
Quest75153.defaultAlias = "Quest75153"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75153:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75153:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75153
