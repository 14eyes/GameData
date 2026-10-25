require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73533 = class("Quest73533", QuestActorProxy)
Quest73533.defaultAlias = "Quest73533"
local clientData
local this
local mainID
local actorAlias

function Quest73533:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest73533:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7353301"] = self.OnSubStart7353301}
end

function Quest73533:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7353301"] = self.OnSubFinish7353301}
end

function Quest73533:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73533:Start()
    print("Start")
end

function Quest73533:OnDestroy()
    print("OnDestroy")
end

function Quest73533:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73533:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73533:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73533:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest73533:OnSubStart7353301(arg1)
    print("OnSubStart7353301")
end

function Quest73533:OnSubFinish7353301(arg1)
    print("OnSubFinish7353301")
end

return Quest73533
