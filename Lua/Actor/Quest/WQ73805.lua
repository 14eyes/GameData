require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73805 = class("Quest73805", QuestActorProxy)
Quest73805.defaultAlias = "Quest73805"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73805:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73805:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7380501"] = self.OnSubStart7380501}
end

function Quest73805:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7380501"] = self.OnSubFinish7380501}
end

function Quest73805:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73805
