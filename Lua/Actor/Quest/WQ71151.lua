require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71151 = class("Quest71151", QuestActorProxy)
Quest71151.defaultAlias = "Quest71151"
local clientData
local this
local mainID
local actorAlias

function Quest71151:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71151:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115101"] = self.OnSubStart7115101, ["7115102"] = self.OnSubStart7115102}
end

function Quest71151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115101"] = self.OnSubFinish7115101, ["7115102"] = self.OnSubFinish7115102}
end

function Quest71151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71151:Start()
    print("Start")
end

function Quest71151:OnDestroy()
    print("OnDestroy")
end

function Quest71151:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71151:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71151:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71151:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71151:OnSubStart7115101(arg1)
    print("OnSubStart7115101")
end

function Quest71151:OnSubFinish7115101(arg1)
    print("OnSubFinish7115101")
end

function Quest71151:OnSubStart7115102(arg1)
    print("OnSubStart7115102")
end

function Quest71151:OnSubFinish7115102(arg1)
    print("OnSubFinish7115102")
end

return Quest71151
