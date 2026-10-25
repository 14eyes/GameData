require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74057 = class("Quest74057", QuestActorProxy)
Quest74057.defaultAlias = "Quest74057"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74057:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74057:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74057:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74057:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74057
