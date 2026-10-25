require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7000 = class("Quest7000", QuestActorProxy)
Quest7000.defaultAlias = "Quest7000"
local clientData
local this
local mainID
local actorAlias

function Quest7000:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest7000:OnSubStartHandlerBuild()
    self.subStartHandlers = {["700001"] = self.OnSubStart700001}
end

function Quest7000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["700001"] = self.OnSubFinish700001}
end

function Quest7000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest7000:Start()
    print("Start")
end

function Quest7000:OnDestroy()
    print("OnDestroy")
end

function Quest7000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7000:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest7000:OnSubStart700001(arg1)
    print("OnSubStart700001")
    actorUtils.FinishQuestWithParam({false}, {700001})
end

function Quest7000:OnSubFinish700001(arg1)
    print("OnSubFinish700001")
end

return Quest7000
