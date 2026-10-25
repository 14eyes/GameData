require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76108 = class("Quest76108", QuestActorProxy)
Quest76108.defaultAlias = "Quest76108"
local clientData
local this
local mainID
local actorAlias

function Quest76108:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76108:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest76108:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest76108:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76108:Start()
    print("Start")
end

function Quest76108:OnDestroy()
    print("OnDestroy")
end

function Quest76108:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76108:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76108:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76108:OnMainPaused(arg1)
    print("OnMainPaused")
end

return Quest76108
