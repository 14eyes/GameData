require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72726 = class("Quest72726", QuestActorProxy)
Quest72726.defaultAlias = "Quest72726"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72726:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72726:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7272601"] = self.OnSubStart7272601}
end

function Quest72726:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7272601"] = self.OnSubFinish7272601}
end

function Quest72726:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest72726
