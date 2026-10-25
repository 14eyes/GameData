require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74235 = class("Quest74235", QuestActorProxy)
Quest74235.defaultAlias = "Quest74235"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74235:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74235:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74235:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74235:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74235
