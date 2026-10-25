require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77165 = class("Quest77165", QuestActorProxy)
Quest77165.defaultAlias = "Quest77165"
local clientData
local this
local mainID
local actorAlias

function Quest77165:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77165:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7716501"] = self.OnSubStart7716501, ["7716502"] = self.OnSubStart7716502}
end

function Quest77165:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7716501"] = self.OnSubFinish7716501, ["7716502"] = self.OnSubFinish7716502}
end

function Quest77165:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7716502"] = self.OnSubFailed7716502}
end

function Quest77165:Start()
    print("Start")
end

function Quest77165:OnDestroy()
    print("OnDestroy")
end

function Quest77165:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77165:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77165:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77165:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77165:OnSubStart7716501(arg1)
    print("OnSubStart7716501")
end

function Quest77165:OnSubFinish7716501(arg1)
    print("OnSubFinish7716501")
end

function Quest77165:OnSubStart7716502(arg1)
    print("OnSubStart7716502")
end

function Quest77165:OnSubFinish7716502(arg1)
    print("OnSubFinish7716502")
end

function Quest77165:OnSubFailed7716502(arg1)
    print("OnSubFailed7716502")
    this:RecycleAllRes()
end

return Quest77165
