require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76111 = class("Quest76111", QuestActorProxy)
Quest76111.defaultAlias = "Quest76111"
local clientData
local this
local mainID
local actorAlias

function Quest76111:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76111:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest76111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest76111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76111:Start()
    print("Start")
end

function Quest76111:OnDestroy()
    print("OnDestroy")
end

function Quest76111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76111:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76111:OnMainPaused(arg1)
    print("OnMainPaused")
end

return Quest76111
