require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76175 = class("Quest76175", QuestActorProxy)
Quest76175.defaultAlias = "Quest76175"
local clientData
local this
local mainID
local actorAlias

function Quest76175:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76175:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7617501"] = self.OnSubStart7617501}
end

function Quest76175:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7617501"] = self.OnSubFinish7617501}
end

function Quest76175:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76175:Start()
    print("Start")
end

function Quest76175:OnDestroy()
    print("OnDestroy")
end

function Quest76175:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76175:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76175:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76175:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76175:OnSubStart7617501(arg1)
    print("OnSubStart7617501")
    actorUtils.FinishQuestID(false, 7617501)
end

function Quest76175:OnSubFinish7617501(arg1)
    print("OnSubFinish7617501")
end

return Quest76175
