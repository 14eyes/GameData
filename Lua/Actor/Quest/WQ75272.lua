require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75272 = class("Quest75272", QuestActorProxy)
Quest75272.defaultAlias = "Quest75272"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75272:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75272:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75272:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75272:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75272
