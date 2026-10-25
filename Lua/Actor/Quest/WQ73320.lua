require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73320 = class("Quest73320", QuestActorProxy)
Quest73320.defaultAlias = "Quest73320"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73320:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73320:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7332001"] = self.OnSubStart7332001}
end

function Quest73320:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7332001"] = self.OnSubFinish7332001}
end

function Quest73320:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73320:Start()
    print("Start")
end

function Quest73320:OnDestroy()
    print("OnDestroy")
end

function Quest73320:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73320:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73320:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73320:OnSubStart7332001(arg1)
    print("OnSubStart7332001")
end

function Quest73320:OnSubFinish7332001(arg1)
    print("OnSubFinish7332001")
end

return Quest73320
