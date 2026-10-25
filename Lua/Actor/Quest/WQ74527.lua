require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74527 = class("Quest74527", QuestActorProxy)
Quest74527.defaultAlias = "Quest74527"
local clientData
local this
local mainID
local actorAlias

function Quest74527:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74527:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452701"] = self.OnSubStart7452701, ["7452702"] = self.OnSubStart7452702}
end

function Quest74527:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452701"] = self.OnSubFinish7452701, ["7452702"] = self.OnSubFinish7452702}
end

function Quest74527:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74527:Start()
    print("Start")
end

function Quest74527:OnDestroy()
    print("OnDestroy")
end

function Quest74527:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74527:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74527:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74527:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74527:OnSubStart7452701(arg1)
    print("OnSubStart7452701")
end

function Quest74527:OnSubFinish7452701(arg1)
    print("OnSubFinish7452701")
end

function Quest74527:OnSubStart7452702(arg1)
    print("OnSubStart7452702")
end

function Quest74527:OnSubFinish7452702(arg1)
    print("OnSubFinish7452702")
end

return Quest74527
