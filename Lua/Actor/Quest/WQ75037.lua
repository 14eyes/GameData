require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75037 = class("Quest75037", QuestActorProxy)
Quest75037.defaultAlias = "Quest75037"
local clientData
local this
local mainID
local actorAlias

function Quest75037:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75037:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7503701"] = self.OnSubStart7503701}
end

function Quest75037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7503701"] = self.OnSubFinish7503701}
end

function Quest75037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7503701"] = self.OnSubFailed7503701}
end

function Quest75037:OnSubStart7503701(arg1)
    print("OnSubStart7503701")
end

function Quest75037:OnSubFinish7503701(arg1)
    print("OnSubFinish7503701")
end

function Quest75037:OnSubFailed7503701(arg1)
    print("OnSubFailed7503701")
end

return Quest75037
