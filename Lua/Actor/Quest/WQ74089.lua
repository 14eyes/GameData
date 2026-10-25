require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74089 = class("Quest74089", QuestActorProxy)
Quest74089.defaultAlias = "Quest74089"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74089:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74089:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7408901"] = self.OnSubStart7408901}
end

function Quest74089:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7408901"] = self.OnSubFinish7408901}
end

function Quest74089:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74089:Start()
    print("Start")
end

function Quest74089:OnDestroy()
    print("OnDestroy")
end

function Quest74089:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74089:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74089:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74089:OnSubStart7408901(arg1)
    print("OnSubStart7408901")
end

function Quest74089:OnSubFinish7408901(arg1)
    print("OnSubFinish7408901")
end

return Quest74089
