require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76109 = class("Quest76109", QuestActorProxy)
Quest76109.defaultAlias = "Quest76109"
local clientData
local this
local mainID
local actorAlias

function Quest76109:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76109:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7610901"] = self.OnSubStart7610901,
        ["7610902"] = self.OnSubStart7610902,
        ["7610903"] = self.OnSubStart7610903,
        ["7610904"] = self.OnSubStart7610904
    }
end

function Quest76109:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7610901"] = self.OnSubFinish7610901,
        ["7610902"] = self.OnSubFinish7610902,
        ["7610903"] = self.OnSubFinish7610903,
        ["7610904"] = self.OnSubFinish7610904
    }
end

function Quest76109:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76109:Start()
    print("Start")
end

function Quest76109:OnDestroy()
    print("OnDestroy")
end

function Quest76109:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76109:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76109:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76109:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76109:OnSubStart7610901(arg1)
    print("OnSubStart7610901")
end

function Quest76109:OnSubFinish7610901(arg1)
    print("OnSubFinish7610901")
end

function Quest76109:OnSubStart7610902(arg1)
    print("OnSubStart7610902")
end

function Quest76109:OnSubFinish7610902(arg1)
    print("OnSubFinish7610902")
end

function Quest76109:OnSubStart7610903(arg1)
    print("OnSubStart7610903")
end

function Quest76109:OnSubFinish7610903(arg1)
    print("OnSubFinish7610903")
end

function Quest76109:OnSubStart7610904(arg1)
    print("OnSubStart7610904")
end

function Quest76109:OnSubFinish7610904(arg1)
    print("OnSubFinish7610904")
end

return Quest76109
