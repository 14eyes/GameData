require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22102 = class("Quest22102", QuestActorProxy)
Quest22102.defaultAlias = "Quest22102"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22102:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22102:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2210201"] = self.OnSubStart2210201,
        ["2210202"] = self.OnSubStart2210202,
        ["2210203"] = self.OnSubStart2210203
    }
end

function Quest22102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2210201"] = self.OnSubFinish2210201,
        ["2210202"] = self.OnSubFinish2210202,
        ["2210203"] = self.OnSubFinish2210203
    }
end

function Quest22102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2210201"] = self.OnSubFailed2210201,
        ["2210202"] = self.OnSubFailed2210202,
        ["2210203"] = self.OnSubFailed2210203
    }
end

function Quest22102:Start()
    print("Start")
end

function Quest22102:OnDestroy()
    print("OnDestroy")
end

function Quest22102:OnSubStart2210201(arg1)
    print("OnSubStart2210201")
end

function Quest22102:OnSubFinish2210201(arg1)
    print("OnSubFinish2210201")
end

function Quest22102:OnSubFailed2210201(arg1)
    print("OnSubFailed2210201")
end

function Quest22102:OnSubStart2210202(arg1)
    print("OnSubStart2210202")
end

function Quest22102:OnSubFinish2210202(arg1)
    print("OnSubFinish2210202")
end

function Quest22102:OnSubFailed2210202(arg1)
    print("OnSubFailed2210202")
end

function Quest22102:OnSubStart2210203(arg1)
    print("OnSubStart2210203")
end

function Quest22102:OnSubFinish2210203(arg1)
    print("OnSubFinish2210203")
end

function Quest22102:OnSubFailed2210203(arg1)
    print("OnSubFailed2210203")
end

return Quest22102
