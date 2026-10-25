require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76662 = class("Quest76662", QuestActorProxy)
Quest76662.defaultAlias = "Quest76662"
local clientData
local this
local mainID
local actorAlias

function Quest76662:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76662:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7666201"] = self.OnSubStart7666201}
end

function Quest76662:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7666201"] = self.OnSubFinish7666201}
end

function Quest76662:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76662:Start()
    print("Start")
end

function Quest76662:OnDestroy()
    print("OnDestroy")
end

function Quest76662:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76662:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76662:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76662:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76662:OnSubStart7666201(arg1)
    print("OnSubStart7666201")
end

function Quest76662:OnSubFinish7666201(arg1)
    print("OnSubFinish7666201")
end

return Quest76662
