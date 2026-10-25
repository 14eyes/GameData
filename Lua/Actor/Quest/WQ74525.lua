require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74525 = class("Quest74525", QuestActorProxy)
Quest74525.defaultAlias = "Quest74525"
local clientData
local this
local mainID
local actorAlias

function Quest74525:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74525:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452501"] = self.OnSubStart7452501, ["7452502"] = self.OnSubStart7452502}
end

function Quest74525:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452501"] = self.OnSubFinish7452501, ["7452502"] = self.OnSubFinish7452502}
end

function Quest74525:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74525:Start()
    print("Start")
end

function Quest74525:OnDestroy()
    print("OnDestroy")
end

function Quest74525:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74525:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74525:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74525:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74525:OnSubStart7452501(arg1)
    print("OnSubStart7452501")
end

function Quest74525:OnSubFinish7452501(arg1)
    print("OnSubFinish7452501")
end

function Quest74525:OnSubStart7452502(arg1)
    print("OnSubStart7452502")
end

function Quest74525:OnSubFinish7452502(arg1)
    print("OnSubFinish7452502")
end

return Quest74525
