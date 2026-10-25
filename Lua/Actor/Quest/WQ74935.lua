require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74935 = class("Quest74935", QuestActorProxy)
Quest74935.defaultAlias = "Quest74935"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74935:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74935:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74935:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74935:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74935
