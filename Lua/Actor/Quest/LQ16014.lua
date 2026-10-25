require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16014 = class("Quest16014", QuestActorProxy)
Quest16014.defaultAlias = "Quest16014"
local clientData
local this
local mainID
local actorAlias

function Quest16014:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1601401"] = self.OnSubStart1601401,
        ["1601402"] = self.OnSubStart1601402,
        ["1601403"] = self.OnSubStart1601403
    }
end

function Quest16014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1601401"] = self.OnSubFinish1601401,
        ["1601402"] = self.OnSubFinish1601402,
        ["1601403"] = self.OnSubFinish1601403
    }
end

function Quest16014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16014:Start()
    print("Start")
end

function Quest16014:OnDestroy()
    print("OnDestroy")
end

function Quest16014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16014:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16014:OnSubStart1601401(arg1)
    print("OnSubStart1601401")
end

function Quest16014:OnSubFinish1601401(arg1)
    print("OnSubFinish1601401")
end

function Quest16014:OnSubStart1601402(arg1)
    print("OnSubStart1601402")
end

function Quest16014:OnSubFinish1601402(arg1)
    print("OnSubFinish1601402")
end

function Quest16014:OnSubStart1601403(arg1)
    print("OnSubStart1601403")
end

function Quest16014:OnSubFinish1601403(arg1)
    print("OnSubFinish1601403")
end

return Quest16014
