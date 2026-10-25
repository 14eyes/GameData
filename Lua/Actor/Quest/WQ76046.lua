require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76046 = class("Quest76046", QuestActorProxy)
Quest76046.defaultAlias = "Quest76046"
local clientData
local this
local mainID
local actorAlias

function Quest76046:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7604601"] = self.OnSubStart7604601,
        ["7604602"] = self.OnSubStart7604602,
        ["7604605"] = self.OnSubStart7604605,
        ["7604603"] = self.OnSubStart7604603,
        ["7604604"] = self.OnSubStart7604604,
        ["7604606"] = self.OnSubStart7604606,
        ["7604607"] = self.OnSubStart7604607
    }
end

function Quest76046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7604601"] = self.OnSubFinish7604601,
        ["7604602"] = self.OnSubFinish7604602,
        ["7604605"] = self.OnSubFinish7604605,
        ["7604603"] = self.OnSubFinish7604603,
        ["7604604"] = self.OnSubFinish7604604,
        ["7604606"] = self.OnSubFinish7604606,
        ["7604607"] = self.OnSubFinish7604607
    }
end

function Quest76046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76046:Start()
    print("Start")
end

function Quest76046:OnDestroy()
    print("OnDestroy")
end

function Quest76046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76046:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76046:OnMainPaused(arg1) end

function Quest76046:OnSubStart7604601(arg1)
    print("OnSubStart7604601")
    actorUtils.FinishQuestID(false, 7604601)
end

function Quest76046:OnSubFinish7604601(arg1)
    print("OnSubFinish7604601")
end

function Quest76046:OnSubStart7604602(arg1)
    print("OnSubStart7604602")
end

function Quest76046:OnSubFinish7604602(arg1)
    print("OnSubFinish7604602")
end

function Quest76046:OnSubStart7604605(arg1)
    print("OnSubStart7604605")
end

function Quest76046:OnSubFinish7604605(arg1)
    print("OnSubFinish7604605")
end

function Quest76046:OnSubStart7604603(arg1)
    print("OnSubStart7604603")
end

function Quest76046:OnSubFinish7604603(arg1)
    print("OnSubFinish7604603")
end

function Quest76046:OnSubStart7604604(arg1)
    print("OnSubStart7604604")
end

function Quest76046:OnSubFinish7604604(arg1)
    print("OnSubFinish7604604")
end

function Quest76046:OnSubStart7604606(arg1)
    print("OnSubStart7604606")
    actorUtils.FinishQuestID(false, 7604606)
end

function Quest76046:OnSubFinish7604606(arg1)
    print("OnSubFinish7604606")
end

function Quest76046:OnSubStart7604607(arg1)
    print("OnSubStart7604607")
    actorUtils.FinishQuestID(true, 7604607)
end

function Quest76046:OnSubFinish7604607(arg1)
    print("OnSubFinish7604607")
end

return Quest76046
