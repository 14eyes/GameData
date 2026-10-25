require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75656 = class("Quest75656", QuestActorProxy)
Quest75656.defaultAlias = "Quest75656"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75656:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75656:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75656:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75656:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75656
