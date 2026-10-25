require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74664 = class("Quest74664", QuestActorProxy)
Quest74664.defaultAlias = "Quest74664"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74664:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74664:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466401"] = self.OnSubStart7466401}
end

function Quest74664:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466401"] = self.OnSubFinish7466401}
end

function Quest74664:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74664:Start()
    print("Start")
end

function Quest74664:OnDestroy()
    print("OnDestroy")
end

function Quest74664:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74664:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74664:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74664:OnSubStart7466401(arg1)
    print("OnSubStart7466401")
end

function Quest74664:OnSubFinish7466401(arg1)
    print("OnSubFinish7466401")
end

return Quest74664
