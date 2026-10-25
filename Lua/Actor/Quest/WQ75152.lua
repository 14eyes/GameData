require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75152 = class("Quest75152", QuestActorProxy)
Quest75152.defaultAlias = "Quest75152"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75152:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75152:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest75152
