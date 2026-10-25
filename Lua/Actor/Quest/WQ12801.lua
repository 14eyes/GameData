require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12801 = class("Quest12801", QuestActorProxy)
Quest12801.defaultAlias = "Quest12801"
local clientData
local this
local mainID
local actorAlias

function Quest12801:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest12801:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1280101"] = self.OnSubStart1280101}
end

function Quest12801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1280101"] = self.OnSubFinish1280101}
end

function Quest12801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12801:Start()
    print("Start")
end

function Quest12801:OnDestroy()
    print("OnDestroy")
end

function Quest12801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12801:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12801:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest12801:OnSubStart1280101(arg1)
    print("OnSubStart1280101")
end

function Quest12801:OnSubFinish1280101(arg1)
    print("OnSubFinish1280101")
end

return Quest12801
