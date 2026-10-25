require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73323 = class("Quest73323", QuestActorProxy)
Quest73323.defaultAlias = "Quest73323"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73323:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73323:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7332301"] = self.OnSubStart7332301}
end

function Quest73323:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7332301"] = self.OnSubFinish7332301}
end

function Quest73323:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73323:Start()
    print("Start")
end

function Quest73323:OnDestroy()
    print("OnDestroy")
end

function Quest73323:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73323:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73323:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73323:OnSubStart7332301(arg1)
    print("OnSubStart7332301")
end

function Quest73323:OnSubFinish7332301(arg1)
    print("OnSubFinish7332301")
end

return Quest73323
