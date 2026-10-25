require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71518 = class("Quest71518", QuestActorProxy)
Quest71518.defaultAlias = "Quest71518"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71518:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71518:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function Quest71518:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest71518:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71518:Start()
    print("Start")
end

function Quest71518:OnDestroy()
    print("OnDestroy")
end

function Quest71518:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71518:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71518:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
end

return Quest71518
