require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70807 = class("Quest70807", QuestActorProxy)
Quest70807.defaultAlias = "Quest70807"
local clientData
local this
local mainID
local actorAlias

function Quest70807:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70807:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7080701"] = self.OnSubStart7080701}
end

function Quest70807:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7080701"] = self.OnSubFinish7080701}
end

function Quest70807:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70807:Start()
    print("Start")
end

function Quest70807:OnDestroy()
    print("OnDestroy")
end

function Quest70807:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70807:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70807:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70807:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70807:OnSubStart7080701(arg1)
    print("OnSubStart7080701")
end

function Quest70807:OnSubFinish7080701(arg1)
    print("OnSubFinish7080701")
end

return Quest70807
