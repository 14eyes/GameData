require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40232 = class("Quest40232", QuestActorProxy)
Quest40232.defaultAlias = "Quest40232"
local clientData
local this
local mainID
local actorAlias

function Quest40232:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40232:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4023201"] = self.OnSubStart4023201}
end

function Quest40232:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4023201"] = self.OnSubFinish4023201}
end

function Quest40232:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40232:Start()
    print("Start")
end

function Quest40232:OnDestroy()
    print("OnDestroy")
end

function Quest40232:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40232:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40232:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest40232:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40232:OnSubStart4023201(arg1)
    print("OnSubStart4023201")
end

function Quest40232:OnSubFinish4023201(arg1)
    print("OnSubFinish4023201")
end

return Quest40232
