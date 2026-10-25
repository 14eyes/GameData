require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76227 = class("Quest76227", QuestActorProxy)
Quest76227.defaultAlias = "Quest76227"
local clientData
local this
local mainID
local actorAlias

function Quest76227:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76227:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7622701"] = self.OnSubStart7622701}
end

function Quest76227:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7622701"] = self.OnSubFinish7622701}
end

function Quest76227:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76227:Start()
    print("Start")
end

function Quest76227:OnDestroy()
    print("OnDestroy")
end

function Quest76227:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76227:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76227:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76227:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76227:OnSubStart7622701(arg1)
    print("OnSubStart7622701")
end

function Quest76227:OnSubFinish7622701(arg1)
    print("OnSubFinish7622701")
end

return Quest76227
