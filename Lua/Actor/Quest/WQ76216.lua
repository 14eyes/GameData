require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76216 = class("Quest76216", QuestActorProxy)
Quest76216.defaultAlias = "Quest76216"
local clientData
local this
local mainID
local actorAlias

function Quest76216:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76216:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7621601"] = self.OnSubStart7621601}
end

function Quest76216:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7621601"] = self.OnSubFinish7621601}
end

function Quest76216:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76216:Start()
    print("Start")
end

function Quest76216:OnDestroy()
    print("OnDestroy")
end

function Quest76216:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76216:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76216:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76216:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76216:OnSubStart7621601(arg1)
    print("OnSubStart7621601")
end

function Quest76216:OnSubFinish7621601(arg1)
    print("OnSubFinish7621601")
end

return Quest76216
