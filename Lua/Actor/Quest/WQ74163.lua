require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74163 = class("Quest74163", QuestActorProxy)
Quest74163.defaultAlias = "Quest74163"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74163:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74163:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74163:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74163:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74163
