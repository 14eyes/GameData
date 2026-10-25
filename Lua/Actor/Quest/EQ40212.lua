require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40212 = class("Quest40212", QuestActorProxy)
Quest40212.defaultAlias = "Quest40212"
local clientData
local this
local mainID
local actorAlias

function Quest40212:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40212:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4021201"] = self.OnSubStart4021201}
end

function Quest40212:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4021201"] = self.OnSubFinish4021201}
end

function Quest40212:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40212:Start()
    print("Start")
end

function Quest40212:OnDestroy()
    print("OnDestroy")
end

function Quest40212:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40212:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40212:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest40212:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40212:OnSubStart4021201(arg1)
    print("OnSubStart4021201")
end

function Quest40212:OnSubFinish4021201(arg1)
    print("OnSubFinish4021201")
end

return Quest40212
