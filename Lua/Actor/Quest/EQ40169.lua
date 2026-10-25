require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40169 = class("Quest40169", QuestActorProxy)
Quest40169.defaultAlias = "Quest40169"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40169:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40169:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest40169:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest40169:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest40169
