require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71166 = class("Quest71166", QuestActorProxy)
Quest71166.defaultAlias = "Quest71166"
local clientData
local this
local mainID
local actorAlias

function Quest71166:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71166:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7116601"] = self.OnSubStart7116601}
end

function Quest71166:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7116601"] = self.OnSubFinish7116601}
end

function Quest71166:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71166:Start()
    print("Start")
end

function Quest71166:OnDestroy()
    print("OnDestroy")
end

function Quest71166:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71166:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71166:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
end

function Quest71166:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest71166:OnSubStart7116601(arg1)
    print("OnSubStart7116601")
end

function Quest71166:OnSubFinish7116601(arg1)
    print("OnSubFinish7116601")
end

return Quest71166
