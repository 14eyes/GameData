require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75114 = class("Quest75114", QuestActorProxy)
Quest75114.defaultAlias = "Quest75114"
local clientData
local this
local mainID
local actorAlias

function Quest75114:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75114:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75114
