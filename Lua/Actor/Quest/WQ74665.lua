require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74665 = class("Quest74665", QuestActorProxy)
Quest74665.defaultAlias = "Quest74665"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74665:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74665:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466501"] = self.OnSubStart7466501}
end

function Quest74665:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466501"] = self.OnSubFinish7466501}
end

function Quest74665:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74665:Start()
    print("Start")
end

function Quest74665:OnDestroy()
    print("OnDestroy")
end

function Quest74665:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74665:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74665:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74665:OnSubStart7466501(arg1)
    print("OnSubStart7466501")
end

function Quest74665:OnSubFinish7466501(arg1)
    print("OnSubFinish7466501")
end

return Quest74665
