require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73045 = class("Quest73045", QuestActorProxy)
Quest73045.defaultAlias = "Quest73045"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73045:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7304501"] = self.OnSubStart7304501,
        ["7304502"] = self.OnSubStart7304502,
        ["7304503"] = self.OnSubStart7304503,
        ["7304504"] = self.OnSubStart7304504
    }
end

function Quest73045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7304501"] = self.OnSubFinish7304501,
        ["7304502"] = self.OnSubFinish7304502,
        ["7304503"] = self.OnSubFinish7304503,
        ["7304504"] = self.OnSubFinish7304504
    }
end

function Quest73045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73045
