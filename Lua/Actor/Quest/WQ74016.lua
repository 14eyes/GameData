require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74016 = class("Quest74016", QuestActorProxy)
Quest74016.defaultAlias = "Quest74016"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74016:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74016:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74016:Start()
    print("Start")
end

function Quest74016:OnDestroy()
    print("OnDestroy")
end

function Quest74016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest74016
