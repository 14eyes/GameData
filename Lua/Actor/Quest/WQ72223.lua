require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72223 = class("Quest72223", QuestActorProxy)
Quest72223.defaultAlias = "Quest72223"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72223:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72223:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7222301"] = self.OnSubStart7222301}
end

function Quest72223:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7222301"] = self.OnSubFinish7222301}
end

function Quest72223:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7222301"] = self.OnSubFailed7222301}
end

function Quest72223:Start()
    print("Start")
end

function Quest72223:OnDestroy()
    print("OnDestroy")
end

function Quest72223:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72223:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72223:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72223:OnSubStart7222301(arg1)
    print("OnSubStart7222301")
end

function Quest72223:OnSubFinish7222301(arg1)
    print("OnSubFinish7222301")
end

function Quest72223:OnSubFailed7222301(arg1)
    print("OnSubFailed7222301")
end

return Quest72223
