require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75171 = class("Quest75171", QuestActorProxy)
Quest75171.defaultAlias = "Quest75171"
local clientData
local this
local mainID
local actorAlias

function Quest75171:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75171:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7517106"] = self.OnSubStart7517106,
        ["7517101"] = self.OnSubStart7517101,
        ["7517102"] = self.OnSubStart7517102,
        ["7517103"] = self.OnSubStart7517103,
        ["7517104"] = self.OnSubStart7517104,
        ["7517105"] = self.OnSubStart7517105
    }
end

function Quest75171:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7517106"] = self.OnSubFinish7517106,
        ["7517101"] = self.OnSubFinish7517101,
        ["7517102"] = self.OnSubFinish7517102,
        ["7517103"] = self.OnSubFinish7517103,
        ["7517104"] = self.OnSubFinish7517104,
        ["7517105"] = self.OnSubFinish7517105
    }
end

function Quest75171:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75171:OnSubStart7517106(arg1)
    print("OnSubStart7517106")
end

function Quest75171:OnSubFinish7517106(arg1)
    print("OnSubFinish7517106")
    this:CallDelay(0.5, function(arg1)
        this:SetNavigationByMainId(75171, true)
    end)
end

function Quest75171:OnSubStart7517101(arg1)
    print("OnSubStart7517101")
end

function Quest75171:OnSubFinish7517101(arg1)
    print("OnSubFinish7517101")
    this:SetNavigationByMainId(75171, true)
end

function Quest75171:OnSubStart7517102(arg1)
    print("OnSubStart7517102")
end

function Quest75171:OnSubFinish7517102(arg1)
    print("OnSubFinish7517102")
end

function Quest75171:OnSubStart7517103(arg1)
    print("OnSubStart7517103")
end

function Quest75171:OnSubFinish7517103(arg1)
    print("OnSubFinish7517103")
end

function Quest75171:OnSubStart7517104(arg1)
    print("OnSubStart7517104")
end

function Quest75171:OnSubFinish7517104(arg1)
    print("OnSubFinish7517104")
end

function Quest75171:OnSubStart7517105(arg1)
    print("OnSubStart7517105")
end

function Quest75171:OnSubFinish7517105(arg1)
    print("OnSubFinish7517105")
    this:SetNavigationByMainId(75136, true)
end

return Quest75171
