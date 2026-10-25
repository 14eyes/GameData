require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40122 = class("Quest40122", QuestActorProxy)
Quest40122.defaultAlias = "Quest40122"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40122:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40122:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest40122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest40122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest40122
