require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77197 = class("Quest77197", QuestActorProxy)
Quest77197.defaultAlias = "Quest77197"
local clientData
local this
local mainID
local actorAlias

function Quest77197:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77197:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7719701"] = self.OnSubStart7719701}
end

function Quest77197:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7719701"] = self.OnSubFinish7719701}
end

function Quest77197:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77197:Start()
    print("Start")
end

function Quest77197:OnDestroy()
    print("OnDestroy")
end

function Quest77197:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77197:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77197:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77197:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77197:OnSubStart7719701(arg1)
    print("OnSubStart7719701")
end

function Quest77197:OnSubFinish7719701(arg1)
    print("OnSubFinish7719701")
end

return Quest77197
