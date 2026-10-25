require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6032 = class("Quest6032", QuestActorProxy)
Quest6032.defaultAlias = "Quest6032"
local clientData
local this
local mainID
local actorAlias

function Quest6032:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest6032:OnSubStartHandlerBuild()
    self.subStartHandlers = {["603201"] = self.OnSubStart603201}
end

function Quest6032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["603201"] = self.OnSubFinish603201}
end

function Quest6032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6032:Start()
    print("Start")
end

function Quest6032:OnDestroy()
    print("OnDestroy")
end

function Quest6032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6032:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest6032:OnSubStart603201(arg1)
    print("OnSubStart603201")
end

function Quest6032:OnSubFinish603201(arg1)
    print("OnSubFinish603201")
end

return Quest6032
