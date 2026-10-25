require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75117 = class("Quest75117", QuestActorProxy)
Quest75117.defaultAlias = "Quest75117"
local clientData
local this
local mainID
local actorAlias

function Quest75117:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75117:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7511701"] = self.OnSubStart7511701}
end

function Quest75117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7511701"] = self.OnSubFinish7511701}
end

function Quest75117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75117:OnSubStart7511701(arg1)
    print("OnSubStart7511701")
end

function Quest75117:OnSubFinish7511701(arg1)
    print("OnSubFinish7511701")
end

return Quest75117
