require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72725 = class("Quest72725", QuestActorProxy)
Quest72725.defaultAlias = "Quest72725"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72725:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72725:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest72725:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest72725:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest72725
