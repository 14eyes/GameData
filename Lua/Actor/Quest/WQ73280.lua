require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73280 = class("Quest73280", QuestActorProxy)
Quest73280.defaultAlias = "Quest73280"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73280:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73280:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7328001"] = self.OnSubStart7328001}
end

function Quest73280:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7328001"] = self.OnSubFinish7328001}
end

function Quest73280:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73280
