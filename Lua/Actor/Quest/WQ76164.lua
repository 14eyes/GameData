require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76164 = class("Quest76164", QuestActorProxy)
Quest76164.defaultAlias = "Quest76164"
local clientData
local this
local mainID
local actorAlias

function Quest76164:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76164:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7616401"] = self.OnSubStart7616401}
end

function Quest76164:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7616401"] = self.OnSubFinish7616401}
end

function Quest76164:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76164:Start()
    print("Start")
end

function Quest76164:OnDestroy()
    print("OnDestroy")
end

function Quest76164:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76164:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76164:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76164:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76164:OnSubStart7616401(arg1)
    print("OnSubStart7616401")
end

function Quest76164:OnSubFinish7616401(arg1)
    print("OnSubFinish7616401")
end

return Quest76164
