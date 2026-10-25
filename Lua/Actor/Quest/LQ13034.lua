require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13034 = class("Quest13034", QuestActorProxy)
Quest13034.defaultAlias = "Quest13034"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest13034:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest13034:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest13034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest13034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest13034
