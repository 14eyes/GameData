require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71167 = class("Quest71167", QuestActorProxy)
Quest71167.defaultAlias = "Quest71167"
local clientData
local this
local mainID
local actorAlias

function Quest71167:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71167:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7116701"] = self.OnSubStart7116701}
end

function Quest71167:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7116701"] = self.OnSubFinish7116701}
end

function Quest71167:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71167:Start()
    print("Start")
end

function Quest71167:OnDestroy()
    print("OnDestroy")
end

function Quest71167:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71167:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71167:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71167:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71167:OnSubStart7116701(arg1)
    print("OnSubStart7116701")
end

function Quest71167:OnSubFinish7116701(arg1)
    print("OnSubFinish7116701")
end

return Quest71167
