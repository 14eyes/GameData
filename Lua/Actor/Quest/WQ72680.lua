require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72680 = class("Quest72680", QuestActorProxy)
Quest72680.defaultAlias = "Quest72680"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72680:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72680:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7268001"] = self.OnSubStart7268001}
end

function Quest72680:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7268001"] = self.OnSubFinish7268001}
end

function Quest72680:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest72680
