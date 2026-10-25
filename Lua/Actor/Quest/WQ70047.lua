require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70047 = class("Quest70047", QuestActorProxy)
Quest70047.defaultAlias = "Quest70047"
local clientData
local this
local mainID
local actorAlias

function Quest70047:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70047:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7004701"] = self.OnSubStart7004701}
end

function Quest70047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7004701"] = self.OnSubFinish7004701}
end

function Quest70047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70047:Start()
    print("Start")
end

function Quest70047:OnDestroy()
    print("OnDestroy")
end

function Quest70047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70047:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70047:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70047:OnSubStart7004701(arg1)
    print("OnSubStart7004701")
end

function Quest70047:OnSubFinish7004701(arg1)
    print("OnSubFinish7004701")
end

return Quest70047
