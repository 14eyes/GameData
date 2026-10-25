require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75227 = class("Quest75227", QuestActorProxy)
Quest75227.defaultAlias = "Quest75227"
local clientData
local this
local mainID
local actorAlias

function Quest75227:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75227:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7522701"] = self.OnSubStart7522701}
end

function Quest75227:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7522701"] = self.OnSubFinish7522701}
end

function Quest75227:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75227:Start()
    print("Start")
end

function Quest75227:OnDestroy()
    print("OnDestroy")
end

function Quest75227:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75227:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75227:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75227:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75227:OnSubStart7522701(arg1)
    print("OnSubStart7522701")
end

function Quest75227:OnSubFinish7522701(arg1)
    print("OnSubFinish7522701")
end

return Quest75227
