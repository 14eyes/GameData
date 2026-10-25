require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71517 = class("Quest71517", QuestActorProxy)
Quest71517.defaultAlias = "Quest71517"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71517:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71517:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7151701"] = self.OnSubStart7151701}
end

function Quest71517:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7151701"] = self.OnSubFinish7151701}
end

function Quest71517:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71517:Start()
    print("Start")
end

function Quest71517:OnDestroy()
    print("OnDestroy")
end

function Quest71517:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71517:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71517:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
end

function Quest71517:OnSubStart7151701(arg1)
    print("OnSubStart7151701")
end

function Quest71517:OnSubFinish7151701(arg1)
    print("OnSubFinish7151701")
end

return Quest71517
