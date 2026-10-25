require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73198 = class("Quest73198", QuestActorProxy)
Quest73198.defaultAlias = "Quest73198"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73198:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73198:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7319801"] = self.OnSubStart7319801}
end

function Quest73198:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7319801"] = self.OnSubFinish7319801}
end

function Quest73198:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73198
