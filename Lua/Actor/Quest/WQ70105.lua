require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70105 = class("Quest70105", QuestActorProxy)
Quest70105.defaultAlias = "Quest70105"
local clientData
local this
local mainID
local actorAlias

function Quest70105:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70105:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7010501"] = self.OnSubStart7010501}
end

function Quest70105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7010501"] = self.OnSubFinish7010501}
end

function Quest70105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70105:Start()
    print("Start")
end

function Quest70105:OnDestroy()
    print("OnDestroy")
end

function Quest70105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70105:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70105:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70105:OnSubStart7010501(arg1)
    print("OnSubStart7010501")
    actorUtils.FinishQuestID(false, 7010501)
end

function Quest70105:OnSubFinish7010501(arg1)
    print("OnSubFinish7010501")
end

return Quest70105
