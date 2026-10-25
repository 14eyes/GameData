require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76501 = class("Quest76501", QuestActorProxy)
Quest76501.defaultAlias = "Quest76501"
local clientData
local this
local mainID
local actorAlias

function Quest76501:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76501:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650101"] = self.OnSubStart7650101, ["7650102"] = self.OnSubStart7650102}
end

function Quest76501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650101"] = self.OnSubFinish7650101, ["7650102"] = self.OnSubFinish7650102}
end

function Quest76501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76501:Start()
    print("Start")
end

function Quest76501:OnDestroy()
    print("OnDestroy")
end

function Quest76501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76501:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76501:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76501:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76501:OnSubStart7650101(arg1)
    print("OnSubStart7650101")
end

function Quest76501:OnSubFinish7650101(arg1)
    print("OnSubFinish7650101")
end

function Quest76501:OnSubStart7650102(arg1)
    print("OnSubStart7650102")
end

function Quest76501:OnSubFinish7650102(arg1)
    print("OnSubFinish7650102")
end

return Quest76501
