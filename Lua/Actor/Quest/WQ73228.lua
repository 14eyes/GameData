require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73228 = class("Quest73228", QuestActorProxy)
Quest73228.defaultAlias = "Quest73228"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73228:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73228:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73228:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73228:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73228
