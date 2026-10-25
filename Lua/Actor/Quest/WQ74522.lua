require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74522 = class("Quest74522", QuestActorProxy)
Quest74522.defaultAlias = "Quest74522"
local clientData
local this
local mainID
local actorAlias

function Quest74522:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74522:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452201"] = self.OnSubStart7452201, ["7452202"] = self.OnSubStart7452202}
end

function Quest74522:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452201"] = self.OnSubFinish7452201, ["7452202"] = self.OnSubFinish7452202}
end

function Quest74522:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74522:Start()
    print("Start")
end

function Quest74522:OnDestroy()
    print("OnDestroy")
end

function Quest74522:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74522:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74522:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74522:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74522:OnSubStart7452201(arg1)
    print("OnSubStart7452201")
end

function Quest74522:OnSubFinish7452201(arg1)
    print("OnSubFinish7452201")
end

function Quest74522:OnSubStart7452202(arg1)
    print("OnSubStart7452202")
    this:ShowBlackScreenWithDialogText(0.2, 2, 0.2, nil, nil, nil, 0, false, true)
end

function Quest74522:OnSubFinish7452202(arg1)
    print("OnSubFinish7452202")
end

return Quest74522
