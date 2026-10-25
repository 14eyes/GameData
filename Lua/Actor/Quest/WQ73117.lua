require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73117 = class("Quest73117", QuestActorProxy)
Quest73117.defaultAlias = "Quest73117"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73117:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73117:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73117
