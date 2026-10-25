require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75051 = class("Quest75051", QuestActorProxy)
Quest75051.defaultAlias = "Quest75051"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75051:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75051:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75051
