require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75220 = class("Quest75220", QuestActorProxy)
Quest75220.defaultAlias = "Quest75220"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75220:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75220:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75220:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75220:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75220
