require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77169 = class("Quest77169", QuestActorProxy)
Quest77169.defaultAlias = "Quest77169"
local clientData
local this
local mainID
local actorAlias

function Quest77169:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77169:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7716901"] = self.OnSubStart7716901}
end

function Quest77169:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7716901"] = self.OnSubFinish7716901}
end

function Quest77169:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77169:Start()
    print("Start")
end

function Quest77169:OnDestroy()
    print("OnDestroy")
end

function Quest77169:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77169:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77169:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77169:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77169:OnSubStart7716901(arg1)
    print("OnSubStart7716901")
end

function Quest77169:OnSubFinish7716901(arg1)
    print("OnSubFinish7716901")
end

return Quest77169
