require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40209 = class("Quest40209", QuestActorProxy)
Quest40209.defaultAlias = "Quest40209"
local clientData
local this
local mainID
local actorAlias

function Quest40209:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40209:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4020901"] = self.OnSubStart4020901}
end

function Quest40209:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4020901"] = self.OnSubFinish4020901}
end

function Quest40209:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40209:Start()
    print("Start")
end

function Quest40209:OnDestroy()
    print("OnDestroy")
end

function Quest40209:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40209:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40209:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest40209:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40209:OnSubStart4020901(arg1)
    print("OnSubStart4020901")
end

function Quest40209:OnSubFinish4020901(arg1)
    print("OnSubFinish4020901")
end

return Quest40209
