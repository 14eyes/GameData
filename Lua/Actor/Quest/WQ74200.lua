require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74200 = class("Quest74200", QuestActorProxy)
Quest74200.defaultAlias = "Quest74200"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74200:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74200:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7420001"] = self.OnSubStart7420001}
end

function Quest74200:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7420001"] = self.OnSubFinish7420001}
end

function Quest74200:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74200:Start()
    print("Start")
end

function Quest74200:OnDestroy()
    print("OnDestroy")
end

function Quest74200:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74200:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74200:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74200:OnSubStart7420001(arg1)
    print("OnSubStart7420001")
end

function Quest74200:OnSubFinish7420001(arg1)
    print("OnSubFinish7420001")
end

return Quest74200
