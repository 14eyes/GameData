require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77108 = class("Quest77108", QuestActorProxy)
Quest77108.defaultAlias = "Quest77108"
local clientData
local this
local mainID
local actorAlias

function Quest77108:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77108:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest77108:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest77108:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77108:Start()
    print("Start")
end

function Quest77108:OnDestroy()
    print("OnDestroy")
end

function Quest77108:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77108:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77108:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77108:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

return Quest77108
