require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70059 = class("Quest70059", QuestActorProxy)
Quest70059.defaultAlias = "Quest70059"
local clientData
local this
local mainID
local actorAlias

function Quest70059:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70059:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7005901"] = self.OnSubStart7005901}
end

function Quest70059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7005901"] = self.OnSubFinish7005901}
end

function Quest70059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70059:Start()
    print("Start")
end

function Quest70059:OnDestroy()
    print("OnDestroy")
end

function Quest70059:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70059:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70059:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70059:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70059:OnSubStart7005901(arg1)
    print("OnSubStart7005901")
end

function Quest70059:OnSubFinish7005901(arg1)
    print("OnSubFinish7005901")
end

return Quest70059
