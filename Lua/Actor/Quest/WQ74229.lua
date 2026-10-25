require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74229 = class("Quest74229", QuestActorProxy)
Quest74229.defaultAlias = "Quest74229"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74229:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74229:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74229:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74229:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74229
