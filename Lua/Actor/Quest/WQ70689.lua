require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70689 = class("Quest70689", QuestActorProxy)
Quest70689.defaultAlias = "Quest70689"
local clientData
local this
local mainID
local actorAlias

function Quest70689:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70689:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7068901"] = self.OnSubStart7068901}
end

function Quest70689:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7068901"] = self.OnSubFinish7068901}
end

function Quest70689:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70689:Start()
    print("Start")
end

function Quest70689:OnDestroy()
    print("OnDestroy")
end

function Quest70689:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70689:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70689:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70689:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70689:OnSubStart7068901(arg1)
    print("OnSubStart7068901")
end

function Quest70689:OnSubFinish7068901(arg1)
    print("OnSubFinish7068901")
end

return Quest70689
