require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77904 = class("Quest77904", QuestActorProxy)
Quest77904.defaultAlias = "Quest77904"
local clientData
local this
local mainID
local actorAlias

function Quest77904:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77904:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790401"] = self.OnSubStart7790401}
end

function Quest77904:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790401"] = self.OnSubFinish7790401}
end

function Quest77904:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77904:Start()
    print("Start")
end

function Quest77904:OnDestroy()
    print("OnDestroy")
end

function Quest77904:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77904:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77904:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77904:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77904:OnSubStart7790401(arg1)
    print("OnSubStart7790401")
end

function Quest77904:OnSubFinish7790401(arg1)
    print("OnSubFinish7790401")
end

return Quest77904
