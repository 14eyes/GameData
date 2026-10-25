require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40254 = class("Quest40254", QuestActorProxy)
Quest40254.defaultAlias = "Quest40254"
local clientData
local this
local mainID
local actorAlias

function Quest40254:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40254:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4025401"] = self.OnSubStart4025401}
end

function Quest40254:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4025401"] = self.OnSubFinish4025401}
end

function Quest40254:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40254:Start()
    print("Start")
end

function Quest40254:OnDestroy()
    print("OnDestroy")
end

function Quest40254:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40254:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40254:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest40254:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40254:OnSubStart4025401(arg1)
    print("OnSubStart4025401")
end

function Quest40254:OnSubFinish4025401(arg1)
    print("OnSubFinish4025401")
end

return Quest40254
