require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73218 = class("Quest73218", QuestActorProxy)
Quest73218.defaultAlias = "Quest73218"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73218:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73218:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7321801"] = self.OnSubStart7321801,
        ["7321802"] = self.OnSubStart7321802,
        ["7321803"] = self.OnSubStart7321803,
        ["7321804"] = self.OnSubStart7321804,
        ["7321805"] = self.OnSubStart7321805,
        ["7321806"] = self.OnSubStart7321806,
        ["7321807"] = self.OnSubStart7321807,
        ["7321808"] = self.OnSubStart7321808,
        ["7321809"] = self.OnSubStart7321809,
        ["7321810"] = self.OnSubStart7321810,
        ["7321811"] = self.OnSubStart7321811,
        ["7321812"] = self.OnSubStart7321812,
        ["7321813"] = self.OnSubStart7321813,
        ["7321814"] = self.OnSubStart7321814,
        ["7321815"] = self.OnSubStart7321815,
        ["7321816"] = self.OnSubStart7321816,
        ["7321817"] = self.OnSubStart7321817,
        ["7321818"] = self.OnSubStart7321818
    }
end

function Quest73218:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7321801"] = self.OnSubFinish7321801,
        ["7321802"] = self.OnSubFinish7321802,
        ["7321803"] = self.OnSubFinish7321803,
        ["7321804"] = self.OnSubFinish7321804,
        ["7321805"] = self.OnSubFinish7321805,
        ["7321806"] = self.OnSubFinish7321806,
        ["7321807"] = self.OnSubFinish7321807,
        ["7321808"] = self.OnSubFinish7321808,
        ["7321809"] = self.OnSubFinish7321809,
        ["7321810"] = self.OnSubFinish7321810,
        ["7321811"] = self.OnSubFinish7321811,
        ["7321812"] = self.OnSubFinish7321812,
        ["7321813"] = self.OnSubFinish7321813,
        ["7321814"] = self.OnSubFinish7321814,
        ["7321815"] = self.OnSubFinish7321815,
        ["7321816"] = self.OnSubFinish7321816,
        ["7321817"] = self.OnSubFinish7321817,
        ["7321818"] = self.OnSubFinish7321818
    }
end

function Quest73218:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73218
