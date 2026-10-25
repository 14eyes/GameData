require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75155 = class("Quest75155", QuestActorProxy)
Quest75155.defaultAlias = "Quest75155"
local clientData
local this
local mainID
local actorAlias

function Quest75155:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75155:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7515501"] = self.OnSubStart7515501}
end

function Quest75155:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7515501"] = self.OnSubFinish7515501}
end

function Quest75155:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75155:Start()
    print("Start")
end

function Quest75155:OnDestroy()
    print("OnDestroy")
end

function Quest75155:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75155:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75155:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75155:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75155:OnSubStart7515501(arg1)
    print("OnSubStart7515501")
end

function Quest75155:OnSubFinish7515501(arg1)
    print("OnSubFinish7515501")
end

return Quest75155
