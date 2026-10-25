require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73237 = class("Quest73237", QuestActorProxy)
Quest73237.defaultAlias = "Quest73237"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73237:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73237:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7323701"] = self.OnSubStart7323701}
end

function Quest73237:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7323701"] = self.OnSubFinish7323701}
end

function Quest73237:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73237:Start()
    print("Start")
end

function Quest73237:OnDestroy()
    print("OnDestroy")
end

function Quest73237:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73237:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73237:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73237:OnSubStart7323701(arg1)
    print("OnSubStart7323701")
end

function Quest73237:OnSubFinish7323701(arg1)
    print("OnSubFinish7323701")
end

return Quest73237
