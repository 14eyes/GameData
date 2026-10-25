require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74520 = class("Quest74520", QuestActorProxy)
Quest74520.defaultAlias = "Quest74520"
local clientData
local this
local mainID
local actorAlias

function Quest74520:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74520:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452001"] = self.OnSubStart7452001, ["7452002"] = self.OnSubStart7452002}
end

function Quest74520:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452001"] = self.OnSubFinish7452001, ["7452002"] = self.OnSubFinish7452002}
end

function Quest74520:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74520:Start()
    print("Start")
end

function Quest74520:OnDestroy()
    print("OnDestroy")
end

function Quest74520:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74520:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74520:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74520:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74520:OnSubStart7452001(arg1)
    print("OnSubStart7452001")
end

function Quest74520:OnSubFinish7452001(arg1)
    print("OnSubFinish7452001")
end

function Quest74520:OnSubStart7452002(arg1)
    print("OnSubStart7452002")
end

function Quest74520:OnSubFinish7452002(arg1)
    print("OnSubFinish7452002")
end

return Quest74520
