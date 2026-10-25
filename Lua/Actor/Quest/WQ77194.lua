require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77194 = class("Quest77194", QuestActorProxy)
Quest77194.defaultAlias = "Quest77194"
local clientData
local this
local mainID
local actorAlias

function Quest77194:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77194:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7719401"] = self.OnSubStart7719401}
end

function Quest77194:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7719401"] = self.OnSubFinish7719401}
end

function Quest77194:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77194:Start()
    print("Start")
end

function Quest77194:OnDestroy()
    print("OnDestroy")
end

function Quest77194:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77194:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77194:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77194:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77194:OnSubStart7719401(arg1)
    print("OnSubStart7719401")
end

function Quest77194:OnSubFinish7719401(arg1)
    print("OnSubFinish7719401")
end

return Quest77194
