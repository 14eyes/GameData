require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74232 = class("Quest74232", QuestActorProxy)
Quest74232.defaultAlias = "Quest74232"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74232:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74232:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74232:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74232:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74232
