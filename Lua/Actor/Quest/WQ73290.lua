require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73290 = class("Quest73290", QuestActorProxy)
Quest73290.defaultAlias = "Quest73290"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73290:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73290:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73290:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73290:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73290
