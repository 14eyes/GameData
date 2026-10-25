require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74213 = class("Quest74213", QuestActorProxy)
Quest74213.defaultAlias = "Quest74213"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74213:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74213:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74213:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74213:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74213
