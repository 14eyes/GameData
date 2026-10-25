require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13016 = class("Quest13016", QuestActorProxy)
Quest13016.defaultAlias = "Quest13016"
local clientData
local mainID
local actorAlias
local subIDs

function Quest13016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest13016:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1301601"] = self.OnSubStart1301601, ["1301602"] = self.OnSubStart1301602}
end

function Quest13016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1301601"] = self.OnSubFinish1301601, ["1301602"] = self.OnSubFinish1301602}
end

function Quest13016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest13016
