require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72658 = class("Quest72658", QuestActorProxy)
Quest72658.defaultAlias = "Quest72658"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72658:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72658:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7265801"] = self.OnSubStart7265801}
end

function Quest72658:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7265801"] = self.OnSubFinish7265801}
end

function Quest72658:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7265801"] = self.OnSubFailed7265801}
end

function Quest72658:Start()
    print("Start")
end

function Quest72658:OnDestroy()
    print("OnDestroy")
end

function Quest72658:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72658:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72658:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72658:OnSubStart7265801(arg1)
    print("OnSubStart7265801")
end

function Quest72658:OnSubFinish7265801(arg1)
    print("OnSubFinish7265801")
end

function Quest72658:OnSubFailed7265801(arg1)
    print("OnSubFailed7265801")
end

return Quest72658
