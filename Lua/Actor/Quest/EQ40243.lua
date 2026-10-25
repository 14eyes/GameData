require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40243 = class("Quest40243", QuestActorProxy)
Quest40243.defaultAlias = "Quest40243"
local clientData
local this
local mainID
local actorAlias

function Quest40243:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest40243:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4024301"] = self.OnSubStart4024301}
end

function Quest40243:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4024301"] = self.OnSubFinish4024301}
end

function Quest40243:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40243:Start()
    print("Start")
end

function Quest40243:OnDestroy()
    print("OnDestroy")
end

function Quest40243:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40243:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40243:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest40243:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40243:OnSubStart4024301(arg1)
    print("OnSubStart4024301")
end

function Quest40243:OnSubFinish4024301(arg1)
    print("OnSubFinish4024301")
end

return Quest40243
