require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70826 = class("Quest70826", QuestActorProxy)
Quest70826.defaultAlias = "Quest70826"
local clientData
local this
local mainID
local actorAlias

function Quest70826:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70826:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7082601"] = self.OnSubStart7082601,
        ["7082604"] = self.OnSubStart7082604,
        ["7082602"] = self.OnSubStart7082602,
        ["7082603"] = self.OnSubStart7082603,
        ["7082605"] = self.OnSubStart7082605
    }
end

function Quest70826:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7082601"] = self.OnSubFinish7082601,
        ["7082604"] = self.OnSubFinish7082604,
        ["7082602"] = self.OnSubFinish7082602,
        ["7082603"] = self.OnSubFinish7082603,
        ["7082605"] = self.OnSubFinish7082605
    }
end

function Quest70826:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70826:Start()
    print("Start")
end

function Quest70826:OnDestroy()
    print("OnDestroy")
end

function Quest70826:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70826:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70826:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70826:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70826:OnSubStart7082601(arg1)
    print("OnSubStart7082601")
end

function Quest70826:OnSubFinish7082601(arg1)
    print("OnSubFinish7082601")
end

function Quest70826:OnSubStart7082604(arg1)
    print("OnSubStart7082604")
end

function Quest70826:OnSubFinish7082604(arg1)
    print("OnSubFinish7082604")
end

function Quest70826:OnSubStart7082602(arg1)
    print("OnSubStart7082602")
end

function Quest70826:OnSubFinish7082602(arg1)
    print("OnSubFinish7082602")
end

function Quest70826:OnSubStart7082603(arg1)
    print("OnSubStart7082603")
end

function Quest70826:OnSubFinish7082603(arg1)
    print("OnSubFinish7082603")
end

function Quest70826:OnSubStart7082605(arg1)
    print("OnSubStart7082605")
end

function Quest70826:OnSubFinish7082605(arg1)
    print("OnSubFinish7082605")
end

return Quest70826
