require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71832 = class("Quest71832", QuestActorProxy)
Quest71832.defaultAlias = "Quest71832"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71832:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71832:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7183201"] = self.OnSubStart7183201}
end

function Quest71832:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7183201"] = self.OnSubFinish7183201}
end

function Quest71832:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71832
