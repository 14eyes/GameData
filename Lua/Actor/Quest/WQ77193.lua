require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77193 = class("Quest77193", QuestActorProxy)
Quest77193.defaultAlias = "Quest77193"
local clientData
local this
local mainID
local actorAlias

function Quest77193:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77193:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest77193:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest77193:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77193:Start()
    print("Start")
end

function Quest77193:OnDestroy()
    print("OnDestroy")
end

function Quest77193:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77193:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77193:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77193:OnMainPaused(arg1)
    print("OnMainPaused")
end

return Quest77193
