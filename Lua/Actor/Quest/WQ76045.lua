require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76045 = class("Quest76045", QuestActorProxy)
Quest76045.defaultAlias = "Quest76045"
local clientData
local this
local mainID
local actorAlias

function Quest76045:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7604501"] = self.OnSubStart7604501,
        ["7604502"] = self.OnSubStart7604502,
        ["7604503"] = self.OnSubStart7604503
    }
end

function Quest76045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7604501"] = self.OnSubFinish7604501,
        ["7604502"] = self.OnSubFinish7604502,
        ["7604503"] = self.OnSubFinish7604503
    }
end

function Quest76045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76045:Start()
    print("Start")
end

function Quest76045:OnDestroy()
    print("OnDestroy")
end

function Quest76045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76045:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76045:OnSubStart7604501(arg1)
    print("OnSubStart7604501")
end

function Quest76045:OnSubFinish7604501(arg1)
    print("OnSubFinish7604501")
end

function Quest76045:OnSubStart7604502(arg1)
    print("OnSubStart7604502")
end

function Quest76045:OnSubFinish7604502(arg1)
    print("OnSubFinish7604502")
end

function Quest76045:OnSubStart7604503(arg1)
    print("OnSubStart7604503")
    actorUtils.FinishQuestID(false, 7604503)
end

function Quest76045:OnSubFinish7604503(arg1)
    print("OnSubFinish7604503")
end

return Quest76045
