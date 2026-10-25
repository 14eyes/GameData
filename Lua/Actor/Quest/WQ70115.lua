require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70115 = class("Quest70115", QuestActorProxy)
Quest70115.defaultAlias = "Quest70115"
local clientData
local this
local mainID
local actorAlias

function Quest70115:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70115:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7011501"] = self.OnSubStart7011501, ["7011502"] = self.OnSubStart7011502}
end

function Quest70115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7011501"] = self.OnSubFinish7011501, ["7011502"] = self.OnSubFinish7011502}
end

function Quest70115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70115:Start()
    print("Start")
end

function Quest70115:OnDestroy()
    print("OnDestroy")
end

function Quest70115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70115:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70115:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70115:OnSubStart7011501(arg1)
    print("OnSubStart7011501")
    actorUtils.FinishQuestWithParam({false}, {7011501})
end

function Quest70115:OnSubFinish7011501(arg1)
    print("OnSubFinish7011501")
end

function Quest70115:OnSubStart7011502(arg1)
    print("OnSubStart7011502")
    actorUtils.FinishQuestWithParam({false}, {7011502})
end

function Quest70115:OnSubFinish7011502(arg1)
    print("OnSubFinish7011502")
end

return Quest70115
