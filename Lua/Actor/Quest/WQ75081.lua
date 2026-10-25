require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75081 = class("Quest75081", QuestActorProxy)
Quest75081.defaultAlias = "Quest75081"
local clientData
local this
local mainID
local actorAlias

function Quest75081:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75081:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7508101"] = self.OnSubStart7508101}
end

function Quest75081:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7508101"] = self.OnSubFinish7508101}
end

function Quest75081:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75081:Start()
    print("Start")
end

function Quest75081:OnDestroy()
    print("OnDestroy")
end

function Quest75081:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75081:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75081:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75081:OnSubStart7508101(arg1)
    print("OnSubStart7508101")
end

function Quest75081:OnSubFinish7508101(arg1)
    print("OnSubFinish7508101")
end

return Quest75081
