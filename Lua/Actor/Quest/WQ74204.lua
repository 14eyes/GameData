require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74204 = class("Quest74204", QuestActorProxy)
Quest74204.defaultAlias = "Quest74204"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74204:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74204:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7420401"] = self.OnSubStart7420401}
end

function Quest74204:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7420401"] = self.OnSubFinish7420401}
end

function Quest74204:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74204:Start()
    print("Start")
end

function Quest74204:OnDestroy()
    print("OnDestroy")
end

function Quest74204:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74204:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74204:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74204:OnSubStart7420401(arg1)
    print("OnSubStart7420401")
end

function Quest74204:OnSubFinish7420401(arg1)
    print("OnSubFinish7420401")
end

return Quest74204
