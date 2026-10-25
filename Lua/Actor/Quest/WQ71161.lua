require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71161 = class("Quest71161", QuestActorProxy)
Quest71161.defaultAlias = "Quest71161"
local clientData
local this
local mainID
local actorAlias

function Quest71161:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71161:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7116101"] = self.OnSubStart7116101, ["7116102"] = self.OnSubStart7116102}
end

function Quest71161:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7116101"] = self.OnSubFinish7116101, ["7116102"] = self.OnSubFinish7116102}
end

function Quest71161:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71161:Start()
    print("Start")
end

function Quest71161:OnDestroy()
    print("OnDestroy")
end

function Quest71161:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71161:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71161:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71161:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71161:OnSubStart7116101(arg1)
    print("OnSubStart7116101")
end

function Quest71161:OnSubFinish7116101(arg1)
    print("OnSubFinish7116101")
end

function Quest71161:OnSubStart7116102(arg1)
    print("OnSubStart7116102")
end

function Quest71161:OnSubFinish7116102(arg1)
    print("OnSubFinish7116102")
end

return Quest71161
