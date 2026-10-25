require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74521 = class("Quest74521", QuestActorProxy)
Quest74521.defaultAlias = "Quest74521"
local clientData
local this
local mainID
local actorAlias

function Quest74521:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74521:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452101"] = self.OnSubStart7452101, ["7452102"] = self.OnSubStart7452102}
end

function Quest74521:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452101"] = self.OnSubFinish7452101, ["7452102"] = self.OnSubFinish7452102}
end

function Quest74521:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74521:Start()
    print("Start")
end

function Quest74521:OnDestroy()
    print("OnDestroy")
end

function Quest74521:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74521:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74521:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74521:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74521:OnSubStart7452101(arg1)
    print("OnSubStart7452101")
end

function Quest74521:OnSubFinish7452101(arg1)
    print("OnSubFinish7452101")
end

function Quest74521:OnSubStart7452102(arg1)
    print("OnSubStart7452102")
    this:ShowBlackScreenWithDialogText(0.2, 2, 0.2, nil, nil, nil, 0, false, true)
end

function Quest74521:OnSubFinish7452102(arg1)
    print("OnSubFinish7452102")
end

return Quest74521
