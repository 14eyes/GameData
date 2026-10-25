require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76502 = class("Quest76502", QuestActorProxy)
Quest76502.defaultAlias = "Quest76502"
local clientData
local this
local mainID
local actorAlias

function Quest76502:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76502:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650201"] = self.OnSubStart7650201, ["7650202"] = self.OnSubStart7650202}
end

function Quest76502:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650201"] = self.OnSubFinish7650201, ["7650202"] = self.OnSubFinish7650202}
end

function Quest76502:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76502:Start()
    print("Start")
end

function Quest76502:OnDestroy()
    print("OnDestroy")
end

function Quest76502:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76502:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76502:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76502:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76502:OnSubStart7650201(arg1)
    print("OnSubStart7650201")
end

function Quest76502:OnSubFinish7650201(arg1)
    print("OnSubFinish7650201")
end

function Quest76502:OnSubStart7650202(arg1)
    print("OnSubStart7650202")
end

function Quest76502:OnSubFinish7650202(arg1)
    print("OnSubFinish7650202")
end

return Quest76502
