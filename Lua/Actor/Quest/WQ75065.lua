require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75065 = class("Quest75065", QuestActorProxy)
Quest75065.defaultAlias = "Quest75065"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75065:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75065:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75065
