require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76088 = class("Quest76088", QuestActorProxy)
Quest76088.defaultAlias = "Quest76088"
local clientData
local this
local mainID
local actorAlias

function Quest76088:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76088:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest76088:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest76088:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76088:Start()
    print("Start")
end

function Quest76088:OnDestroy()
    print("OnDestroy")
end

function Quest76088:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76088:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76088:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76088:OnMainPaused(arg1)
    print("OnMainPaused")
end

return Quest76088
