require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76154 = class("Quest76154", QuestActorProxy)
Quest76154.defaultAlias = "Quest76154"
local clientData
local this
local mainID
local actorAlias

function Quest76154:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76154:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7615401"] = self.OnSubStart7615401}
end

function Quest76154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7615401"] = self.OnSubFinish7615401}
end

function Quest76154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76154:Start()
    print("Start")
end

function Quest76154:OnDestroy()
    print("OnDestroy")
end

function Quest76154:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76154:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76154:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76154:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76154:OnSubStart7615401(arg1)
    print("OnSubStart7615401")
end

function Quest76154:OnSubFinish7615401(arg1)
    print("OnSubFinish7615401")
end

return Quest76154
