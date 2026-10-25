require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40044 = class("Quest40044", QuestActorProxy)
Quest40044.defaultAlias = "Quest40044"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40044:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40044:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest40044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest40044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest40044
