require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74234 = class("Quest74234", QuestActorProxy)
Quest74234.defaultAlias = "Quest74234"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74234:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74234:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74234:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74234:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74234
