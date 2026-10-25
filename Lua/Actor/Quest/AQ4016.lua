require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4016 = class("Quest4016", QuestActorProxy)
Quest4016.defaultAlias = "Quest4016"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest4016:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest4016:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest4016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest4016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest4016
