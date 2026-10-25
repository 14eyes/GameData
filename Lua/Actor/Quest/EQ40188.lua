require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40188 = class("Quest40188", QuestActorProxy)
Quest40188.defaultAlias = "Quest40188"
local clientData
local this
local mainID
local actorAlias

function Quest40188:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40188:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4018801"] = self.OnSubStart4018801}
end

function Quest40188:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4018801"] = self.OnSubFinish4018801}
end

function Quest40188:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40188:Start()
    print("Start")
end

function Quest40188:OnDestroy()
    print("OnDestroy")
end

function Quest40188:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40188:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40188:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40188:OnSubStart4018801(arg1)
    print("OnSubStart4018801")
end

function Quest40188:OnSubFinish4018801(arg1)
    print("OnSubFinish4018801")
end

return Quest40188
