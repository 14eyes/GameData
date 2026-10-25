require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14800 = class("Quest14800", QuestActorProxy)
Quest14800.defaultAlias = "Quest14800"
local clientData
local this
local mainID
local actorAlias

function Quest14800:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest14800:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1480001"] = self.OnSubStart1480001}
end

function Quest14800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1480001"] = self.OnSubFinish1480001}
end

function Quest14800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14800:Start()
    print("Start")
end

function Quest14800:OnDestroy()
    print("OnDestroy")
end

function Quest14800:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14800:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14800:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14800:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest14800:OnSubStart1480001(arg1)
    print("OnSubStart1480001")
end

function Quest14800:OnSubFinish1480001(arg1)
    print("OnSubFinish1480001")
end

return Quest14800
