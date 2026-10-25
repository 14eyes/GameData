require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76174 = class("Quest76174", QuestActorProxy)
Quest76174.defaultAlias = "Quest76174"
local clientData
local this
local mainID
local actorAlias

function Quest76174:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76174:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7617401"] = self.OnSubStart7617401}
end

function Quest76174:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7617401"] = self.OnSubFinish7617401}
end

function Quest76174:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76174:Start()
    print("Start")
end

function Quest76174:OnDestroy()
    print("OnDestroy")
end

function Quest76174:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76174:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76174:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76174:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76174:OnSubStart7617401(arg1)
    print("OnSubStart7617401")
end

function Quest76174:OnSubFinish7617401(arg1)
    print("OnSubFinish7617401")
end

return Quest76174
