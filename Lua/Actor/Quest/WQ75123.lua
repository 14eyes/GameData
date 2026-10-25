require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75123 = class("Quest75123", QuestActorProxy)
Quest75123.defaultAlias = "Quest75123"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75123:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75123:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7512301"] = self.OnSubStart7512301}
end

function Quest75123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7512301"] = self.OnSubFinish7512301}
end

function Quest75123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75123:Start()
    print("Start")
end

function Quest75123:OnDestroy()
    print("OnDestroy")
end

function Quest75123:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75123:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75123:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75123:OnSubStart7512301(arg1)
    print("OnSubStart7512301")
end

function Quest75123:OnSubFinish7512301(arg1)
    print("OnSubFinish7512301")
end

return Quest75123
