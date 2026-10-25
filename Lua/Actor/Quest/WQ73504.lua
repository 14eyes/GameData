require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73504 = class("Quest73504", QuestActorProxy)
Quest73504.defaultAlias = "Quest73504"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73504:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73504:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73504:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73504:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73504
