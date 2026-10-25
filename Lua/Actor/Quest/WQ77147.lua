require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77147 = class("Quest77147", QuestActorProxy)
Quest77147.defaultAlias = "Quest77147"
local clientData
local this
local mainID
local actorAlias

function Quest77147:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77147:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7714701"] = self.OnSubStart7714701,
        ["7714702"] = self.OnSubStart7714702,
        ["7714703"] = self.OnSubStart7714703,
        ["7714704"] = self.OnSubStart7714704
    }
end

function Quest77147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7714701"] = self.OnSubFinish7714701,
        ["7714702"] = self.OnSubFinish7714702,
        ["7714703"] = self.OnSubFinish7714703,
        ["7714704"] = self.OnSubFinish7714704
    }
end

function Quest77147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77147:Start()
    print("Start")
end

function Quest77147:OnDestroy()
    print("OnDestroy")
end

function Quest77147:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77147:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77147:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77147:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77147:OnSubStart7714701(arg1)
    print("OnSubStart7714701")
end

function Quest77147:OnSubFinish7714701(arg1)
    print("OnSubFinish7714701")
end

function Quest77147:OnSubStart7714702(arg1)
    print("OnSubStart7714702")
end

function Quest77147:OnSubFinish7714702(arg1)
    print("OnSubFinish7714702")
end

function Quest77147:OnSubStart7714703(arg1)
    print("OnSubStart7714703")
end

function Quest77147:OnSubFinish7714703(arg1)
    print("OnSubFinish7714703")
end

function Quest77147:OnSubStart7714704(arg1)
    print("OnSubStart7714704")
end

function Quest77147:OnSubFinish7714704(arg1)
    print("OnSubFinish7714704")
end

return Quest77147
