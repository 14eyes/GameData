require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75159 = class("Quest75159", QuestActorProxy)
Quest75159.defaultAlias = "Quest75159"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75159:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75159:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75159
