require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75667 = class("Quest75667", QuestActorProxy)
Quest75667.defaultAlias = "Quest75667"
local clientData
local this
local mainID
local actorAlias

function Quest75667:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75667:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566701"] = self.OnSubStart7566701}
end

function Quest75667:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566701"] = self.OnSubFinish7566701}
end

function Quest75667:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75667:Start()
    print("Start")
end

function Quest75667:OnDestroy()
    print("OnDestroy")
end

function Quest75667:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75667:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75667:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75667:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75667:OnSubStart7566701(arg1)
    print("OnSubStart7566701")
end

function Quest75667:OnSubFinish7566701(arg1)
    print("OnSubFinish7566701")
end

return Quest75667
