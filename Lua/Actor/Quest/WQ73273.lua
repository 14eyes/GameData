require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73273 = class("Quest73273", QuestActorProxy)
Quest73273.defaultAlias = "Quest73273"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73273:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73273:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7327301"] = self.OnSubStart7327301, ["7327302"] = self.OnSubStart7327302}
end

function Quest73273:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7327301"] = self.OnSubFinish7327301, ["7327302"] = self.OnSubFinish7327302}
end

function Quest73273:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73273
