require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16800 = class("Quest16800", QuestActorProxy)
Quest16800.defaultAlias = "Quest16800"
local clientData
local this
local mainID
local actorAlias

function Quest16800:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest16800:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1680001"] = self.OnSubStart1680001}
end

function Quest16800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1680001"] = self.OnSubFinish1680001}
end

function Quest16800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16800:Start()
    print("Start")
end

function Quest16800:OnDestroy()
    print("OnDestroy")
end

function Quest16800:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16800:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16800:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16800:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16800:OnSubStart1680001(arg1)
    print("OnSubStart1680001")
    actorUtils.FinishQuestID(false, 1680001)
end

function Quest16800:OnSubFinish1680001(arg1)
    print("OnSubFinish1680001")
end

return Quest16800
