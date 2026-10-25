require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76140 = class("Quest76140", QuestActorProxy)
Quest76140.defaultAlias = "Quest76140"
local clientData
local this
local mainID
local actorAlias

function Quest76140:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76140:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7614001"] = self.OnSubStart7614001}
end

function Quest76140:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7614001"] = self.OnSubFinish7614001}
end

function Quest76140:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76140:Start()
    print("Start")
end

function Quest76140:OnDestroy()
    print("OnDestroy")
end

function Quest76140:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76140:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76140:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76140:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76140:OnSubStart7614001(arg1)
    print("OnSubStart7614001")
end

function Quest76140:OnSubFinish7614001(arg1)
    print("OnSubFinish7614001")
end

return Quest76140
