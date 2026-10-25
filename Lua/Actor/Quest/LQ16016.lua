require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16016 = class("Quest16016", QuestActorProxy)
Quest16016.defaultAlias = "Quest16016"
local clientData
local this
local mainID
local actorAlias

function Quest16016:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16016:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1601601"] = self.OnSubStart1601601}
end

function Quest16016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1601601"] = self.OnSubFinish1601601}
end

function Quest16016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16016:Start()
    print("Start")
end

function Quest16016:OnDestroy()
    print("OnDestroy")
end

function Quest16016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16016:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16016:OnSubStart1601601(arg1)
    print("OnSubStart1601601")
end

function Quest16016:OnSubFinish1601601(arg1)
    print("OnSubFinish1601601")
end

return Quest16016
