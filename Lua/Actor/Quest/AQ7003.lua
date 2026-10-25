require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7003 = class("Quest7003", QuestActorProxy)
Quest7003.defaultAlias = "Quest7003"
local clientData
local this
local mainID
local actorAlias

function Quest7003:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest7003:OnSubStartHandlerBuild()
    self.subStartHandlers = {["700301"] = self.OnSubStart700301}
end

function Quest7003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["700301"] = self.OnSubFinish700301}
end

function Quest7003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest7003:Start()
    print("Start")
end

function Quest7003:OnDestroy()
    print("OnDestroy")
end

function Quest7003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7003:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest7003:OnSubStart700301(arg1)
    print("OnSubStart700301")
end

function Quest7003:OnSubFinish700301(arg1)
    print("OnSubFinish700301")
end

return Quest7003
