require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73271 = class("Quest73271", QuestActorProxy)
Quest73271.defaultAlias = "Quest73271"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73271:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73271:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7327101"] = self.OnSubStart7327101, ["7327102"] = self.OnSubStart7327102}
end

function Quest73271:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7327101"] = self.OnSubFinish7327101, ["7327102"] = self.OnSubFinish7327102}
end

function Quest73271:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73271
