require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72681 = class("Quest72681", QuestActorProxy)
Quest72681.defaultAlias = "Quest72681"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72681:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72681:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7268101"] = self.OnSubStart7268101}
end

function Quest72681:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7268101"] = self.OnSubFinish7268101}
end

function Quest72681:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest72681
