require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71957 = class("Quest71957", QuestActorProxy)
Quest71957.defaultAlias = "Quest71957"
local clientData
local this
local mainID
local actorAlias

function Quest71957:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71957:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7195701"] = self.OnSubStart7195701}
end

function Quest71957:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7195701"] = self.OnSubFinish7195701}
end

function Quest71957:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71957:Start()
    print("Start")
end

function Quest71957:OnDestroy()
    print("OnDestroy")
end

function Quest71957:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71957:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71957:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71957:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest71957:OnSubStart7195701(arg1)
    print("OnSubStart7195701")
    actorUtils.FinishQuestID(false, 7195701)
end

function Quest71957:OnSubFinish7195701(arg1)
    print("OnSubFinish7195701")
end

return Quest71957
