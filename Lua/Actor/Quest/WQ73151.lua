require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73151 = class("Quest73151", QuestActorProxy)
Quest73151.defaultAlias = "Quest73151"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73151:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73151:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7315101"] = self.OnSubStart7315101, ["7315102"] = self.OnSubStart7315102}
end

function Quest73151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7315101"] = self.OnSubFinish7315101, ["7315102"] = self.OnSubFinish7315102}
end

function Quest73151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73151
