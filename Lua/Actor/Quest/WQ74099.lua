require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74099 = class("Quest74099", QuestActorProxy)
Quest74099.defaultAlias = "Quest74099"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74099:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74099:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74099:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74099:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74099
