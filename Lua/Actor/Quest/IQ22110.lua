require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22110 = class("Quest22110", QuestActorProxy)
Quest22110.defaultAlias = "Quest22110"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22110:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22110:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2211001"] = self.OnSubStart2211001,
        ["2211002"] = self.OnSubStart2211002,
        ["2211003"] = self.OnSubStart2211003
    }
end

function Quest22110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2211001"] = self.OnSubFinish2211001,
        ["2211002"] = self.OnSubFinish2211002,
        ["2211003"] = self.OnSubFinish2211003
    }
end

function Quest22110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2211001"] = self.OnSubFailed2211001,
        ["2211002"] = self.OnSubFailed2211002,
        ["2211003"] = self.OnSubFailed2211003
    }
end

function Quest22110:Start()
    print("Start")
end

function Quest22110:OnDestroy()
    print("OnDestroy")
end

function Quest22110:OnSubStart2211001(arg1)
    print("OnSubStart2211001")
end

function Quest22110:OnSubFinish2211001(arg1)
    print("OnSubFinish2211001")
end

function Quest22110:OnSubFailed2211001(arg1)
    print("OnSubFailed2211001")
end

function Quest22110:OnSubStart2211002(arg1)
    print("OnSubStart2211002")
end

function Quest22110:OnSubFinish2211002(arg1)
    print("OnSubFinish2211002")
end

function Quest22110:OnSubFailed2211002(arg1)
    print("OnSubFailed2211002")
end

function Quest22110:OnSubStart2211003(arg1)
    print("OnSubStart2211003")
end

function Quest22110:OnSubFinish2211003(arg1)
    print("OnSubFinish2211003")
end

function Quest22110:OnSubFailed2211003(arg1)
    print("OnSubFailed2211003")
end

return Quest22110
