require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75665 = class("Quest75665", QuestActorProxy)
Quest75665.defaultAlias = "Quest75665"
local clientData
local this
local mainID
local actorAlias

function Quest75665:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75665:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566501"] = self.OnSubStart7566501}
end

function Quest75665:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566501"] = self.OnSubFinish7566501}
end

function Quest75665:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75665:Start()
    print("Start")
end

function Quest75665:OnDestroy()
    print("OnDestroy")
end

function Quest75665:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75665:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75665:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:CancelStoryByQuest(147566501)
end

function Quest75665:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75665:OnSubStart7566501(arg1)
    print("OnSubStart7566501")
    this:DeployStoryByQuest(147566501)
end

function Quest75665:OnSubFinish7566501(arg1)
    print("OnSubFinish7566501")
    this:ActionSafeCall(function(arg1)
        this:CancelStoryByQuest(147566501)
        this:ShowTutorialDialog(2121, nil)
    end)
end

return Quest75665
