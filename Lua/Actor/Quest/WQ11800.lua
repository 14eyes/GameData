require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11800 = class("Quest11800", QuestActorProxy)
Quest11800.defaultAlias = "Quest11800"
local clientData
local this
local mainID
local actorAlias

function Quest11800:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest11800:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1180001"] = self.OnSubStart1180001}
end

function Quest11800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1180001"] = self.OnSubFinish1180001}
end

function Quest11800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest11800:OnSubStart1180001(arg1)
    print("OnSubStart1180001")
end

function Quest11800:OnSubFinish1180001(arg1)
    print("OnSubFinish1180001")
end

return Quest11800
