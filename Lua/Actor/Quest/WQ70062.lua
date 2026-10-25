require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70062 = class("Quest70062", QuestActorProxy)
Quest70062.defaultAlias = "Quest70062"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70062:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70062:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest70062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest70062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest70062
