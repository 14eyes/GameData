require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73336 = class("Quest73336", QuestActorProxy)
Quest73336.defaultAlias = "Quest73336"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73336:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73336:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7333601"] = self.OnSubStart7333601}
end

function Quest73336:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7333601"] = self.OnSubFinish7333601}
end

function Quest73336:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73336
