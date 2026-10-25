require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75186 = class("Quest75186", QuestActorProxy)
Quest75186.defaultAlias = "Quest75186"
local clientData
local this
local mainID
local actorAlias

function Quest75186:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75186:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75186:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75186:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75186:Start()
    print("Start")
end

function Quest75186:OnDestroy()
    print("OnDestroy")
end

function Quest75186:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75186:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75186:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75186:OnMainPaused(arg1)
    print("OnMainPaused")
end

return Quest75186
