require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73313 = class("Quest73313", QuestActorProxy)
Quest73313.defaultAlias = "Quest73313"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73313:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73313:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73313:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73313:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73313
