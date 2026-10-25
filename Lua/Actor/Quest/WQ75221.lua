require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75221 = class("Quest75221", QuestActorProxy)
Quest75221.defaultAlias = "Quest75221"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75221:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75221:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75221:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75221:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75221
