require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40030 = class("Quest40030", QuestActorProxy)
Quest40030.defaultAlias = "Quest40030"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40030:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4003001"] = self.OnSubStart4003001}
end

function Quest40030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4003001"] = self.OnSubFinish4003001}
end

function Quest40030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4003001"] = self.OnSubFailed4003001}
end

function Quest40030:Start()
    print("Start")
end

function Quest40030:OnDestroy()
    print("OnDestroy")
end

function Quest40030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40030:OnSubStart4003001(arg1)
    print("OnSubStart4003001")
end

function Quest40030:OnSubFinish4003001(arg1)
    print("OnSubFinish4003001")
end

function Quest40030:OnSubFailed4003001(arg1)
    print("OnSubFailed4003001")
end

return Quest40030
