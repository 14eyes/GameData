require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79083 = class("Quest79083", QuestActorProxy)
Quest79083.defaultAlias = "Quest79083"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79083:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79083:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest79083:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest79083:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest79083
