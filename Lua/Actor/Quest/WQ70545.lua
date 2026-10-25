require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70545 = class("Quest70545", QuestActorProxy)
Quest70545.defaultAlias = "Quest70545"
local clientData
local this
local mainID
local actorAlias

function Quest70545:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70545:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7054501"] = self.OnSubStart7054501}
end

function Quest70545:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7054501"] = self.OnSubFinish7054501}
end

function Quest70545:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7054501"] = self.OnSubFailed7054501}
end

function Quest70545:Start()
    print("Start")
end

function Quest70545:OnDestroy()
    print("OnDestroy")
end

function Quest70545:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70545:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70545:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70545:OnSubStart7054501(arg1)
    print("OnSubStart7054501")
end

function Quest70545:OnSubFinish7054501(arg1)
    print("OnSubFinish7054501")
end

function Quest70545:OnSubFailed7054501(arg1)
    print("OnSubFailed7054501")
end

return Quest70545
