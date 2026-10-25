require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76012 = class("Quest76012", QuestActorProxy)
Quest76012.defaultAlias = "Quest76012"
local clientData
local this
local mainID
local actorAlias

function Quest76012:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76012:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7601201"] = self.OnSubStart7601201}
end

function Quest76012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7601201"] = self.OnSubFinish7601201}
end

function Quest76012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76012:Start()
    print("Start")
end

function Quest76012:OnDestroy()
    print("OnDestroy")
end

function Quest76012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76012:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76012:OnSubStart7601201(arg1)
    print("OnSubStart7601201")
end

function Quest76012:OnSubFinish7601201(arg1)
    print("OnSubFinish7601201")
end

return Quest76012
