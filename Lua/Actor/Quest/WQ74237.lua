require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74237 = class("Quest74237", QuestActorProxy)
Quest74237.defaultAlias = "Quest74237"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74237:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74237:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74237:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74237:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74237
