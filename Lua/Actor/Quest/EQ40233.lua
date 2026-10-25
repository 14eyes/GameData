require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40233 = class("Quest40233", QuestActorProxy)
Quest40233.defaultAlias = "Quest40233"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest40233:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest40233:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4023301"] = self.OnSubStart4023301}
end

function Quest40233:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4023301"] = self.OnSubFinish4023301}
end

function Quest40233:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40233:Start()
    print("Start")
end

function Quest40233:OnDestroy()
    print("OnDestroy")
end

function Quest40233:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40233:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40233:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:RecycleAllRes()
    this:ClearNarratorTask()
end

function Quest40233:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ClearNarratorTask()
end

function Quest40233:OnSubStart4023301(arg1)
    print("OnSubStart4023301")
    actorUtils.FinishQuestID(false, 4023301)
end

function Quest40233:OnSubFinish4023301(arg1)
    print("OnSubFinish4023301")
end

return Quest40233
