require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70031 = class("Quest70031", QuestActorProxy)
Quest70031.defaultAlias = "Quest70031"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70031:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7003101"] = self.OnSubStart7003101, ["7003102"] = self.OnSubStart7003102}
end

function Quest70031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7003101"] = self.OnSubFinish7003101, ["7003102"] = self.OnSubFinish7003102}
end

function Quest70031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7003101"] = self.OnSubFailed7003101, ["7003102"] = self.OnSubFailed7003102}
end

function Quest70031:Start()
    print("Start")
end

function Quest70031:OnDestroy()
    print("OnDestroy")
end

function Quest70031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70031:OnSubStart7003101(arg1)
    print("OnSubStart7003101")
end

function Quest70031:OnSubFinish7003101(arg1)
    print("OnSubFinish7003101")
end

function Quest70031:OnSubFailed7003101(arg1)
    print("OnSubFailed7003101")
end

function Quest70031:OnSubStart7003102(arg1)
    print("OnSubStart7003102")
    globalActor:StartGuide("GuideTransportAmbor")
end

function Quest70031:OnSubFinish7003102(arg1)
    print("OnSubFinish7003102")
end

function Quest70031:OnSubFailed7003102(arg1)
    print("OnSubFailed7003102")
end

return Quest70031
