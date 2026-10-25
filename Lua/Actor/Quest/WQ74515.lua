require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74515 = class("Quest74515", QuestActorProxy)
Quest74515.defaultAlias = "Quest74515"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74515:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74515:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74515:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74515:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74515
