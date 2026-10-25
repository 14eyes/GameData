require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73107 = class("Quest73107", QuestActorProxy)
Quest73107.defaultAlias = "Quest73107"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73107:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73107:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73107
