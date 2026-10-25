require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75054 = class("Quest75054", QuestActorProxy)
Quest75054.defaultAlias = "Quest75054"
local clientData
local this
local mainID
local actorAlias

function Quest75054:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75054:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75054
