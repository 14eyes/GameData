require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3033 = class("Quest3033", QuestActorProxy)
Quest3033.defaultAlias = "Quest3033"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest3033:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest3033:OnSubStartHandlerBuild()
    self.subStartHandlers = {["303301"] = self.OnSubStart303301}
end

function Quest3033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["303301"] = self.OnSubFinish303301}
end

function Quest3033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3033:Start()
    print("Start")
end

function Quest3033:OnDestroy()
    print("OnDestroy")
end

function Quest3033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3033:OnSubStart303301(arg1)
    print("OnSubStart303301")
    actorUtils.FinishQuestID(false, 303301)
end

function Quest3033:OnSubFinish303301(arg1)
    print("OnSubFinish303301")
end

return Quest3033
