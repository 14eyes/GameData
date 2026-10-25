require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77120 = class("Quest77120", QuestActorProxy)
Quest77120.defaultAlias = "Quest77120"
local clientData
local this
local mainID
local actorAlias

function Quest77120:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77120:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest77120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest77120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77120:Start()
    print("Start")
end

function Quest77120:OnDestroy()
    print("OnDestroy")
end

function Quest77120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77120:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77120:OnMainPaused(arg1)
    print("OnMainPaused")
end

return Quest77120
