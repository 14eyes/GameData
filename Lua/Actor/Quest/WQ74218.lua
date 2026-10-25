require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74218 = class("Quest74218", QuestActorProxy)
Quest74218.defaultAlias = "Quest74218"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74218:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74218:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74218:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74218:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74218
