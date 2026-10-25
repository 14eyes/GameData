require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16017 = class("Quest16017", QuestActorProxy)
Quest16017.defaultAlias = "Quest16017"
local clientData
local this
local mainID
local actorAlias

function Quest16017:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16017:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1601701"] = self.OnSubStart1601701}
end

function Quest16017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1601701"] = self.OnSubFinish1601701}
end

function Quest16017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16017:Start()
    print("Start")
end

function Quest16017:OnDestroy()
    print("OnDestroy")
end

function Quest16017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16017:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16017:OnSubStart1601701(arg1)
    print("OnSubStart1601701")
end

function Quest16017:OnSubFinish1601701(arg1)
    print("OnSubFinish1601701")
end

return Quest16017
