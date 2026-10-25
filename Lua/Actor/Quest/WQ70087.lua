require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70087 = class("Quest70087", QuestActorProxy)
Quest70087.defaultAlias = "Quest70087"
local clientData
local this
local mainID
local actorAlias

function Quest70087:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70087:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7008701"] = self.OnSubStart7008701}
end

function Quest70087:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7008701"] = self.OnSubFinish7008701}
end

function Quest70087:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70087:Start()
    print("Start")
end

function Quest70087:OnDestroy()
    print("OnDestroy")
end

function Quest70087:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70087:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70087:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70087:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70087:OnSubStart7008701(arg1)
    print("OnSubStart7008701")
end

function Quest70087:OnSubFinish7008701(arg1)
    print("OnSubFinish7008701")
end

return Quest70087
