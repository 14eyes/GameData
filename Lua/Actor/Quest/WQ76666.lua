require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76666 = class("Quest76666", QuestActorProxy)
Quest76666.defaultAlias = "Quest76666"
local clientData
local this
local mainID
local actorAlias

function Quest76666:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76666:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7666601"] = self.OnSubStart7666601}
end

function Quest76666:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7666601"] = self.OnSubFinish7666601}
end

function Quest76666:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76666:Start()
    print("Start")
end

function Quest76666:OnDestroy()
    print("OnDestroy")
end

function Quest76666:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76666:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76666:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76666:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76666:OnSubStart7666601(arg1)
    print("OnSubStart7666601")
end

function Quest76666:OnSubFinish7666601(arg1)
    print("OnSubFinish7666601")
end

return Quest76666
