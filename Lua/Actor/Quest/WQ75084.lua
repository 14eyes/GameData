require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75084 = class("Quest75084", QuestActorProxy)
Quest75084.defaultAlias = "Quest75084"
local clientData
local this
local mainID
local actorAlias

function Quest75084:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75084:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7508401"] = self.OnSubStart7508401}
end

function Quest75084:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7508401"] = self.OnSubFinish7508401}
end

function Quest75084:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75084:OnSubStart7508401(arg1)
    print("OnSubStart7508401")
end

function Quest75084:OnSubFinish7508401(arg1)
    print("OnSubFinish7508401")
end

return Quest75084
