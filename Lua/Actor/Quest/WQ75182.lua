require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75182 = class("Quest75182", QuestActorProxy)
Quest75182.defaultAlias = "Quest75182"
local clientData
local this
local mainID
local actorAlias

function Quest75182:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75182:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7518201"] = self.OnSubStart7518201}
end

function Quest75182:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7518201"] = self.OnSubFinish7518201}
end

function Quest75182:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75182:Start()
    print("Start")
end

function Quest75182:OnDestroy()
    print("OnDestroy")
end

function Quest75182:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75182:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75182:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75182:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75182:OnSubStart7518201(arg1)
    print("OnSubStart7518201")
end

function Quest75182:OnSubFinish7518201(arg1)
    print("OnSubFinish7518201")
end

return Quest75182
