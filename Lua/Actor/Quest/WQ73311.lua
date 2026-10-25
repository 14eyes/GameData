require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73311 = class("Quest73311", QuestActorProxy)
Quest73311.defaultAlias = "Quest73311"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73311:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73311:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73311:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73311:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73311
