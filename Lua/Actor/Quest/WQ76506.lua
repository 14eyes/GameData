require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76506 = class("Quest76506", QuestActorProxy)
Quest76506.defaultAlias = "Quest76506"
local clientData
local this
local mainID
local actorAlias

function Quest76506:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76506:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650601"] = self.OnSubStart7650601, ["7650602"] = self.OnSubStart7650602}
end

function Quest76506:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650601"] = self.OnSubFinish7650601, ["7650602"] = self.OnSubFinish7650602}
end

function Quest76506:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76506:Start()
    print("Start")
end

function Quest76506:OnDestroy()
    print("OnDestroy")
end

function Quest76506:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76506:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76506:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76506:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76506:OnSubStart7650601(arg1)
    print("OnSubStart7650601")
end

function Quest76506:OnSubFinish7650601(arg1)
    print("OnSubFinish7650601")
end

function Quest76506:OnSubStart7650602(arg1)
    print("OnSubStart7650602")
end

function Quest76506:OnSubFinish7650602(arg1)
    print("OnSubFinish7650602")
end

return Quest76506
