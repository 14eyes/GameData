require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40062 = class("Quest40062", QuestActorProxy)
Quest40062.defaultAlias = "Quest40062"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40062:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40062:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest40062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest40062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest40062
