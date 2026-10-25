require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20044 = class("Quest20044", QuestActorProxy)
Quest20044.defaultAlias = "Quest20044"
local clientData
local mainID
local actorAlias
local subIDs

function Quest20044:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest20044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2004401"] = self.OnSubStart2004401,
        ["2004402"] = self.OnSubStart2004402,
        ["2004403"] = self.OnSubStart2004403
    }
end

function Quest20044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2004401"] = self.OnSubFinish2004401,
        ["2004402"] = self.OnSubFinish2004402,
        ["2004403"] = self.OnSubFinish2004403
    }
end

function Quest20044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2004401"] = self.OnSubFailed2004401,
        ["2004402"] = self.OnSubFailed2004402,
        ["2004403"] = self.OnSubFailed2004403
    }
end

function Quest20044:Start()
    print("Start")
end

function Quest20044:OnDestroy()
    print("OnDestroy")
end

function Quest20044:onMainFinished(arg1)
    print("onMainFinished")
end

function Quest20044:onMainFailed(arg1)
    print("onMainFailed")
end

function Quest20044:onMainCanceled(arg1)
    print("onMainCanceled")
end

function Quest20044:OnSubStart2004401(arg1)
    print("OnSubStart2004401")
end

function Quest20044:OnSubFinish2004401(arg1)
    print("OnSubFinish2004401")
end

function Quest20044:OnSubFailed2004401(arg1)
    print("OnSubFailed2004401")
end

function Quest20044:OnSubStart2004402(arg1)
    print("OnSubStart2004402")
end

function Quest20044:OnSubFinish2004402(arg1)
    print("OnSubFinish2004402")
end

function Quest20044:OnSubFailed2004402(arg1)
    print("OnSubFailed2004402")
end

function Quest20044:OnSubStart2004403(arg1)
    print("OnSubStart2004403")
end

function Quest20044:OnSubFinish2004403(arg1)
    print("OnSubFinish2004403")
end

function Quest20044:OnSubFailed2004403(arg1)
    print("OnSubFailed2004403")
end

return Quest20044
