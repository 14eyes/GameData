require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73153 = class("Quest73153", QuestActorProxy)
Quest73153.defaultAlias = "Quest73153"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73153:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73153:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7315301"] = self.OnSubStart7315301, ["7315302"] = self.OnSubStart7315302}
end

function Quest73153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7315301"] = self.OnSubFinish7315301, ["7315302"] = self.OnSubFinish7315302}
end

function Quest73153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73153
