require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77908 = class("Quest77908", QuestActorProxy)
Quest77908.defaultAlias = "Quest77908"
local clientData
local this
local mainID
local actorAlias

function Quest77908:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77908:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790801"] = self.OnSubStart7790801}
end

function Quest77908:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790801"] = self.OnSubFinish7790801}
end

function Quest77908:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77908:Start()
    print("Start")
end

function Quest77908:OnDestroy()
    print("OnDestroy")
end

function Quest77908:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77908:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77908:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77908:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77908:OnSubStart7790801(arg1)
    print("OnSubStart7790801")
end

function Quest77908:OnSubFinish7790801(arg1)
    print("OnSubFinish7790801")
end

return Quest77908
