require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70091 = class("Quest70091", QuestActorProxy)
Quest70091.defaultAlias = "Quest70091"
local clientData
local this
local mainID
local actorAlias

function Quest70091:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70091:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest70091:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest70091:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70091:Start()
    print("Start")
end

function Quest70091:OnDestroy()
    print("OnDestroy")
end

function Quest70091:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70091:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70091:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70091:OnMainPaused(arg1)
    print("OnMainPaused")
end

return Quest70091
