require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76181 = class("Quest76181", QuestActorProxy)
Quest76181.defaultAlias = "Quest76181"
local clientData
local this
local mainID
local actorAlias

function Quest76181:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76181:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7618101"] = self.OnSubStart7618101}
end

function Quest76181:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7618101"] = self.OnSubFinish7618101}
end

function Quest76181:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76181:Start()
    print("Start")
end

function Quest76181:OnDestroy()
    print("OnDestroy")
end

function Quest76181:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76181:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76181:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76181:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76181:OnSubStart7618101(arg1)
    print("OnSubStart7618101")
end

function Quest76181:OnSubFinish7618101(arg1)
    print("OnSubFinish7618101")
end

return Quest76181
