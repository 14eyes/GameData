require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74013 = class("Quest74013", QuestActorProxy)
Quest74013.defaultAlias = "Quest74013"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74013:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74013:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7401301"] = self.OnSubStart7401301}
end

function Quest74013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7401301"] = self.OnSubFinish7401301}
end

function Quest74013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74013:Start()
    print("Start")
end

function Quest74013:OnDestroy()
    print("OnDestroy")
end

function Quest74013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74013:OnSubStart7401301(arg1)
    print("OnSubStart7401301")
end

function Quest74013:OnSubFinish7401301(arg1)
    print("OnSubFinish7401301")
end

return Quest74013
