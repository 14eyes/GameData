require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77222 = class("Quest77222", QuestActorProxy)
Quest77222.defaultAlias = "Quest77222"
local clientData
local this
local mainID
local actorAlias

function Quest77222:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77222:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7722201"] = self.OnSubStart7722201, ["7722202"] = self.OnSubStart7722202}
end

function Quest77222:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7722201"] = self.OnSubFinish7722201, ["7722202"] = self.OnSubFinish7722202}
end

function Quest77222:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77222:Start()
    print("Start")
end

function Quest77222:OnDestroy()
    print("OnDestroy")
end

function Quest77222:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77222:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77222:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77222:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77222:OnSubStart7722201(arg1)
    print("OnSubStart7722201")
end

function Quest77222:OnSubFinish7722201(arg1)
    print("OnSubFinish7722201")
end

function Quest77222:OnSubStart7722202(arg1)
    print("OnSubStart7722202")
end

function Quest77222:OnSubFinish7722202(arg1)
    print("OnSubFinish7722202")
end

return Quest77222
