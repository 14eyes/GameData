require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7002 = class("Quest7002", QuestActorProxy)
Quest7002.defaultAlias = "Quest7002"
local clientData
local this
local mainID
local actorAlias

function Quest7002:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest7002:OnSubStartHandlerBuild()
    self.subStartHandlers = {["700201"] = self.OnSubStart700201}
end

function Quest7002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["700201"] = self.OnSubFinish700201}
end

function Quest7002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest7002:Start()
    print("Start")
end

function Quest7002:OnDestroy()
    print("OnDestroy")
end

function Quest7002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7002:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest7002:OnSubStart700201(arg1)
    print("OnSubStart700201")
    actorUtils.FinishQuestWithParam({false}, {700201})
end

function Quest7002:OnSubFinish700201(arg1)
    print("OnSubFinish700201")
end

return Quest7002
