require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75184 = class("Quest75184", QuestActorProxy)
Quest75184.defaultAlias = "Quest75184"
local clientData
local this
local mainID
local actorAlias

function Quest75184:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75184:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7518401"] = self.OnSubStart7518401, ["7518402"] = self.OnSubStart7518402}
end

function Quest75184:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7518401"] = self.OnSubFinish7518401, ["7518402"] = self.OnSubFinish7518402}
end

function Quest75184:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75184:Start()
    print("Start")
end

function Quest75184:OnDestroy()
    print("OnDestroy")
end

function Quest75184:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75184:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75184:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75184:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75184:OnSubStart7518401(arg1)
    print("OnSubStart7518401")
end

function Quest75184:OnSubFinish7518401(arg1)
    print("OnSubFinish7518401")
end

function Quest75184:OnSubStart7518402(arg1)
    print("OnSubStart7518402")
end

function Quest75184:OnSubFinish7518402(arg1)
    print("OnSubFinish7518402")
end

return Quest75184
