require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70048 = class("Quest70048", QuestActorProxy)
Quest70048.defaultAlias = "Quest70048"
local clientData
local this
local mainID
local actorAlias

function Quest70048:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70048:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7004801"] = self.OnSubStart7004801}
end

function Quest70048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7004801"] = self.OnSubFinish7004801}
end

function Quest70048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70048:Start()
    print("Start")
end

function Quest70048:OnDestroy()
    print("OnDestroy")
end

function Quest70048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70048:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70048:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70048:OnSubStart7004801(arg1)
    print("OnSubStart7004801")
end

function Quest70048:OnSubFinish7004801(arg1)
    print("OnSubFinish7004801")
end

return Quest70048
