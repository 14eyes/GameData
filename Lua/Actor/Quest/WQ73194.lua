require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73194 = class("Quest73194", QuestActorProxy)
Quest73194.defaultAlias = "Quest73194"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73194:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73194:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7319401"] = self.OnSubStart7319401,
        ["7319402"] = self.OnSubStart7319402,
        ["7319403"] = self.OnSubStart7319403,
        ["7319404"] = self.OnSubStart7319404,
        ["7319405"] = self.OnSubStart7319405,
        ["7319406"] = self.OnSubStart7319406,
        ["7319407"] = self.OnSubStart7319407,
        ["7319408"] = self.OnSubStart7319408,
        ["7319409"] = self.OnSubStart7319409,
        ["7319410"] = self.OnSubStart7319410,
        ["7319411"] = self.OnSubStart7319411,
        ["7319412"] = self.OnSubStart7319412,
        ["7319413"] = self.OnSubStart7319413,
        ["7319414"] = self.OnSubStart7319414
    }
end

function Quest73194:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7319401"] = self.OnSubFinish7319401,
        ["7319402"] = self.OnSubFinish7319402,
        ["7319403"] = self.OnSubFinish7319403,
        ["7319404"] = self.OnSubFinish7319404,
        ["7319405"] = self.OnSubFinish7319405,
        ["7319406"] = self.OnSubFinish7319406,
        ["7319407"] = self.OnSubFinish7319407,
        ["7319408"] = self.OnSubFinish7319408,
        ["7319409"] = self.OnSubFinish7319409,
        ["7319410"] = self.OnSubFinish7319410,
        ["7319411"] = self.OnSubFinish7319411,
        ["7319412"] = self.OnSubFinish7319412,
        ["7319413"] = self.OnSubFinish7319413,
        ["7319414"] = self.OnSubFinish7319414
    }
end

function Quest73194:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73194
