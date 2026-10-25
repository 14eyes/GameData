require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72710 = class("Quest72710", QuestActorProxy)
Quest72710.defaultAlias = "Quest72710"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72710:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72710:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271001"] = self.OnSubStart7271001}
end

function Quest72710:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271001"] = self.OnSubFinish7271001}
end

function Quest72710:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271001"] = self.OnSubFailed7271001}
end

function Quest72710:Start()
    print("Start")
end

function Quest72710:OnDestroy()
    print("OnDestroy")
end

function Quest72710:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72710:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72710:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72710:OnSubStart7271001(arg1)
    print("OnSubStart7271001")
end

function Quest72710:OnSubFinish7271001(arg1)
    print("OnSubFinish7271001")
end

function Quest72710:OnSubFailed7271001(arg1)
    print("OnSubFailed7271001")
end

return Quest72710
