require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75654 = class("Quest75654", QuestActorProxy)
Quest75654.defaultAlias = "Quest75654"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75654:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75654:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75654:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75654:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75654
