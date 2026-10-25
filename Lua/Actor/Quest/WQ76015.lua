require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76015 = class("Quest76015", QuestActorProxy)
Quest76015.defaultAlias = "Quest76015"
local clientData
local this
local mainID
local actorAlias

function Quest76015:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76015:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7601501"] = self.OnSubStart7601501, ["7601502"] = self.OnSubStart7601502}
end

function Quest76015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7601501"] = self.OnSubFinish7601501, ["7601502"] = self.OnSubFinish7601502}
end

function Quest76015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76015:Start()
    print("Start")
end

function Quest76015:OnDestroy()
    print("OnDestroy")
end

function Quest76015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76015:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76015:OnSubStart7601501(arg1)
    print("OnSubStart7601501")
    this:DeployStoryByQuest(147601501)
end

function Quest76015:OnSubFinish7601501(arg1)
    print("OnSubFinish7601501")
end

function Quest76015:OnSubStart7601502(arg1)
    print("OnSubStart7601502")
    this:DeployStoryByQuest(147601501)
end

function Quest76015:OnSubFinish7601502(arg1)
    print("OnSubFinish7601502")
    this:CancelStoryByQuest(147601501)
end

return Quest76015
