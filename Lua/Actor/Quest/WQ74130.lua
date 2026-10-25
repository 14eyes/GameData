require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74130 = class("Quest74130", QuestActorProxy)
Quest74130.defaultAlias = "Quest74130"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74130:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74130:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74130
