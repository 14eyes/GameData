require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73201 = class("Quest73201", QuestActorProxy)
Quest73201.defaultAlias = "Quest73201"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73201:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73201:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7320101"] = self.OnSubStart7320101,
        ["7320102"] = self.OnSubStart7320102,
        ["7320103"] = self.OnSubStart7320103,
        ["7320104"] = self.OnSubStart7320104,
        ["7320105"] = self.OnSubStart7320105,
        ["7320106"] = self.OnSubStart7320106,
        ["7320107"] = self.OnSubStart7320107,
        ["7320108"] = self.OnSubStart7320108,
        ["7320109"] = self.OnSubStart7320109,
        ["7320110"] = self.OnSubStart7320110,
        ["7320111"] = self.OnSubStart7320111,
        ["7320112"] = self.OnSubStart7320112,
        ["7320113"] = self.OnSubStart7320113,
        ["7320114"] = self.OnSubStart7320114
    }
end

function Quest73201:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7320101"] = self.OnSubFinish7320101,
        ["7320102"] = self.OnSubFinish7320102,
        ["7320103"] = self.OnSubFinish7320103,
        ["7320104"] = self.OnSubFinish7320104,
        ["7320105"] = self.OnSubFinish7320105,
        ["7320106"] = self.OnSubFinish7320106,
        ["7320107"] = self.OnSubFinish7320107,
        ["7320108"] = self.OnSubFinish7320108,
        ["7320109"] = self.OnSubFinish7320109,
        ["7320110"] = self.OnSubFinish7320110,
        ["7320111"] = self.OnSubFinish7320111,
        ["7320112"] = self.OnSubFinish7320112,
        ["7320113"] = self.OnSubFinish7320113,
        ["7320114"] = self.OnSubFinish7320114
    }
end

function Quest73201:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73201
