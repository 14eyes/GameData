require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73145 = class("Quest73145", QuestActorProxy)
Quest73145.defaultAlias = "Quest73145"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73145:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73145:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7314501"] = self.OnSubStart7314501, ["7314502"] = self.OnSubStart7314502}
end

function Quest73145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7314501"] = self.OnSubFinish7314501, ["7314502"] = self.OnSubFinish7314502}
end

function Quest73145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73145
