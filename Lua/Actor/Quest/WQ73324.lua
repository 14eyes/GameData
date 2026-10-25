require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73324 = class("Quest73324", QuestActorProxy)
Quest73324.defaultAlias = "Quest73324"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73324:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73324:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7332401"] = self.OnSubStart7332401}
end

function Quest73324:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7332401"] = self.OnSubFinish7332401}
end

function Quest73324:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73324:Start()
    print("Start")
end

function Quest73324:OnDestroy()
    print("OnDestroy")
end

function Quest73324:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73324:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73324:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73324:OnSubStart7332401(arg1)
    print("OnSubStart7332401")
end

function Quest73324:OnSubFinish7332401(arg1)
    print("OnSubFinish7332401")
end

return Quest73324
