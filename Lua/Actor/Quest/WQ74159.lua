require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74159 = class("Quest74159", QuestActorProxy)
Quest74159.defaultAlias = "Quest74159"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74159:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74159:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7415901"] = self.OnSubStart7415901,
        ["7415902"] = self.OnSubStart7415902,
        ["7415903"] = self.OnSubStart7415903,
        ["7415904"] = self.OnSubStart7415904
    }
end

function Quest74159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7415901"] = self.OnSubFinish7415901,
        ["7415902"] = self.OnSubFinish7415902,
        ["7415903"] = self.OnSubFinish7415903,
        ["7415904"] = self.OnSubFinish7415904
    }
end

function Quest74159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74159
