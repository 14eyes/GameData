require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73155 = class("Quest73155", QuestActorProxy)
Quest73155.defaultAlias = "Quest73155"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73155:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73155:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7315501"] = self.OnSubStart7315501, ["7315502"] = self.OnSubStart7315502}
end

function Quest73155:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7315501"] = self.OnSubFinish7315501, ["7315502"] = self.OnSubFinish7315502}
end

function Quest73155:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73155
