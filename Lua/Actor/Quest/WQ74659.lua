require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74659 = class("Quest74659", QuestActorProxy)
Quest74659.defaultAlias = "Quest74659"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74659:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74659:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465901"] = self.OnSubStart7465901}
end

function Quest74659:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465901"] = self.OnSubFinish7465901}
end

function Quest74659:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74659:Start()
    print("Start")
end

function Quest74659:OnDestroy()
    print("OnDestroy")
end

function Quest74659:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74659:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74659:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74659:OnSubStart7465901(arg1)
    print("OnSubStart7465901")
end

function Quest74659:OnSubFinish7465901(arg1)
    print("OnSubFinish7465901")
end

return Quest74659
