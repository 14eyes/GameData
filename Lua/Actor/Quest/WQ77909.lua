require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77909 = class("Quest77909", QuestActorProxy)
Quest77909.defaultAlias = "Quest77909"
local clientData
local this
local mainID
local actorAlias

function Quest77909:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77909:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790901"] = self.OnSubStart7790901}
end

function Quest77909:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790901"] = self.OnSubFinish7790901}
end

function Quest77909:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77909:Start()
    print("Start")
end

function Quest77909:OnDestroy()
    print("OnDestroy")
end

function Quest77909:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77909:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77909:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77909:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77909:OnSubStart7790901(arg1)
    print("OnSubStart7790901")
end

function Quest77909:OnSubFinish7790901(arg1)
    print("OnSubFinish7790901")
end

return Quest77909
