require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73154 = class("Quest73154", QuestActorProxy)
Quest73154.defaultAlias = "Quest73154"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73154:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73154:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7315401"] = self.OnSubStart7315401, ["7315402"] = self.OnSubStart7315402}
end

function Quest73154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7315401"] = self.OnSubFinish7315401, ["7315402"] = self.OnSubFinish7315402}
end

function Quest73154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73154
