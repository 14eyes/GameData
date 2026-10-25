require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71051 = class("Quest71051", QuestActorProxy)
Quest71051.defaultAlias = "Quest71051"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71051:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71051:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7105106"] = self.OnSubStart7105106,
        ["7105101"] = self.OnSubStart7105101,
        ["7105102"] = self.OnSubStart7105102,
        ["7105105"] = self.OnSubStart7105105,
        ["7105103"] = self.OnSubStart7105103,
        ["7105104"] = self.OnSubStart7105104
    }
end

function Quest71051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7105106"] = self.OnSubFinish7105106,
        ["7105101"] = self.OnSubFinish7105101,
        ["7105102"] = self.OnSubFinish7105102,
        ["7105105"] = self.OnSubFinish7105105,
        ["7105103"] = self.OnSubFinish7105103,
        ["7105104"] = self.OnSubFinish7105104
    }
end

function Quest71051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71051
