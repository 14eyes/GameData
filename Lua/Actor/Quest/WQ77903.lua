require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77903 = class("Quest77903", QuestActorProxy)
Quest77903.defaultAlias = "Quest77903"
local clientData
local this
local mainID
local actorAlias

function Quest77903:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77903:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790301"] = self.OnSubStart7790301}
end

function Quest77903:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790301"] = self.OnSubFinish7790301}
end

function Quest77903:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77903:Start()
    print("Start")
end

function Quest77903:OnDestroy()
    print("OnDestroy")
end

function Quest77903:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77903:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77903:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77903:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77903:OnSubStart7790301(arg1)
    print("OnSubStart7790301")
end

function Quest77903:OnSubFinish7790301(arg1)
    print("OnSubFinish7790301")
end

return Quest77903
