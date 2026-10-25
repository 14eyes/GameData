require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74529 = class("Quest74529", QuestActorProxy)
Quest74529.defaultAlias = "Quest74529"
local clientData
local this
local mainID
local actorAlias

function Quest74529:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74529:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452901"] = self.OnSubStart7452901, ["7452902"] = self.OnSubStart7452902}
end

function Quest74529:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452901"] = self.OnSubFinish7452901, ["7452902"] = self.OnSubFinish7452902}
end

function Quest74529:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74529:Start()
    print("Start")
end

function Quest74529:OnDestroy()
    print("OnDestroy")
end

function Quest74529:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74529:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74529:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74529:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74529:OnSubStart7452901(arg1)
    print("OnSubStart7452901")
end

function Quest74529:OnSubFinish7452901(arg1)
    print("OnSubFinish7452901")
end

function Quest74529:OnSubStart7452902(arg1)
    print("OnSubStart7452902")
end

function Quest74529:OnSubFinish7452902(arg1)
    print("OnSubFinish7452902")
end

return Quest74529
