require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71084 = class("Quest71084", QuestActorProxy)
Quest71084.defaultAlias = "Quest71084"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71084:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71084:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest71084:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest71084:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71084
