require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76504 = class("Quest76504", QuestActorProxy)
Quest76504.defaultAlias = "Quest76504"
local clientData
local this
local mainID
local actorAlias

function Quest76504:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76504:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650401"] = self.OnSubStart7650401, ["7650402"] = self.OnSubStart7650402}
end

function Quest76504:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650401"] = self.OnSubFinish7650401, ["7650402"] = self.OnSubFinish7650402}
end

function Quest76504:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76504:Start()
    print("Start")
end

function Quest76504:OnDestroy()
    print("OnDestroy")
end

function Quest76504:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76504:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76504:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76504:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76504:OnSubStart7650401(arg1)
    print("OnSubStart7650401")
end

function Quest76504:OnSubFinish7650401(arg1)
    print("OnSubFinish7650401")
end

function Quest76504:OnSubStart7650402(arg1)
    print("OnSubStart7650402")
end

function Quest76504:OnSubFinish7650402(arg1)
    print("OnSubFinish7650402")
end

return Quest76504
