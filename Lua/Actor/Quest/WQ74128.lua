require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74128 = class("Quest74128", QuestActorProxy)
Quest74128.defaultAlias = "Quest74128"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74128:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74128:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74128:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74128:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74128
