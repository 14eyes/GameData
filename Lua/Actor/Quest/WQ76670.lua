require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76670 = class("Quest76670", QuestActorProxy)
Quest76670.defaultAlias = "Quest76670"
local clientData
local this
local mainID
local actorAlias

function Quest76670:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76670:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7667001"] = self.OnSubStart7667001,
        ["7667002"] = self.OnSubStart7667002,
        ["7667003"] = self.OnSubStart7667003
    }
end

function Quest76670:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7667001"] = self.OnSubFinish7667001,
        ["7667002"] = self.OnSubFinish7667002,
        ["7667003"] = self.OnSubFinish7667003
    }
end

function Quest76670:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76670:Start()
    print("Start")
end

function Quest76670:OnDestroy()
    print("OnDestroy")
end

function Quest76670:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76670:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76670:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76670:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76670:OnSubStart7667001(arg1)
    print("OnSubStart7667001")
    actorUtils.FinishQuestID(false, 7667001)
end

function Quest76670:OnSubFinish7667001(arg1)
    print("OnSubFinish7667001")
end

function Quest76670:OnSubStart7667002(arg1)
    print("OnSubStart7667002")
end

function Quest76670:OnSubFinish7667002(arg1)
    print("OnSubFinish7667002")
end

function Quest76670:OnSubStart7667003(arg1)
    print("OnSubStart7667003")
end

function Quest76670:OnSubFinish7667003(arg1)
    print("OnSubFinish7667003")
end

return Quest76670
