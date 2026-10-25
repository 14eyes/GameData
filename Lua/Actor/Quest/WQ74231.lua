require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74231 = class("Quest74231", QuestActorProxy)
Quest74231.defaultAlias = "Quest74231"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74231:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74231:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74231:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74231:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74231
