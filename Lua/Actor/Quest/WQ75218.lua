require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75218 = class("Quest75218", QuestActorProxy)
Quest75218.defaultAlias = "Quest75218"
local clientData
local this
local mainID
local actorAlias

function Quest75218:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75218:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7521801"] = self.OnSubStart7521801}
end

function Quest75218:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7521801"] = self.OnSubFinish7521801}
end

function Quest75218:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75218:Start()
    print("Start")
end

function Quest75218:OnDestroy()
    print("OnDestroy")
end

function Quest75218:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75218:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75218:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75218:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75218:OnSubStart7521801(arg1)
    print("OnSubStart7521801")
end

function Quest75218:OnSubFinish7521801(arg1)
    print("OnSubFinish7521801")
end

return Quest75218
