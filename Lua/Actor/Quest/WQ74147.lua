require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74147 = class("Quest74147", QuestActorProxy)
Quest74147.defaultAlias = "Quest74147"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74147:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74147:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74147
