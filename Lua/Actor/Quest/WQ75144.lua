require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75144 = class("Quest75144", QuestActorProxy)
Quest75144.defaultAlias = "Quest75144"
local clientData
local this
local mainID
local actorAlias

function Quest75144:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75144:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7514401"] = self.OnSubStart7514401}
end

function Quest75144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7514401"] = self.OnSubFinish7514401}
end

function Quest75144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75144:Start()
    print("Start")
end

function Quest75144:OnDestroy()
    print("OnDestroy")
end

function Quest75144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75144:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75144:OnSubStart7514401(arg1)
    print("OnSubStart7514401")
end

function Quest75144:OnSubFinish7514401(arg1)
    print("OnSubFinish7514401")
end

return Quest75144
