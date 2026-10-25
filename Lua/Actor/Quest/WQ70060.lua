require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70060 = class("Quest70060", QuestActorProxy)
Quest70060.defaultAlias = "Quest70060"
local clientData
local this
local mainID
local actorAlias

function Quest70060:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70060:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7006001"] = self.OnSubStart7006001}
end

function Quest70060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7006001"] = self.OnSubFinish7006001}
end

function Quest70060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70060:Start()
    print("Start")
end

function Quest70060:OnDestroy()
    print("OnDestroy")
end

function Quest70060:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70060:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70060:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70060:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70060:OnSubStart7006001(arg1)
    print("OnSubStart7006001")
end

function Quest70060:OnSubFinish7006001(arg1)
    print("OnSubFinish7006001")
end

return Quest70060
