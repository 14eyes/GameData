require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73152 = class("Quest73152", QuestActorProxy)
Quest73152.defaultAlias = "Quest73152"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73152:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73152:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7315201"] = self.OnSubStart7315201, ["7315202"] = self.OnSubStart7315202}
end

function Quest73152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7315201"] = self.OnSubFinish7315201, ["7315202"] = self.OnSubFinish7315202}
end

function Quest73152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73152
