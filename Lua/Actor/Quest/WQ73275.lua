require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73275 = class("Quest73275", QuestActorProxy)
Quest73275.defaultAlias = "Quest73275"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73275:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73275:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7327501"] = self.OnSubStart7327501,
        ["7327502"] = self.OnSubStart7327502,
        ["7327503"] = self.OnSubStart7327503,
        ["7327504"] = self.OnSubStart7327504
    }
end

function Quest73275:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7327501"] = self.OnSubFinish7327501,
        ["7327502"] = self.OnSubFinish7327502,
        ["7327503"] = self.OnSubFinish7327503,
        ["7327504"] = self.OnSubFinish7327504
    }
end

function Quest73275:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73275
