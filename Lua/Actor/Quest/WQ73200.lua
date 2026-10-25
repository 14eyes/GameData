require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73200 = class("Quest73200", QuestActorProxy)
Quest73200.defaultAlias = "Quest73200"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73200:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73200:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7320001"] = self.OnSubStart7320001}
end

function Quest73200:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7320001"] = self.OnSubFinish7320001}
end

function Quest73200:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73200
