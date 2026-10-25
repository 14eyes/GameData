require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20066 = class("Quest20066", QuestActorProxy)
Quest20066.defaultAlias = "Quest20066"
local clientData
local mainID
local actorAlias
local subIDs

function Quest20066:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest20066:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2006601"] = self.OnSubStart2006601,
        ["2006602"] = self.OnSubStart2006602,
        ["2006603"] = self.OnSubStart2006603
    }
end

function Quest20066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2006601"] = self.OnSubFinish2006601,
        ["2006602"] = self.OnSubFinish2006602,
        ["2006603"] = self.OnSubFinish2006603
    }
end

function Quest20066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2006601"] = self.OnSubFailed2006601,
        ["2006602"] = self.OnSubFailed2006602,
        ["2006603"] = self.OnSubFailed2006603
    }
end

function Quest20066:Start()
    print("Start")
end

function Quest20066:OnDestroy()
    print("OnDestroy")
end

function Quest20066:OnSubStart2006601(arg1)
    print("OnSubStart2006601")
end

function Quest20066:OnSubFinish2006601(arg1)
    print("OnSubFinish2006601")
end

function Quest20066:OnSubFailed2006601(arg1)
    print("OnSubFailed2006601")
end

function Quest20066:OnSubStart2006602(arg1)
    print("OnSubStart2006602")
end

function Quest20066:OnSubFinish2006602(arg1)
    print("OnSubFinish2006602")
end

function Quest20066:OnSubFailed2006602(arg1)
    print("OnSubFailed2006602")
end

function Quest20066:OnSubStart2006603(arg1)
    print("OnSubStart2006603")
end

function Quest20066:OnSubFinish2006603(arg1)
    print("OnSubFinish2006603")
end

function Quest20066:OnSubFailed2006603(arg1)
    print("OnSubFailed2006603")
end

return Quest20066
