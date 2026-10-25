require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77906 = class("Quest77906", QuestActorProxy)
Quest77906.defaultAlias = "Quest77906"
local clientData
local this
local mainID
local actorAlias

function Quest77906:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77906:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790601"] = self.OnSubStart7790601}
end

function Quest77906:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790601"] = self.OnSubFinish7790601}
end

function Quest77906:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77906:Start()
    print("Start")
end

function Quest77906:OnDestroy()
    print("OnDestroy")
end

function Quest77906:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77906:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77906:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77906:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77906:OnSubStart7790601(arg1)
    print("OnSubStart7790601")
end

function Quest77906:OnSubFinish7790601(arg1)
    print("OnSubFinish7790601")
end

return Quest77906
