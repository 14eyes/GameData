require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73149 = class("Quest73149", QuestActorProxy)
Quest73149.defaultAlias = "Quest73149"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73149:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73149:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7314901"] = self.OnSubStart7314901, ["7314902"] = self.OnSubStart7314902}
end

function Quest73149:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7314901"] = self.OnSubFinish7314901, ["7314902"] = self.OnSubFinish7314902}
end

function Quest73149:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73149
