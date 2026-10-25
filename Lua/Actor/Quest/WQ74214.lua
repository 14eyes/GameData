require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74214 = class("Quest74214", QuestActorProxy)
Quest74214.defaultAlias = "Quest74214"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74214:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74214:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74214:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74214:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74214
