require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74212 = class("Quest74212", QuestActorProxy)
Quest74212.defaultAlias = "Quest74212"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74212:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74212:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest74212:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest74212:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74212:Start()
    print("Start")
end

function Quest74212:OnDestroy()
    print("OnDestroy")
end

function Quest74212:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74212:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74212:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

return Quest74212
