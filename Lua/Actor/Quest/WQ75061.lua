require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75061 = class("Quest75061", QuestActorProxy)
Quest75061.defaultAlias = "Quest75061"
local clientData
local this
local mainID
local actorAlias

function Quest75061:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7506103"] = self.OnSubStart7506103,
        ["7506104"] = self.OnSubStart7506104,
        ["7506105"] = self.OnSubStart7506105,
        ["7506102"] = self.OnSubStart7506102,
        ["7506101"] = self.OnSubStart7506101
    }
end

function Quest75061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7506103"] = self.OnSubFinish7506103,
        ["7506104"] = self.OnSubFinish7506104,
        ["7506105"] = self.OnSubFinish7506105,
        ["7506102"] = self.OnSubFinish7506102,
        ["7506101"] = self.OnSubFinish7506101
    }
end

function Quest75061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75061:OnSubStart7506103(arg1)
    print("OnSubStart7506103")
end

function Quest75061:OnSubFinish7506103(arg1)
    print("OnSubFinish7506103")
end

function Quest75061:OnSubStart7506104(arg1)
    print("OnSubStart7506104")
end

function Quest75061:OnSubFinish7506104(arg1)
    print("OnSubFinish7506104")
end

function Quest75061:OnSubStart7506105(arg1)
    print("OnSubStart7506105")
end

function Quest75061:OnSubFinish7506105(arg1)
    print("OnSubFinish7506105")
end

function Quest75061:OnSubStart7506102(arg1)
    print("OnSubStart7506102")
    this:CreateQuestNpcWithTrigger("", 0, 0, 0, 0, 2)
end

function Quest75061:OnSubFinish7506102(arg1)
    print("OnSubFinish7506102")
end

function Quest75061:OnSubStart7506101(arg1)
    print("OnSubStart7506101")
end

function Quest75061:OnSubFinish7506101(arg1)
    print("OnSubFinish7506101")
end

return Quest75061
