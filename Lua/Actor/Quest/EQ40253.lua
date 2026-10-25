require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40253 = class("Quest40253", QuestActorProxy)
Quest40253.defaultAlias = "Quest40253"
local clientData
local this
local mainID
local actorAlias

function Quest40253:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40253:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4025301"] = self.OnSubStart4025301}
end

function Quest40253:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4025301"] = self.OnSubFinish4025301}
end

function Quest40253:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40253:Start()
    print("Start")
end

function Quest40253:OnDestroy()
    print("OnDestroy")
end

function Quest40253:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40253:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40253:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest40253:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40253:OnSubStart4025301(arg1)
    print("OnSubStart4025301")
end

function Quest40253:OnSubFinish4025301(arg1)
    print("OnSubFinish4025301")
end

return Quest40253
