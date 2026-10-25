require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75057 = class("Quest75057", QuestActorProxy)
Quest75057.defaultAlias = "Quest75057"
local clientData
local this
local mainID
local actorAlias

function Quest75057:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75057:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7505701"] = self.OnSubStart7505701, ["7505702"] = self.OnSubStart7505702}
end

function Quest75057:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7505701"] = self.OnSubFinish7505701, ["7505702"] = self.OnSubFinish7505702}
end

function Quest75057:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75057:OnSubStart7505701(arg1)
    print("OnSubStart7505701")
end

function Quest75057:OnSubFinish7505701(arg1)
    print("OnSubFinish7505701")
end

function Quest75057:OnSubStart7505702(arg1)
    print("OnSubStart7505702")
end

function Quest75057:OnSubFinish7505702(arg1)
    print("OnSubFinish7505702")
end

return Quest75057
