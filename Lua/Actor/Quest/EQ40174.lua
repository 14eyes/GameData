require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40174 = class("Quest40174", QuestActorProxy)
Quest40174.defaultAlias = "Quest40174"
local clientData
local this
local mainID
local actorAlias

function Quest40174:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40174:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4017401"] = self.OnSubStart4017401}
end

function Quest40174:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4017401"] = self.OnSubFinish4017401}
end

function Quest40174:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40174:Start()
    print("Start")
end

function Quest40174:OnDestroy()
    print("OnDestroy")
end

function Quest40174:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40174:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40174:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40174:OnSubStart4017401(arg1)
    print("OnSubStart4017401")
    actorUtils.FinishQuestID(false, 4017401)
end

function Quest40174:OnSubFinish4017401(arg1)
    print("OnSubFinish4017401")
end

return Quest40174
