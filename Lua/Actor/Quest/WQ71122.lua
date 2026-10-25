require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71122 = class("Quest71122", QuestActorProxy)
Quest71122.defaultAlias = "Quest71122"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71122:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71122:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest71122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest71122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71122
