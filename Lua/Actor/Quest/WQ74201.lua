require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74201 = class("Quest74201", QuestActorProxy)
Quest74201.defaultAlias = "Quest74201"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74201:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74201:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7420101"] = self.OnSubStart7420101}
end

function Quest74201:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7420101"] = self.OnSubFinish7420101}
end

function Quest74201:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74201:Start()
    print("Start")
end

function Quest74201:OnDestroy()
    print("OnDestroy")
end

function Quest74201:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74201:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74201:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74201:OnSubStart7420101(arg1)
    print("OnSubStart7420101")
end

function Quest74201:OnSubFinish7420101(arg1)
    print("OnSubFinish7420101")
end

return Quest74201
