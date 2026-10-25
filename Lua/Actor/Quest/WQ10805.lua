require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10805 = class("Quest10805", QuestActorProxy)
Quest10805.defaultAlias = "Quest10805"
local clientData
local this
local mainID
local actorAlias

function Quest10805:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest10805:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1080501"] = self.OnSubStart1080501}
end

function Quest10805:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1080501"] = self.OnSubFinish1080501}
end

function Quest10805:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest10805:OnSubStart1080501(arg1)
    print("OnSubStart1080501")
end

function Quest10805:OnSubFinish1080501(arg1)
    print("OnSubFinish1080501")
end

return Quest10805
