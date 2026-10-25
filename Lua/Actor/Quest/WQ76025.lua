require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76025 = class("Quest76025", QuestActorProxy)
Quest76025.defaultAlias = "Quest76025"
local clientData
local this
local mainID
local actorAlias

function Quest76025:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76025:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7602501"] = self.OnSubStart7602501}
end

function Quest76025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7602501"] = self.OnSubFinish7602501}
end

function Quest76025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76025:Start()
    print("Start")
end

function Quest76025:OnDestroy()
    print("OnDestroy")
end

function Quest76025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76025:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76025:OnSubStart7602501(arg1)
    print("OnSubStart7602501")
    actorUtils.FinishQuestID(false, 7602501)
end

function Quest76025:OnSubFinish7602501(arg1)
    print("OnSubFinish7602501")
end

return Quest76025
