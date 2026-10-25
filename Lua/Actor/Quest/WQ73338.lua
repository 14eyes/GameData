require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73338 = class("Quest73338", QuestActorProxy)
Quest73338.defaultAlias = "Quest73338"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73338:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73338:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7333801"] = self.OnSubStart7333801, ["7333802"] = self.OnSubStart7333802}
end

function Quest73338:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7333801"] = self.OnSubFinish7333801, ["7333802"] = self.OnSubFinish7333802}
end

function Quest73338:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73338
