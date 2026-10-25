require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71056 = class("Quest71056", QuestActorProxy)
Quest71056.defaultAlias = "Quest71056"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71056:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71056:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7105601"] = self.OnSubStart7105601,
        ["7105602"] = self.OnSubStart7105602,
        ["7105603"] = self.OnSubStart7105603
    }
end

function Quest71056:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7105601"] = self.OnSubFinish7105601,
        ["7105602"] = self.OnSubFinish7105602,
        ["7105603"] = self.OnSubFinish7105603
    }
end

function Quest71056:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71056
