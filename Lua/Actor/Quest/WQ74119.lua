require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74119 = class("Quest74119", QuestActorProxy)
Quest74119.defaultAlias = "Quest74119"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74119:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74119:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74119:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74119:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74119
