require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70117 = class("Quest70117", QuestActorProxy)
Quest70117.defaultAlias = "Quest70117"
local clientData
local this
local mainID
local actorAlias

function Quest70117:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70117:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7011701"] = self.OnSubStart7011701,
        ["7011702"] = self.OnSubStart7011702,
        ["7011703"] = self.OnSubStart7011703
    }
end

function Quest70117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7011701"] = self.OnSubFinish7011701,
        ["7011702"] = self.OnSubFinish7011702,
        ["7011703"] = self.OnSubFinish7011703
    }
end

function Quest70117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70117:Start()
    print("Start")
end

function Quest70117:OnDestroy()
    print("OnDestroy")
end

function Quest70117:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70117:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70117:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70117:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70117:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        actorUtils.FinishQuestWithParam({false}, {7011701})
    end
end

function Quest70117:OnSubStart7011701(arg1)
    print("OnSubStart7011701")
    actorUtils.FinishQuestWithParam({false}, {7011701})
end

function Quest70117:OnSubFinish7011701(arg1)
    print("OnSubFinish7011701")
end

function Quest70117:OnSubStart7011702(arg1)
    print("OnSubStart7011702")
    this:DeployStoryByQuest(147011703)
end

function Quest70117:OnSubFinish7011702(arg1)
    print("OnSubFinish7011702")
end

function Quest70117:OnSubStart7011703(arg1)
    print("OnSubStart7011703")
    this:DeployStoryByQuest(147011703)
end

function Quest70117:OnSubFinish7011703(arg1)
    print("OnSubFinish7011703")
    this:CancelStoryByQuest(147011703)
end

return Quest70117
