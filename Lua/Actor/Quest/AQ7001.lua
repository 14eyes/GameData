require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7001 = class("Quest7001", QuestActorProxy)
Quest7001.defaultAlias = "Quest7001"
local clientData
local this
local mainID
local actorAlias

function Quest7001:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest7001:OnSubStartHandlerBuild()
    self.subStartHandlers = {["700101"] = self.OnSubStart700101}
end

function Quest7001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["700101"] = self.OnSubFinish700101}
end

function Quest7001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest7001:Start()
    print("Start")
end

function Quest7001:OnDestroy()
    print("OnDestroy")
end

function Quest7001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7001:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest7001:OnSubStart700101(arg1)
    print("OnSubStart700101")
    actorUtils.FinishQuestWithParam({false}, {700101})
end

function Quest7001:OnSubFinish700101(arg1)
    print("OnSubFinish700101")
end

return Quest7001
