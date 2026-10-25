require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73088 = class("Quest73088", QuestActorProxy)
Quest73088.defaultAlias = "Quest73088"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73088:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73088:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73088:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73088:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73088
