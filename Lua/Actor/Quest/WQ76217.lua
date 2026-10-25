require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76217 = class("Quest76217", QuestActorProxy)
Quest76217.defaultAlias = "Quest76217"
local clientData
local this
local mainID
local actorAlias

function Quest76217:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76217:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7621701"] = self.OnSubStart7621701}
end

function Quest76217:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7621701"] = self.OnSubFinish7621701}
end

function Quest76217:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76217:Start()
    print("Start")
end

function Quest76217:OnDestroy()
    print("OnDestroy")
end

function Quest76217:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76217:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76217:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76217:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76217:OnSubStart7621701(arg1)
    print("OnSubStart7621701")
end

function Quest76217:OnSubFinish7621701(arg1)
    print("OnSubFinish7621701")
end

return Quest76217
