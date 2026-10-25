require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72722 = class("Quest72722", QuestActorProxy)
Quest72722.defaultAlias = "Quest72722"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72722:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72722:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest72722:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest72722:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest72722
