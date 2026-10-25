require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72260 = class("Quest72260", QuestActorProxy)
Quest72260.defaultAlias = "Quest72260"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72260:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72260:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7226001"] = self.OnSubStart7226001}
end

function Quest72260:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7226001"] = self.OnSubFinish7226001}
end

function Quest72260:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7226001"] = self.OnSubFailed7226001}
end

function Quest72260:Start()
    print("Start")
end

function Quest72260:OnDestroy()
    print("OnDestroy")
end

function Quest72260:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72260:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72260:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72260:OnSubStart7226001(arg1)
    print("OnSubStart7226001")
end

function Quest72260:OnSubFinish7226001(arg1)
    print("OnSubFinish7226001")
end

function Quest72260:OnSubFailed7226001(arg1)
    print("OnSubFailed7226001")
end

return Quest72260
