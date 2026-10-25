require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76907 = class("Quest76907", QuestActorProxy)
Quest76907.defaultAlias = "Quest76907"
local clientData
local this
local mainID
local actorAlias

function Quest76907:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76907:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7690701"] = self.OnSubStart7690701}
end

function Quest76907:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7690701"] = self.OnSubFinish7690701}
end

function Quest76907:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76907:Start()
    print("Start")
end

function Quest76907:OnDestroy()
    print("OnDestroy")
end

function Quest76907:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76907:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76907:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76907:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76907:OnSubStart7690701(arg1)
    print("OnSubStart7690701")
end

function Quest76907:OnSubFinish7690701(arg1)
    print("OnSubFinish7690701")
end

return Quest76907
