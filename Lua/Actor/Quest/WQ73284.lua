require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73284 = class("Quest73284", QuestActorProxy)
Quest73284.defaultAlias = "Quest73284"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73284:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73284:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73284:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73284:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73284
