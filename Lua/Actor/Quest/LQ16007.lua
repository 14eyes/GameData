require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16007 = class("Quest16007", QuestActorProxy)
Quest16007.defaultAlias = "Quest16007"
local clientData
local this
local mainID
local actorAlias

function Quest16007:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16007:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1600701"] = self.OnSubStart1600701, ["1600702"] = self.OnSubStart1600702}
end

function Quest16007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1600701"] = self.OnSubFinish1600701, ["1600702"] = self.OnSubFinish1600702}
end

function Quest16007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16007:Start()
    print("Start")
end

function Quest16007:OnDestroy()
    print("OnDestroy")
end

function Quest16007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16007:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16007:OnSubStart1600701(arg1)
    print("OnSubStart1600701")
    actorUtils.FinishQuestID(false, 1600701)
end

function Quest16007:OnSubFinish1600701(arg1)
    print("OnSubFinish1600701")
    this:SetNavigationByMainId(16007, true)
end

function Quest16007:OnSubStart1600702(arg1)
    print("OnSubStart1600702")
end

function Quest16007:OnSubFinish1600702(arg1)
    print("OnSubFinish1600702")
end

return Quest16007
