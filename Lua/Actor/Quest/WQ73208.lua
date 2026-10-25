require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73208 = class("Quest73208", QuestActorProxy)
Quest73208.defaultAlias = "Quest73208"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73208:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73208:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73208:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73208:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73208
