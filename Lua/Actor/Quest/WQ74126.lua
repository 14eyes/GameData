require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74126 = class("Quest74126", QuestActorProxy)
Quest74126.defaultAlias = "Quest74126"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74126:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74126:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74126:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74126:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74126
