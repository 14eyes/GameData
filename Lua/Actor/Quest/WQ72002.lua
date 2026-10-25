require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72002 = class("Quest72002", QuestActorProxy)
Quest72002.defaultAlias = "Quest72002"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72002:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7200201"] = self.OnSubStart7200201}
end

function Quest72002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7200201"] = self.OnSubFinish7200201}
end

function Quest72002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest72002
