require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72673 = class("Quest72673", QuestActorProxy)
Quest72673.defaultAlias = "Quest72673"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72673:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72673:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7267301"] = self.OnSubStart7267301}
end

function Quest72673:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7267301"] = self.OnSubFinish7267301}
end

function Quest72673:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7267301"] = self.OnSubFailed7267301}
end

return Quest72673
