require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73148 = class("Quest73148", QuestActorProxy)
Quest73148.defaultAlias = "Quest73148"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73148:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73148:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7314801"] = self.OnSubStart7314801, ["7314802"] = self.OnSubStart7314802}
end

function Quest73148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7314801"] = self.OnSubFinish7314801, ["7314802"] = self.OnSubFinish7314802}
end

function Quest73148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73148
