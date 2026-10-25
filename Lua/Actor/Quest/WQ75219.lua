require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75219 = class("Quest75219", QuestActorProxy)
Quest75219.defaultAlias = "Quest75219"
local clientData
local this
local mainID
local actorAlias

function Quest75219:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75219:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7521901"] = self.OnSubStart7521901}
end

function Quest75219:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7521901"] = self.OnSubFinish7521901}
end

function Quest75219:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75219:Start()
    print("Start")
end

function Quest75219:OnDestroy()
    print("OnDestroy")
end

function Quest75219:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75219:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75219:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75219:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75219:OnSubStart7521901(arg1)
    print("OnSubStart7521901")
end

function Quest75219:OnSubFinish7521901(arg1)
    print("OnSubFinish7521901")
end

return Quest75219
