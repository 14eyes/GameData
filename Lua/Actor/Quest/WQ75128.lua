require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75128 = class("Quest75128", QuestActorProxy)
Quest75128.defaultAlias = "Quest75128"
local clientData
local this
local mainID
local actorAlias

function Quest75128:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75128:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7512801"] = self.OnSubStart7512801}
end

function Quest75128:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7512801"] = self.OnSubFinish7512801}
end

function Quest75128:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75128:OnSubStart7512801(arg1)
    print("OnSubStart7512801")
end

function Quest75128:OnSubFinish7512801(arg1)
    print("OnSubFinish7512801")
end

return Quest75128
