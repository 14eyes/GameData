require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73156 = class("Quest73156", QuestActorProxy)
Quest73156.defaultAlias = "Quest73156"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73156:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73156:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7315601"] = self.OnSubStart7315601, ["7315602"] = self.OnSubStart7315602}
end

function Quest73156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7315601"] = self.OnSubFinish7315601, ["7315602"] = self.OnSubFinish7315602}
end

function Quest73156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73156
