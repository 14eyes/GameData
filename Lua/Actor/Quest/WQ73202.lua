require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73202 = class("Quest73202", QuestActorProxy)
Quest73202.defaultAlias = "Quest73202"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73202:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73202:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7320201"] = self.OnSubStart7320201}
end

function Quest73202:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7320201"] = self.OnSubFinish7320201}
end

function Quest73202:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73202
