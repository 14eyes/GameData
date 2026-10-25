require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73291 = class("Quest73291", QuestActorProxy)
Quest73291.defaultAlias = "Quest73291"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73291:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73291:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73291:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73291:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73291
