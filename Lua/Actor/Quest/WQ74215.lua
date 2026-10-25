require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74215 = class("Quest74215", QuestActorProxy)
Quest74215.defaultAlias = "Quest74215"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74215:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74215:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74215:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74215:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74215
