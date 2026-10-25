require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76157 = class("Quest76157", QuestActorProxy)
Quest76157.defaultAlias = "Quest76157"
local clientData
local this
local mainID
local actorAlias

function Quest76157:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76157:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7615701"] = self.OnSubStart7615701}
end

function Quest76157:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7615701"] = self.OnSubFinish7615701}
end

function Quest76157:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76157:Start()
    print("Start")
end

function Quest76157:OnDestroy()
    print("OnDestroy")
end

function Quest76157:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76157:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76157:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76157:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76157:OnSubStart7615701(arg1)
    print("OnSubStart7615701")
end

function Quest76157:OnSubFinish7615701(arg1)
    print("OnSubFinish7615701")
end

return Quest76157
