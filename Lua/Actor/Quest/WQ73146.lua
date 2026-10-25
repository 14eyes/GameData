require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73146 = class("Quest73146", QuestActorProxy)
Quest73146.defaultAlias = "Quest73146"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73146:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73146:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7314601"] = self.OnSubStart7314601, ["7314602"] = self.OnSubStart7314602}
end

function Quest73146:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7314601"] = self.OnSubFinish7314601, ["7314602"] = self.OnSubFinish7314602}
end

function Quest73146:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73146
