require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76215 = class("Quest76215", QuestActorProxy)
Quest76215.defaultAlias = "Quest76215"
local clientData
local this
local mainID
local actorAlias

function Quest76215:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76215:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7621501"] = self.OnSubStart7621501}
end

function Quest76215:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7621501"] = self.OnSubFinish7621501}
end

function Quest76215:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76215:Start()
    print("Start")
end

function Quest76215:OnDestroy()
    print("OnDestroy")
end

function Quest76215:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76215:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76215:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76215:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76215:OnSubStart7621501(arg1)
    print("OnSubStart7621501")
end

function Quest76215:OnSubFinish7621501(arg1)
    print("OnSubFinish7621501")
end

return Quest76215
