require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40175 = class("Quest40175", QuestActorProxy)
Quest40175.defaultAlias = "Quest40175"
local clientData
local this
local mainID
local actorAlias

function Quest40175:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40175:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4017501"] = self.OnSubStart4017501}
end

function Quest40175:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4017501"] = self.OnSubFinish4017501}
end

function Quest40175:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40175:Start()
    print("Start")
end

function Quest40175:OnDestroy()
    print("OnDestroy")
end

function Quest40175:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40175:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40175:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40175:OnSubStart4017501(arg1)
    print("OnSubStart4017501")
    actorUtils.FinishQuestID(false, 4017501)
end

function Quest40175:OnSubFinish4017501(arg1)
    print("OnSubFinish4017501")
end

return Quest40175
