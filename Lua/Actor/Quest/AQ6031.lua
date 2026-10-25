require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6031 = class("Quest6031", QuestActorProxy)
Quest6031.defaultAlias = "Quest6031"
local clientData
local this
local mainID
local actorAlias

function Quest6031:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest6031:OnSubStartHandlerBuild()
    self.subStartHandlers = {["603101"] = self.OnSubStart603101}
end

function Quest6031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["603101"] = self.OnSubFinish603101}
end

function Quest6031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6031:Start()
    print("Start")
end

function Quest6031:OnDestroy()
    print("OnDestroy")
end

function Quest6031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6031:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest6031:OnSubStart603101(arg1)
    print("OnSubStart603101")
end

function Quest6031:OnSubFinish603101(arg1)
    print("OnSubFinish603101")
end

return Quest6031
