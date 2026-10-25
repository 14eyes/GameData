require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74125 = class("Quest74125", QuestActorProxy)
Quest74125.defaultAlias = "Quest74125"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74125:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74125:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74125
