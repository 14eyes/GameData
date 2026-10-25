require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7032 = class("Quest7032", QuestActorProxy)
Quest7032.defaultAlias = "Quest7032"
local clientData
local this
local mainID
local actorAlias

function Quest7032:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest7032:OnSubStartHandlerBuild()
    self.subStartHandlers = {["703201"] = self.OnSubStart703201}
end

function Quest7032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["703201"] = self.OnSubFinish703201}
end

function Quest7032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest7032:Start()
    print("Start")
end

function Quest7032:OnDestroy()
    print("OnDestroy")
end

function Quest7032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7032:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest7032:OnSubStart703201(arg1)
    print("OnSubStart703201")
    this:DeployStoryByQuest(110703201)
end

function Quest7032:OnSubFinish703201(arg1)
    print("OnSubFinish703201")
    this:CancelStoryByQuest(110703201)
end

return Quest7032
