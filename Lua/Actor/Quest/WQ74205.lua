require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74205 = class("Quest74205", QuestActorProxy)
Quest74205.defaultAlias = "Quest74205"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74205:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74205:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7420501"] = self.OnSubStart7420501}
end

function Quest74205:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7420501"] = self.OnSubFinish7420501}
end

function Quest74205:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74205:Start()
    print("Start")
end

function Quest74205:OnDestroy()
    print("OnDestroy")
end

function Quest74205:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74205:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74205:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74205:OnSubStart7420501(arg1)
    print("OnSubStart7420501")
end

function Quest74205:OnSubFinish7420501(arg1)
    print("OnSubFinish7420501")
end

return Quest74205
