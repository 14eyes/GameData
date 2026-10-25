require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75655 = class("Quest75655", QuestActorProxy)
Quest75655.defaultAlias = "Quest75655"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75655:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75655:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75655:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75655:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75655
