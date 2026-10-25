require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74211 = class("Quest74211", QuestActorProxy)
Quest74211.defaultAlias = "Quest74211"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74211:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74211:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74211:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74211:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74211
