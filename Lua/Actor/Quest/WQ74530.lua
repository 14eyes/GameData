require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74530 = class("Quest74530", QuestActorProxy)
Quest74530.defaultAlias = "Quest74530"
local clientData
local this
local mainID
local actorAlias

function Quest74530:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74530:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7453001"] = self.OnSubStart7453001, ["7453002"] = self.OnSubStart7453002}
end

function Quest74530:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7453001"] = self.OnSubFinish7453001, ["7453002"] = self.OnSubFinish7453002}
end

function Quest74530:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74530:Start()
    print("Start")
end

function Quest74530:OnDestroy()
    print("OnDestroy")
end

function Quest74530:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74530:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74530:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74530:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74530:OnSubStart7453001(arg1)
    print("OnSubStart7453001")
end

function Quest74530:OnSubFinish7453001(arg1)
    print("OnSubFinish7453001")
end

function Quest74530:OnSubStart7453002(arg1)
    print("OnSubStart7453002")
end

function Quest74530:OnSubFinish7453002(arg1)
    print("OnSubFinish7453002")
end

return Quest74530
