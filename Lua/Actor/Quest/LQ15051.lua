require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15051 = class("Quest15051", QuestActorProxy)
Quest15051.defaultAlias = "Quest15051"
local clientData
local this
local mainID
local actorAlias

function Quest15051:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest15051:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1505101"] = self.OnSubStart1505101}
end

function Quest15051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1505101"] = self.OnSubFinish1505101}
end

function Quest15051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15051:Start()
    print("Start")
end

function Quest15051:OnDestroy()
    print("OnDestroy")
end

function Quest15051:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15051:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15051:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15051:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest15051:OnSubStart1505101(arg1)
    print("OnSubStart1505101")
end

function Quest15051:OnSubFinish1505101(arg1)
    print("OnSubFinish1505101")
end

return Quest15051
