require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73321 = class("Quest73321", QuestActorProxy)
Quest73321.defaultAlias = "Quest73321"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73321:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73321:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7332101"] = self.OnSubStart7332101}
end

function Quest73321:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7332101"] = self.OnSubFinish7332101}
end

function Quest73321:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73321:Start()
    print("Start")
end

function Quest73321:OnDestroy()
    print("OnDestroy")
end

function Quest73321:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73321:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73321:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73321:OnSubStart7332101(arg1)
    print("OnSubStart7332101")
end

function Quest73321:OnSubFinish7332101(arg1)
    print("OnSubFinish7332101")
end

return Quest73321
