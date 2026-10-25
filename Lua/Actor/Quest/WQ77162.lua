require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77162 = class("Quest77162", QuestActorProxy)
Quest77162.defaultAlias = "Quest77162"
local clientData
local this
local mainID
local actorAlias

function Quest77162:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77162:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7716203"] = self.OnSubStart7716203,
        ["7716201"] = self.OnSubStart7716201,
        ["7716202"] = self.OnSubStart7716202
    }
end

function Quest77162:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7716203"] = self.OnSubFinish7716203,
        ["7716201"] = self.OnSubFinish7716201,
        ["7716202"] = self.OnSubFinish7716202
    }
end

function Quest77162:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77162:Start()
    print("Start")
end

function Quest77162:OnDestroy()
    print("OnDestroy")
end

function Quest77162:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77162:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77162:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77162:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77162:OnSubStart7716203(arg1)
    print("OnSubStart7716203")
    actorUtils.FinishQuestWithParam({false}, {7716203})
end

function Quest77162:OnSubFinish7716203(arg1)
    print("OnSubFinish7716203")
end

function Quest77162:OnSubStart7716201(arg1)
    print("OnSubStart7716201")
end

function Quest77162:OnSubFinish7716201(arg1)
    print("OnSubFinish7716201")
end

function Quest77162:OnSubStart7716202(arg1)
    print("OnSubStart7716202")
    actorUtils.FinishQuestWithParam({false}, {7716202})
end

function Quest77162:OnSubFinish7716202(arg1)
    print("OnSubFinish7716202")
end

return Quest77162
