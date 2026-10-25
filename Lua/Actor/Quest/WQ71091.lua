require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71091 = class("Quest71091", QuestActorProxy)
Quest71091.defaultAlias = "Quest71091"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71091:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71091:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest71091:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest71091:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71091
