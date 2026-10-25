require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40221 = class("Quest40221", QuestActorProxy)
Quest40221.defaultAlias = "Quest40221"
local clientData
local this
local mainID
local actorAlias

function Quest40221:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40221:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4022101"] = self.OnSubStart4022101}
end

function Quest40221:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4022101"] = self.OnSubFinish4022101}
end

function Quest40221:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40221:Start()
    print("Start")
end

function Quest40221:OnDestroy()
    print("OnDestroy")
end

function Quest40221:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40221:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40221:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest40221:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40221:OnSubStart4022101(arg1)
    print("OnSubStart4022101")
end

function Quest40221:OnSubFinish4022101(arg1)
    print("OnSubFinish4022101")
end

return Quest40221
