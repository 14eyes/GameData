require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75228 = class("Quest75228", QuestActorProxy)
Quest75228.defaultAlias = "Quest75228"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75228:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75228:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75228:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75228:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75228
