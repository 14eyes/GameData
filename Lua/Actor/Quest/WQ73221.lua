require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73221 = class("Quest73221", QuestActorProxy)
Quest73221.defaultAlias = "Quest73221"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73221:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73221:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73221:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73221:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73221
