require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10804 = class("Quest10804", QuestActorProxy)
Quest10804.defaultAlias = "Quest10804"
local clientData
local this
local mainID
local actorAlias

function Quest10804:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest10804:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1080401"] = self.OnSubStart1080401}
end

function Quest10804:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1080401"] = self.OnSubFinish1080401}
end

function Quest10804:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest10804:OnSubStart1080401(arg1)
    print("OnSubStart1080401")
end

function Quest10804:OnSubFinish1080401(arg1)
    print("OnSubFinish1080401")
end

return Quest10804
