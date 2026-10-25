require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77168 = class("Quest77168", QuestActorProxy)
Quest77168.defaultAlias = "Quest77168"
local clientData
local this
local mainID
local actorAlias

function Quest77168:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77168:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7716801"] = self.OnSubStart7716801}
end

function Quest77168:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7716801"] = self.OnSubFinish7716801}
end

function Quest77168:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77168:Start()
    print("Start")
end

function Quest77168:OnDestroy()
    print("OnDestroy")
end

function Quest77168:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77168:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77168:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77168:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77168:OnSubStart7716801(arg1)
    print("OnSubStart7716801")
end

function Quest77168:OnSubFinish7716801(arg1)
    print("OnSubFinish7716801")
end

return Quest77168
