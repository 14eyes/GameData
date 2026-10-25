require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74241 = class("Quest74241", QuestActorProxy)
Quest74241.defaultAlias = "Quest74241"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74241:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74241:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74241:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74241:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74241
