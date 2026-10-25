require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75216 = class("Quest75216", QuestActorProxy)
Quest75216.defaultAlias = "Quest75216"
local clientData
local this
local mainID
local actorAlias

function Quest75216:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75216:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7521601"] = self.OnSubStart7521601}
end

function Quest75216:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7521601"] = self.OnSubFinish7521601}
end

function Quest75216:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75216:Start()
    print("Start")
end

function Quest75216:OnDestroy()
    print("OnDestroy")
end

function Quest75216:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75216:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75216:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75216:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75216:OnSubStart7521601(arg1)
    print("OnSubStart7521601")
end

function Quest75216:OnSubFinish7521601(arg1)
    print("OnSubFinish7521601")
end

return Quest75216
