require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73308 = class("Quest73308", QuestActorProxy)
Quest73308.defaultAlias = "Quest73308"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73308:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73308:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest73308:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest73308:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73308:Start()
    print("Start")
end

function Quest73308:OnDestroy()
    print("OnDestroy")
end

function Quest73308:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73308:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73308:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest73308
