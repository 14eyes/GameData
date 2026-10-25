require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76505 = class("Quest76505", QuestActorProxy)
Quest76505.defaultAlias = "Quest76505"
local clientData
local this
local mainID
local actorAlias

function Quest76505:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76505:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650501"] = self.OnSubStart7650501, ["7650502"] = self.OnSubStart7650502}
end

function Quest76505:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650501"] = self.OnSubFinish7650501, ["7650502"] = self.OnSubFinish7650502}
end

function Quest76505:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76505:Start()
    print("Start")
end

function Quest76505:OnDestroy()
    print("OnDestroy")
end

function Quest76505:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76505:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76505:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76505:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76505:OnSubStart7650501(arg1)
    print("OnSubStart7650501")
end

function Quest76505:OnSubFinish7650501(arg1)
    print("OnSubFinish7650501")
end

function Quest76505:OnSubStart7650502(arg1)
    print("OnSubStart7650502")
end

function Quest76505:OnSubFinish7650502(arg1)
    print("OnSubFinish7650502")
end

return Quest76505
