require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77801 = class("Quest77801", QuestActorProxy)
Quest77801.defaultAlias = "Quest77801"
local clientData
local this
local mainID
local actorAlias

function Quest77801:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77801:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7780101"] = self.OnSubStart7780101}
end

function Quest77801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7780101"] = self.OnSubFinish7780101}
end

function Quest77801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77801:Start()
    print("Start")
end

function Quest77801:OnDestroy()
    print("OnDestroy")
end

function Quest77801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77801:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77801:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77801:OnSubStart7780101(arg1)
    print("OnSubStart7780101")
end

function Quest77801:OnSubFinish7780101(arg1)
    print("OnSubFinish7780101")
end

return Quest77801
