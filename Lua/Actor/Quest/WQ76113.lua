require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76113 = class("Quest76113", QuestActorProxy)
Quest76113.defaultAlias = "Quest76113"
local clientData
local this
local mainID
local actorAlias

function Quest76113:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76113:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7611301"] = self.OnSubStart7611301, ["7611302"] = self.OnSubStart7611302}
end

function Quest76113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7611301"] = self.OnSubFinish7611301, ["7611302"] = self.OnSubFinish7611302}
end

function Quest76113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76113:Start()
    print("Start")
end

function Quest76113:OnDestroy()
    print("OnDestroy")
end

function Quest76113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76113:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76113:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76113:OnSubStart7611301(arg1)
    print("OnSubStart7611301")
end

function Quest76113:OnSubFinish7611301(arg1)
    print("OnSubFinish7611301")
end

function Quest76113:OnSubStart7611302(arg1)
    print("OnSubStart7611302")
end

function Quest76113:OnSubFinish7611302(arg1)
    print("OnSubFinish7611302")
end

return Quest76113
