require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76209 = class("Quest76209", QuestActorProxy)
Quest76209.defaultAlias = "Quest76209"
local clientData
local this
local mainID
local actorAlias

function Quest76209:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76209:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7620901"] = self.OnSubStart7620901,
        ["7620902"] = self.OnSubStart7620902,
        ["7620903"] = self.OnSubStart7620903,
        ["7620904"] = self.OnSubStart7620904
    }
end

function Quest76209:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7620901"] = self.OnSubFinish7620901,
        ["7620902"] = self.OnSubFinish7620902,
        ["7620903"] = self.OnSubFinish7620903,
        ["7620904"] = self.OnSubFinish7620904
    }
end

function Quest76209:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76209:Start()
    print("Start")
end

function Quest76209:OnDestroy()
    print("OnDestroy")
end

function Quest76209:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76209:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76209:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76209:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76209:OnSubStart7620901(arg1)
    print("OnSubStart7620901")
end

function Quest76209:OnSubFinish7620901(arg1)
    print("OnSubFinish7620901")
end

function Quest76209:OnSubStart7620902(arg1)
    print("OnSubStart7620902")
end

function Quest76209:OnSubFinish7620902(arg1)
    print("OnSubFinish7620902")
end

function Quest76209:OnSubStart7620903(arg1)
    print("OnSubStart7620903")
end

function Quest76209:OnSubFinish7620903(arg1)
    print("OnSubFinish7620903")
end

function Quest76209:OnSubStart7620904(arg1)
    print("OnSubStart7620904")
end

function Quest76209:OnSubFinish7620904(arg1)
    print("OnSubFinish7620904")
end

return Quest76209
