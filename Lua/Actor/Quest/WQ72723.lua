require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72723 = class("Quest72723", QuestActorProxy)
Quest72723.defaultAlias = "Quest72723"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72723:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72723:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest72723:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest72723:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest72723
