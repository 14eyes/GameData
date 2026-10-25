require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73236 = class("Quest73236", QuestActorProxy)
Quest73236.defaultAlias = "Quest73236"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73236:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73236:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73236:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73236:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73236
