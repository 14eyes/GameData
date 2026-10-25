require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77901 = class("Quest77901", QuestActorProxy)
Quest77901.defaultAlias = "Quest77901"
local clientData
local this
local mainID
local actorAlias

function Quest77901:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77901:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790101"] = self.OnSubStart7790101}
end

function Quest77901:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790101"] = self.OnSubFinish7790101}
end

function Quest77901:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77901:Start()
    print("Start")
end

function Quest77901:OnDestroy()
    print("OnDestroy")
end

function Quest77901:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77901:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77901:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77901:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77901:OnSubStart7790101(arg1)
    print("OnSubStart7790101")
end

function Quest77901:OnSubFinish7790101(arg1)
    print("OnSubFinish7790101")
end

return Quest77901
