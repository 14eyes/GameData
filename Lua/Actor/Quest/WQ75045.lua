require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75045 = class("Quest75045", QuestActorProxy)
Quest75045.defaultAlias = "Quest75045"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75045:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75045:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest75045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest75045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75045:Start()
    print("Start")
end

function Quest75045:OnDestroy()
    print("OnDestroy")
end

function Quest75045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest75045
