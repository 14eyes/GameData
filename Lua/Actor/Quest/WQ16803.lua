require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16803 = class("Quest16803", QuestActorProxy)
Quest16803.defaultAlias = "Quest16803"
local clientData
local this
local mainID
local actorAlias

function Quest16803:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16803:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1680301"] = self.OnSubStart1680301}
end

function Quest16803:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1680301"] = self.OnSubFinish1680301}
end

function Quest16803:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16803:Start()
    print("Start")
end

function Quest16803:OnDestroy()
    print("OnDestroy")
end

function Quest16803:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16803:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16803:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16803:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16803:OnSubStart1680301(arg1)
    print("OnSubStart1680301")
end

function Quest16803:OnSubFinish1680301(arg1)
    print("OnSubFinish1680301")
end

return Quest16803
