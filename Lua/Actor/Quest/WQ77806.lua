require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77806 = class("Quest77806", QuestActorProxy)
Quest77806.defaultAlias = "Quest77806"
local clientData
local this
local mainID
local actorAlias

function Quest77806:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77806:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7780601"] = self.OnSubStart7780601}
end

function Quest77806:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7780601"] = self.OnSubFinish7780601}
end

function Quest77806:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77806:Start()
    print("Start")
end

function Quest77806:OnDestroy()
    print("OnDestroy")
end

function Quest77806:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77806:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77806:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77806:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77806:OnSubStart7780601(arg1)
    print("OnSubStart7780601")
end

function Quest77806:OnSubFinish7780601(arg1)
    print("OnSubFinish7780601")
end

return Quest77806
