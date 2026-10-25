require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73300 = class("Quest73300", QuestActorProxy)
Quest73300.defaultAlias = "Quest73300"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73300:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73300:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7330001"] = self.OnSubStart7330001}
end

function Quest73300:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7330001"] = self.OnSubFinish7330001}
end

function Quest73300:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73300
