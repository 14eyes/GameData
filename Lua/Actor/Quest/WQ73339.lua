require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73339 = class("Quest73339", QuestActorProxy)
Quest73339.defaultAlias = "Quest73339"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73339:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73339:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7333901"] = self.OnSubStart7333901}
end

function Quest73339:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7333901"] = self.OnSubFinish7333901}
end

function Quest73339:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73339:Start()
    print("Start")
end

function Quest73339:OnDestroy()
    print("OnDestroy")
end

function Quest73339:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73339:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73339:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73339:OnSubStart7333901(arg1)
    print("OnSubStart7333901")
end

function Quest73339:OnSubFinish7333901(arg1)
    print("OnSubFinish7333901")
end

return Quest73339
