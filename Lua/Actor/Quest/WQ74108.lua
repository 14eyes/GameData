require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74108 = class("Quest74108", QuestActorProxy)
Quest74108.defaultAlias = "Quest74108"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74108:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74108:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7410801"] = self.OnSubStart7410801}
end

function Quest74108:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7410801"] = self.OnSubFinish7410801}
end

function Quest74108:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74108:Start()
    print("Start")
end

function Quest74108:OnDestroy()
    print("OnDestroy")
end

function Quest74108:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74108:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74108:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74108:OnSubStart7410801(arg1)
    print("OnSubStart7410801")
end

function Quest74108:OnSubFinish7410801(arg1)
    print("OnSubFinish7410801")
end

return Quest74108
