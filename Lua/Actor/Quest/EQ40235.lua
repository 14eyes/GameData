require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40235 = class("Quest40235", QuestActorProxy)
Quest40235.defaultAlias = "Quest40235"
local clientData
local this
local mainID
local actorAlias

function Quest40235:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40235:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4023501"] = self.OnSubStart4023501}
end

function Quest40235:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4023501"] = self.OnSubFinish4023501}
end

function Quest40235:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40235:Start()
    print("Start")
end

function Quest40235:OnDestroy()
    print("OnDestroy")
end

function Quest40235:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40235:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40235:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40235:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40235:OnSubStart4023501(arg1)
    print("OnSubStart4023501")
end

function Quest40235:OnSubFinish4023501(arg1)
    print("OnSubFinish4023501")
end

return Quest40235
