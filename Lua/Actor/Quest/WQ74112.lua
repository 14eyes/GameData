require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74112 = class("Quest74112", QuestActorProxy)
Quest74112.defaultAlias = "Quest74112"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74112:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74112:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74112
