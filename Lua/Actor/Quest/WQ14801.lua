require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14801 = class("Quest14801", QuestActorProxy)
Quest14801.defaultAlias = "Quest14801"
local clientData
local this
local mainID
local actorAlias

function Quest14801:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest14801:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1480101"] = self.OnSubStart1480101}
end

function Quest14801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1480101"] = self.OnSubFinish1480101}
end

function Quest14801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14801:Start()
    print("Start")
end

function Quest14801:OnDestroy()
    print("OnDestroy")
end

function Quest14801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14801:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14801:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest14801:OnSubStart1480101(arg1)
    print("OnSubStart1480101")
end

function Quest14801:OnSubFinish1480101(arg1)
    print("OnSubFinish1480101")
end

return Quest14801
