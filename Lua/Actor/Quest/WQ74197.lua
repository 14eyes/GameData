require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74197 = class("Quest74197", QuestActorProxy)
Quest74197.defaultAlias = "Quest74197"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74197:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74197:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7419701"] = self.OnSubStart7419701}
end

function Quest74197:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7419701"] = self.OnSubFinish7419701}
end

function Quest74197:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74197:Start()
    print("Start")
end

function Quest74197:OnDestroy()
    print("OnDestroy")
end

function Quest74197:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74197:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74197:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74197:OnSubStart7419701(arg1)
    print("OnSubStart7419701")
end

function Quest74197:OnSubFinish7419701(arg1)
    print("OnSubFinish7419701")
end

return Quest74197
