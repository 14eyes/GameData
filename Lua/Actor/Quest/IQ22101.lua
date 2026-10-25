require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22101 = class("Quest22101", QuestActorProxy)
Quest22101.defaultAlias = "Quest22101"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22101:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22101:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2210101"] = self.OnSubStart2210101,
        ["2210102"] = self.OnSubStart2210102,
        ["2210103"] = self.OnSubStart2210103
    }
end

function Quest22101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2210101"] = self.OnSubFinish2210101,
        ["2210102"] = self.OnSubFinish2210102,
        ["2210103"] = self.OnSubFinish2210103
    }
end

function Quest22101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2210101"] = self.OnSubFailed2210101,
        ["2210102"] = self.OnSubFailed2210102,
        ["2210103"] = self.OnSubFailed2210103
    }
end

function Quest22101:Start()
    print("Start")
end

function Quest22101:OnDestroy()
    print("OnDestroy")
end

function Quest22101:OnSubStart2210101(arg1)
    print("OnSubStart2210101")
end

function Quest22101:OnSubFinish2210101(arg1)
    print("OnSubFinish2210101")
end

function Quest22101:OnSubFailed2210101(arg1)
    print("OnSubFailed2210101")
end

function Quest22101:OnSubStart2210102(arg1)
    print("OnSubStart2210102")
end

function Quest22101:OnSubFinish2210102(arg1)
    print("OnSubFinish2210102")
end

function Quest22101:OnSubFailed2210102(arg1)
    print("OnSubFailed2210102")
end

function Quest22101:OnSubStart2210103(arg1)
    print("OnSubStart2210103")
end

function Quest22101:OnSubFinish2210103(arg1)
    print("OnSubFinish2210103")
end

function Quest22101:OnSubFailed2210103(arg1)
    print("OnSubFailed2210103")
end

return Quest22101
