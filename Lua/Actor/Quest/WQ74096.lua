require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74096 = class("Quest74096", QuestActorProxy)
Quest74096.defaultAlias = "Quest74096"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74096:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74096:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74096:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74096:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74096
