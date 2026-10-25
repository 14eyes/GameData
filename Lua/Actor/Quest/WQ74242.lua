require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74242 = class("Quest74242", QuestActorProxy)
Quest74242.defaultAlias = "Quest74242"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74242:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74242:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74242:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74242:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74242
