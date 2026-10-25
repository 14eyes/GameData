require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70058 = class("Quest70058", QuestActorProxy)
Quest70058.defaultAlias = "Quest70058"
local clientData
local this
local mainID
local actorAlias

function Quest70058:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70058:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7005801"] = self.OnSubStart7005801}
end

function Quest70058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7005801"] = self.OnSubFinish7005801}
end

function Quest70058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70058:Start()
    print("Start")
end

function Quest70058:OnDestroy()
    print("OnDestroy")
end

function Quest70058:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70058:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70058:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70058:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70058:OnSubStart7005801(arg1)
    print("OnSubStart7005801")
end

function Quest70058:OnSubFinish7005801(arg1)
    print("OnSubFinish7005801")
end

return Quest70058
