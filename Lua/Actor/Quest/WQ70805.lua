require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70805 = class("Quest70805", QuestActorProxy)
Quest70805.defaultAlias = "Quest70805"
local clientData
local this
local mainID
local actorAlias

function Quest70805:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70805:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7080501"] = self.OnSubStart7080501}
end

function Quest70805:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7080501"] = self.OnSubFinish7080501}
end

function Quest70805:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70805:Start()
    print("Start")
end

function Quest70805:OnDestroy()
    print("OnDestroy")
end

function Quest70805:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70805:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70805:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70805:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70805:OnSubStart7080501(arg1)
    print("OnSubStart7080501")
end

function Quest70805:OnSubFinish7080501(arg1)
    print("OnSubFinish7080501")
end

return Quest70805
