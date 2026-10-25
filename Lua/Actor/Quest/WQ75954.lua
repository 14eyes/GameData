require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75954 = class("Quest75954", QuestActorProxy)
Quest75954.defaultAlias = "Quest75954"
local clientData
local this
local mainID
local actorAlias

function Quest75954:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75954:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7595401"] = self.OnSubStart7595401}
end

function Quest75954:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7595401"] = self.OnSubFinish7595401}
end

function Quest75954:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75954:Start()
    print("Start")
end

function Quest75954:OnDestroy()
    print("OnDestroy")
end

function Quest75954:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75954:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75954:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75954:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75954:OnSubStart7595401(arg1)
    print("OnSubStart7595401")
end

function Quest75954:OnSubFinish7595401(arg1)
    print("OnSubFinish7595401")
end

return Quest75954
