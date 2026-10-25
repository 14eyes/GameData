require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76188 = class("Quest76188", QuestActorProxy)
Quest76188.defaultAlias = "Quest76188"
local clientData
local this
local mainID
local actorAlias

function Quest76188:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76188:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7618801"] = self.OnSubStart7618801}
end

function Quest76188:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7618801"] = self.OnSubFinish7618801}
end

function Quest76188:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76188:Start()
    print("Start")
end

function Quest76188:OnDestroy()
    print("OnDestroy")
end

function Quest76188:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76188:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76188:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76188:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76188:OnSubStart7618801(arg1)
    print("OnSubStart7618801")
end

function Quest76188:OnSubFinish7618801(arg1)
    print("OnSubFinish7618801")
end

return Quest76188
