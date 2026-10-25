require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74660 = class("Quest74660", QuestActorProxy)
Quest74660.defaultAlias = "Quest74660"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74660:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74660:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466001"] = self.OnSubStart7466001}
end

function Quest74660:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466001"] = self.OnSubFinish7466001}
end

function Quest74660:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74660:Start()
    print("Start")
end

function Quest74660:OnDestroy()
    print("OnDestroy")
end

function Quest74660:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74660:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74660:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74660:OnSubStart7466001(arg1)
    print("OnSubStart7466001")
end

function Quest74660:OnSubFinish7466001(arg1)
    print("OnSubFinish7466001")
end

return Quest74660
