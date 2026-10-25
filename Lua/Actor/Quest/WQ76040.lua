require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76040 = class("Quest76040", QuestActorProxy)
Quest76040.defaultAlias = "Quest76040"
local clientData
local this
local mainID
local actorAlias

function Quest76040:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76040:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7604001"] = self.OnSubStart7604001}
end

function Quest76040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7604001"] = self.OnSubFinish7604001}
end

function Quest76040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76040:Start()
    print("Start")
end

function Quest76040:OnDestroy()
    print("OnDestroy")
end

function Quest76040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76040:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76040:OnSubStart7604001(arg1)
    print("OnSubStart7604001")
end

function Quest76040:OnSubFinish7604001(arg1)
    print("OnSubFinish7604001")
end

return Quest76040
