require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73191 = class("Quest73191", QuestActorProxy)
Quest73191.defaultAlias = "Quest73191"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73191:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73191:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73191:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73191:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73191
