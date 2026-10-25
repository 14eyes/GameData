require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75161 = class("Quest75161", QuestActorProxy)
Quest75161.defaultAlias = "Quest75161"
local clientData
local this
local mainID
local actorAlias

function Quest75161:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75161:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7516101"] = self.OnSubStart7516101}
end

function Quest75161:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7516101"] = self.OnSubFinish7516101}
end

function Quest75161:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75161:Start()
    print("Start")
end

function Quest75161:OnDestroy()
    print("OnDestroy")
end

function Quest75161:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75161:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75161:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75161:OnSubStart7516101(arg1)
    print("OnSubStart7516101")
end

function Quest75161:OnSubFinish7516101(arg1)
    print("OnSubFinish7516101")
end

return Quest75161
