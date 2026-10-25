require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73534 = class("Quest73534", QuestActorProxy)
Quest73534.defaultAlias = "Quest73534"
local clientData
local this
local mainID
local actorAlias

function Quest73534:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest73534:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7353401"] = self.OnSubStart7353401}
end

function Quest73534:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7353401"] = self.OnSubFinish7353401}
end

function Quest73534:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73534:Start()
    print("Start")
end

function Quest73534:OnDestroy()
    print("OnDestroy")
end

function Quest73534:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73534:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73534:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73534:OnSubStart7353401(arg1)
    print("OnSubStart7353401")
end

function Quest73534:OnSubFinish7353401(arg1)
    print("OnSubFinish7353401")
end

return Quest73534
