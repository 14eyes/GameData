require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74090 = class("Quest74090", QuestActorProxy)
Quest74090.defaultAlias = "Quest74090"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74090:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74090:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7409001"] = self.OnSubStart7409001}
end

function Quest74090:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7409001"] = self.OnSubFinish7409001}
end

function Quest74090:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74090:Start()
    print("Start")
end

function Quest74090:OnDestroy()
    print("OnDestroy")
end

function Quest74090:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74090:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74090:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74090:OnSubStart7409001(arg1)
    print("OnSubStart7409001")
end

function Quest74090:OnSubFinish7409001(arg1)
    print("OnSubFinish7409001")
end

return Quest74090
