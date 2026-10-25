require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75653 = class("Quest75653", QuestActorProxy)
Quest75653.defaultAlias = "Quest75653"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75653:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75653:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75653:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75653:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75653
