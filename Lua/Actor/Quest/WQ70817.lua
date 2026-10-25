require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70817 = class("Quest70817", QuestActorProxy)
Quest70817.defaultAlias = "Quest70817"
local clientData
local this
local mainID
local actorAlias

function Quest70817:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70817:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7081701"] = self.OnSubStart7081701, ["7081702"] = self.OnSubStart7081702}
end

function Quest70817:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7081701"] = self.OnSubFinish7081701, ["7081702"] = self.OnSubFinish7081702}
end

function Quest70817:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70817:Start()
    print("Start")
end

function Quest70817:OnDestroy()
    print("OnDestroy")
end

function Quest70817:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70817:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70817:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70817:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70817:OnSubStart7081701(arg1)
    print("OnSubStart7081701")
end

function Quest70817:OnSubFinish7081701(arg1)
    print("OnSubFinish7081701")
end

function Quest70817:OnSubStart7081702(arg1)
    print("OnSubStart7081702")
end

function Quest70817:OnSubFinish7081702(arg1)
    print("OnSubFinish7081702")
end

return Quest70817
