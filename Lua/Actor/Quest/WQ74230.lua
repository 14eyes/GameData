require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74230 = class("Quest74230", QuestActorProxy)
Quest74230.defaultAlias = "Quest74230"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74230:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74230:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74230:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74230:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74230
