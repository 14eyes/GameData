require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75226 = class("Quest75226", QuestActorProxy)
Quest75226.defaultAlias = "Quest75226"
local clientData
local this
local mainID
local actorAlias

function Quest75226:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75226:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75226:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75226:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75226
