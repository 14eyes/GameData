require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76664 = class("Quest76664", QuestActorProxy)
Quest76664.defaultAlias = "Quest76664"
local clientData
local this
local mainID
local actorAlias

function Quest76664:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76664:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7666401"] = self.OnSubStart7666401}
end

function Quest76664:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7666401"] = self.OnSubFinish7666401}
end

function Quest76664:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76664:Start()
    print("Start")
end

function Quest76664:OnDestroy()
    print("OnDestroy")
end

function Quest76664:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76664:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76664:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76664:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76664:OnSubStart7666401(arg1)
    print("OnSubStart7666401")
end

function Quest76664:OnSubFinish7666401(arg1)
    print("OnSubFinish7666401")
end

return Quest76664
