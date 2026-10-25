require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4014 = class("Quest4014", QuestActorProxy)
Quest4014.defaultAlias = "Quest4014"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest4014:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest4014:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest4014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest4014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest4014
