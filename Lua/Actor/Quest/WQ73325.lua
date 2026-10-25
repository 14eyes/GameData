require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73325 = class("Quest73325", QuestActorProxy)
Quest73325.defaultAlias = "Quest73325"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73325:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73325:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7332501"] = self.OnSubStart7332501}
end

function Quest73325:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7332501"] = self.OnSubFinish7332501}
end

function Quest73325:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73325:Start()
    print("Start")
end

function Quest73325:OnDestroy()
    print("OnDestroy")
end

function Quest73325:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73325:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73325:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73325:OnSubStart7332501(arg1)
    print("OnSubStart7332501")
end

function Quest73325:OnSubFinish7332501(arg1)
    print("OnSubFinish7332501")
end

return Quest73325
