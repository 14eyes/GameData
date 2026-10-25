require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40127 = class("Quest40127", QuestActorProxy)
Quest40127.defaultAlias = "Quest40127"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40127:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40127:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4012701"] = self.OnSubStart4012701}
end

function Quest40127:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4012701"] = self.OnSubFinish4012701}
end

function Quest40127:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40127:Start()
    print("Start")
end

function Quest40127:OnDestroy()
    print("OnDestroy")
end

function Quest40127:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40127:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40127:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40127:OnSubStart4012701(arg1)
    print("OnSubStart4012701")
end

function Quest40127:OnSubFinish4012701(arg1)
    print("OnSubFinish4012701")
end

return Quest40127
