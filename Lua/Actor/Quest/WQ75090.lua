require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75090 = class("Quest75090", QuestActorProxy)
Quest75090.defaultAlias = "Quest75090"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75090:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75090:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75090:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75090:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75090
