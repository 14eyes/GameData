require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16012 = class("Quest16012", QuestActorProxy)
Quest16012.defaultAlias = "Quest16012"
local clientData
local this
local mainID
local actorAlias

function Quest16012:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1601201"] = self.OnSubStart1601201,
        ["1601202"] = self.OnSubStart1601202,
        ["1601203"] = self.OnSubStart1601203
    }
end

function Quest16012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1601201"] = self.OnSubFinish1601201,
        ["1601202"] = self.OnSubFinish1601202,
        ["1601203"] = self.OnSubFinish1601203
    }
end

function Quest16012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16012:Start()
    print("Start")
end

function Quest16012:OnDestroy()
    print("OnDestroy")
end

function Quest16012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16012:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16012:OnSubStart1601201(arg1)
    print("OnSubStart1601201")
end

function Quest16012:OnSubFinish1601201(arg1)
    print("OnSubFinish1601201")
end

function Quest16012:OnSubStart1601202(arg1)
    print("OnSubStart1601202")
end

function Quest16012:OnSubFinish1601202(arg1)
    print("OnSubFinish1601202")
end

function Quest16012:OnSubStart1601203(arg1)
    print("OnSubStart1601203")
end

function Quest16012:OnSubFinish1601203(arg1)
    print("OnSubFinish1601203")
end

return Quest16012
