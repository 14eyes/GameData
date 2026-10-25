require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11017 = class("Quest11017", QuestActorProxy)
Quest11017.defaultAlias = "Quest11017"
local clientData
local mainID
local actorAlias
local subIDs

function Quest11017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest11017:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest11017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest11017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest11017
