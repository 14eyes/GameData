require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5025 = class("Quest5025", QuestActorProxy)
Quest5025.defaultAlias = "Quest5025"
local clientData
local this
local mainID
local actorAlias

function Quest5025:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest5025:OnSubStartHandlerBuild()
    self.subStartHandlers = {["502501"] = self.OnSubStart502501}
end

function Quest5025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["502501"] = self.OnSubFinish502501}
end

function Quest5025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5025:OnSubStart502501(arg1)
    print("OnSubStart502501")
end

function Quest5025:OnSubFinish502501(arg1)
    print("OnSubFinish502501")
end

return Quest5025
