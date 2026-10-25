require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77900 = class("Quest77900", QuestActorProxy)
Quest77900.defaultAlias = "Quest77900"
local clientData
local this
local mainID
local actorAlias

function Quest77900:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77900:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790001"] = self.OnSubStart7790001}
end

function Quest77900:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790001"] = self.OnSubFinish7790001}
end

function Quest77900:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77900:Start()
    print("Start")
end

function Quest77900:OnDestroy()
    print("OnDestroy")
end

function Quest77900:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77900:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77900:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77900:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77900:OnSubStart7790001(arg1)
    print("OnSubStart7790001")
end

function Quest77900:OnSubFinish7790001(arg1)
    print("OnSubFinish7790001")
end

return Quest77900
