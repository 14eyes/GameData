require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70557 = class("Quest70557", QuestActorProxy)
Quest70557.defaultAlias = "Quest70557"
local clientData
local this
local mainID
local actorAlias

function Quest70557:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70557:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7055701"] = self.OnSubStart7055701}
end

function Quest70557:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7055701"] = self.OnSubFinish7055701}
end

function Quest70557:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70557:Start()
    print("Start")
end

function Quest70557:OnDestroy()
    print("OnDestroy")
end

function Quest70557:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70557:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70557:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest70557:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70557:OnSubStart7055701(arg1)
    print("OnSubStart7055701")
end

function Quest70557:OnSubFinish7055701(arg1)
    print("OnSubFinish7055701")
end

return Quest70557
