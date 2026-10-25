require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76669 = class("Quest76669", QuestActorProxy)
Quest76669.defaultAlias = "Quest76669"
local clientData
local this
local mainID
local actorAlias

function Quest76669:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76669:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7666901"] = self.OnSubStart7666901}
end

function Quest76669:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7666901"] = self.OnSubFinish7666901}
end

function Quest76669:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76669:Start()
    print("Start")
end

function Quest76669:OnDestroy()
    print("OnDestroy")
end

function Quest76669:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76669:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76669:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76669:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76669:OnSubStart7666901(arg1)
    print("OnSubStart7666901")
end

function Quest76669:OnSubFinish7666901(arg1)
    print("OnSubFinish7666901")
end

return Quest76669
