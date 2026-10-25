require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73222 = class("Quest73222", QuestActorProxy)
Quest73222.defaultAlias = "Quest73222"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73222:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73222:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73222:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73222:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73222
