require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73199 = class("Quest73199", QuestActorProxy)
Quest73199.defaultAlias = "Quest73199"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73199:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73199:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7319901"] = self.OnSubStart7319901}
end

function Quest73199:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7319901"] = self.OnSubFinish7319901}
end

function Quest73199:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73199
