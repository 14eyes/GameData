require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70673 = class("Quest70673", QuestActorProxy)
Quest70673.defaultAlias = "Quest70673"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70673:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70673:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest70673:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest70673:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest70673
