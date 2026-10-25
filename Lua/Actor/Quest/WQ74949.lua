require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74949 = class("Quest74949", QuestActorProxy)
Quest74949.defaultAlias = "Quest74949"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74949:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74949:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74949:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74949:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74949
