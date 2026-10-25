require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77907 = class("Quest77907", QuestActorProxy)
Quest77907.defaultAlias = "Quest77907"
local clientData
local this
local mainID
local actorAlias

function Quest77907:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77907:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790701"] = self.OnSubStart7790701}
end

function Quest77907:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790701"] = self.OnSubFinish7790701}
end

function Quest77907:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77907:Start()
    print("Start")
end

function Quest77907:OnDestroy()
    print("OnDestroy")
end

function Quest77907:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77907:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77907:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77907:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77907:OnSubStart7790701(arg1)
    print("OnSubStart7790701")
end

function Quest77907:OnSubFinish7790701(arg1)
    print("OnSubFinish7790701")
end

return Quest77907
