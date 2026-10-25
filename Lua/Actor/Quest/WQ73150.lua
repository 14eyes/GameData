require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73150 = class("Quest73150", QuestActorProxy)
Quest73150.defaultAlias = "Quest73150"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73150:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73150:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7315001"] = self.OnSubStart7315001, ["7315002"] = self.OnSubStart7315002}
end

function Quest73150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7315001"] = self.OnSubFinish7315001, ["7315002"] = self.OnSubFinish7315002}
end

function Quest73150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73150
