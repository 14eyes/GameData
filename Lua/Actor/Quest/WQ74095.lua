require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74095 = class("Quest74095", QuestActorProxy)
Quest74095.defaultAlias = "Quest74095"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74095:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74095:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74095:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74095:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74095
