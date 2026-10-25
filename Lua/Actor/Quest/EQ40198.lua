require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40198 = class("Quest40198", QuestActorProxy)
Quest40198.defaultAlias = "Quest40198"
local clientData
local this
local mainID
local actorAlias

function Quest40198:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40198:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4019801"] = self.OnSubStart4019801}
end

function Quest40198:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4019801"] = self.OnSubFinish4019801}
end

function Quest40198:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40198:Start()
    print("Start")
end

function Quest40198:OnDestroy()
    print("OnDestroy")
end

function Quest40198:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40198:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40198:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40198:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40198:OnSubStart4019801(arg1)
    print("OnSubStart4019801")
end

function Quest40198:OnSubFinish4019801(arg1)
    print("OnSubFinish4019801")
end

return Quest40198
