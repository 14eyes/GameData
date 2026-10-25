require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73278 = class("Quest73278", QuestActorProxy)
Quest73278.defaultAlias = "Quest73278"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73278:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73278:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73278:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73278:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73278
