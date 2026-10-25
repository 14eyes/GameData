require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77905 = class("Quest77905", QuestActorProxy)
Quest77905.defaultAlias = "Quest77905"
local clientData
local this
local mainID
local actorAlias

function Quest77905:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77905:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790501"] = self.OnSubStart7790501}
end

function Quest77905:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790501"] = self.OnSubFinish7790501}
end

function Quest77905:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77905:Start()
    print("Start")
end

function Quest77905:OnDestroy()
    print("OnDestroy")
end

function Quest77905:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77905:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77905:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77905:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77905:OnSubStart7790501(arg1)
    print("OnSubStart7790501")
end

function Quest77905:OnSubFinish7790501(arg1)
    print("OnSubFinish7790501")
end

return Quest77905
