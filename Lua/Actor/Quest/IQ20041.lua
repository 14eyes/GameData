require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20041 = class("Quest20041", QuestActorProxy)
Quest20041.defaultAlias = "Quest20041"
local clientData
local mainID
local actorAlias
local subIDs

function Quest20041:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest20041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2004101"] = self.OnSubStart2004101,
        ["2004102"] = self.OnSubStart2004102,
        ["2004103"] = self.OnSubStart2004103
    }
end

function Quest20041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2004101"] = self.OnSubFinish2004101,
        ["2004102"] = self.OnSubFinish2004102,
        ["2004103"] = self.OnSubFinish2004103
    }
end

function Quest20041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2004101"] = self.OnSubFailed2004101,
        ["2004102"] = self.OnSubFailed2004102,
        ["2004103"] = self.OnSubFailed2004103
    }
end

function Quest20041:Start()
    print("Start")
end

function Quest20041:OnDestroy()
    print("OnDestroy")
end

function Quest20041:onMainFinished(arg1)
    print("onMainFinished")
end

function Quest20041:onMainFailed(arg1)
    print("onMainFailed")
end

function Quest20041:onMainCanceled(arg1)
    print("onMainCanceled")
end

function Quest20041:OnSubStart2004101(arg1)
    print("OnSubStart2004101")
end

function Quest20041:OnSubFinish2004101(arg1)
    print("OnSubFinish2004101")
end

function Quest20041:OnSubFailed2004101(arg1)
    print("OnSubFailed2004101")
end

function Quest20041:OnSubStart2004102(arg1)
    print("OnSubStart2004102")
end

function Quest20041:OnSubFinish2004102(arg1)
    print("OnSubFinish2004102")
end

function Quest20041:OnSubFailed2004102(arg1)
    print("OnSubFailed2004102")
end

function Quest20041:OnSubStart2004103(arg1)
    print("OnSubStart2004103")
end

function Quest20041:OnSubFinish2004103(arg1)
    print("OnSubFinish2004103")
end

function Quest20041:OnSubFailed2004103(arg1)
    print("OnSubFailed2004103")
end

return Quest20041
