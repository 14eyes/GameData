require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75169 = class("Quest75169", QuestActorProxy)
Quest75169.defaultAlias = "Quest75169"
local clientData
local this
local mainID
local actorAlias

function Quest75169:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75169:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7516901"] = self.OnSubStart7516901,
        ["7516902"] = self.OnSubStart7516902,
        ["7516903"] = self.OnSubStart7516903
    }
end

function Quest75169:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7516901"] = self.OnSubFinish7516901,
        ["7516902"] = self.OnSubFinish7516902,
        ["7516903"] = self.OnSubFinish7516903
    }
end

function Quest75169:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75169:Start()
    print("Start")
end

function Quest75169:OnDestroy()
    print("OnDestroy")
end

function Quest75169:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75169:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75169:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75169:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75169:OnSubStart7516901(arg1)
    print("OnSubStart7516901")
end

function Quest75169:OnSubFinish7516901(arg1)
    print("OnSubFinish7516901")
end

function Quest75169:OnSubStart7516902(arg1)
    print("OnSubStart7516902")
end

function Quest75169:OnSubFinish7516902(arg1)
    print("OnSubFinish7516902")
end

function Quest75169:OnSubStart7516903(arg1)
    print("OnSubStart7516903")
end

function Quest75169:OnSubFinish7516903(arg1)
    print("OnSubFinish7516903")
end

return Quest75169
