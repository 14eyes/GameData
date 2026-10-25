require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74950 = class("Quest74950", QuestActorProxy)
Quest74950.defaultAlias = "Quest74950"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74950:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74950:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74950:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74950:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74950
