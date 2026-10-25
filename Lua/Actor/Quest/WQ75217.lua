require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75217 = class("Quest75217", QuestActorProxy)
Quest75217.defaultAlias = "Quest75217"
local clientData
local this
local mainID
local actorAlias

function Quest75217:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75217:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7521701"] = self.OnSubStart7521701}
end

function Quest75217:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7521701"] = self.OnSubFinish7521701}
end

function Quest75217:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75217:Start()
    print("Start")
end

function Quest75217:OnDestroy()
    print("OnDestroy")
end

function Quest75217:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75217:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75217:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75217:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75217:OnSubStart7521701(arg1)
    print("OnSubStart7521701")
end

function Quest75217:OnSubFinish7521701(arg1)
    print("OnSubFinish7521701")
end

return Quest75217
