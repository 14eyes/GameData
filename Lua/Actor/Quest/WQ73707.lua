require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73707 = class("Quest73707", QuestActorProxy)
Quest73707.defaultAlias = "Quest73707"
local clientData
local this
local mainID
local actorAlias

function Quest73707:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest73707:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7370701"] = self.OnSubStart7370701}
end

function Quest73707:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7370701"] = self.OnSubFinish7370701}
end

function Quest73707:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73707:Start()
    print("Start")
end

function Quest73707:OnDestroy()
    print("OnDestroy")
end

function Quest73707:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73707:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73707:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73707:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest73707:OnSubStart7370701(arg1)
    print("OnSubStart7370701")
end

function Quest73707:OnSubFinish7370701(arg1)
    print("OnSubFinish7370701")
end

return Quest73707
