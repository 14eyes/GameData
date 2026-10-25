require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10014 = class("Quest10014", QuestActorProxy)
Quest10014.defaultAlias = "Quest10014"
local clientData
local this
local mainID
local actorAlias

function Quest10014:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest10014:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1001401"] = self.OnSubStart1001401}
end

function Quest10014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1001401"] = self.OnSubFinish1001401}
end

function Quest10014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest10014:Start()
    print("Start")
end

function Quest10014:OnDestroy()
    print("OnDestroy")
end

function Quest10014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10014:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest10014:OnSubStart1001401(arg1)
    print("OnSubStart1001401")
end

function Quest10014:OnSubFinish1001401(arg1)
    print("OnSubFinish1001401")
end

return Quest10014
