require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22100 = class("Quest22100", QuestActorProxy)
Quest22100.defaultAlias = "Quest22100"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22100:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22100:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2210001"] = self.OnSubStart2210001,
        ["2210002"] = self.OnSubStart2210002,
        ["2210003"] = self.OnSubStart2210003
    }
end

function Quest22100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2210001"] = self.OnSubFinish2210001,
        ["2210002"] = self.OnSubFinish2210002,
        ["2210003"] = self.OnSubFinish2210003
    }
end

function Quest22100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2210001"] = self.OnSubFailed2210001,
        ["2210002"] = self.OnSubFailed2210002,
        ["2210003"] = self.OnSubFailed2210003
    }
end

function Quest22100:Start()
    print("Start")
end

function Quest22100:OnDestroy()
    print("OnDestroy")
end

function Quest22100:OnSubStart2210001(arg1)
    print("OnSubStart2210001")
end

function Quest22100:OnSubFinish2210001(arg1)
    print("OnSubFinish2210001")
end

function Quest22100:OnSubFailed2210001(arg1)
    print("OnSubFailed2210001")
end

function Quest22100:OnSubStart2210002(arg1)
    print("OnSubStart2210002")
end

function Quest22100:OnSubFinish2210002(arg1)
    print("OnSubFinish2210002")
end

function Quest22100:OnSubFailed2210002(arg1)
    print("OnSubFailed2210002")
end

function Quest22100:OnSubStart2210003(arg1)
    print("OnSubStart2210003")
end

function Quest22100:OnSubFinish2210003(arg1)
    print("OnSubFinish2210003")
end

function Quest22100:OnSubFailed2210003(arg1)
    print("OnSubFailed2210003")
end

return Quest22100
