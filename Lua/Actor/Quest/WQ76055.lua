require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76055 = class("Quest76055", QuestActorProxy)
Quest76055.defaultAlias = "Quest76055"
local clientData
local this
local mainID
local actorAlias

function Quest76055:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76055:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7605501"] = self.OnSubStart7605501}
end

function Quest76055:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7605501"] = self.OnSubFinish7605501}
end

function Quest76055:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76055:Start()
    print("Start")
end

function Quest76055:OnDestroy()
    print("OnDestroy")
end

function Quest76055:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76055:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76055:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76055:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76055:OnSubStart7605501(arg1)
    print("OnSubStart7605501")
end

function Quest76055:OnSubFinish7605501(arg1)
    print("OnSubFinish7605501")
end

return Quest76055
