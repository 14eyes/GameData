require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77902 = class("Quest77902", QuestActorProxy)
Quest77902.defaultAlias = "Quest77902"
local clientData
local this
local mainID
local actorAlias

function Quest77902:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77902:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7790201"] = self.OnSubStart7790201}
end

function Quest77902:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7790201"] = self.OnSubFinish7790201}
end

function Quest77902:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77902:Start()
    print("Start")
end

function Quest77902:OnDestroy()
    print("OnDestroy")
end

function Quest77902:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77902:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77902:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77902:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77902:OnSubStart7790201(arg1)
    print("OnSubStart7790201")
end

function Quest77902:OnSubFinish7790201(arg1)
    print("OnSubFinish7790201")
end

return Quest77902
