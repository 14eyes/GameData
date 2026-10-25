require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77149 = class("Quest77149", QuestActorProxy)
Quest77149.defaultAlias = "Quest77149"
local clientData
local this
local mainID
local actorAlias

function Quest77149:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77149:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7714901"] = self.OnSubStart7714901, ["7714902"] = self.OnSubStart7714902}
end

function Quest77149:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7714901"] = self.OnSubFinish7714901, ["7714902"] = self.OnSubFinish7714902}
end

function Quest77149:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77149:Start()
    print("Start")
end

function Quest77149:OnDestroy()
    print("OnDestroy")
end

function Quest77149:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77149:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77149:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77149:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77149:OnSubStart7714901(arg1)
    print("OnSubStart7714901")
end

function Quest77149:OnSubFinish7714901(arg1)
    print("OnSubFinish7714901")
end

function Quest77149:OnSubStart7714902(arg1)
    print("OnSubStart7714902")
end

function Quest77149:OnSubFinish7714902(arg1)
    print("OnSubFinish7714902")
end

return Quest77149
