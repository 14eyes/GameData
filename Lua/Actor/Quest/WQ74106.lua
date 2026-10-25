require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74106 = class("Quest74106", QuestActorProxy)
Quest74106.defaultAlias = "Quest74106"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74106:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74106:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74106
