require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74129 = class("Quest74129", QuestActorProxy)
Quest74129.defaultAlias = "Quest74129"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74129:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74129:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74129:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74129:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74129
