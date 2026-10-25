require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76006 = class("Quest76006", QuestActorProxy)
Quest76006.defaultAlias = "Quest76006"
local clientData
local this
local mainID
local actorAlias

function Quest76006:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76006:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7600601"] = self.OnSubStart7600601}
end

function Quest76006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7600601"] = self.OnSubFinish7600601}
end

function Quest76006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76006:Start()
    print("Start")
end

function Quest76006:OnDestroy()
    print("OnDestroy")
end

function Quest76006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76006:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76006:OnSubStart7600601(arg1)
    print("OnSubStart7600601")
end

function Quest76006:OnSubFinish7600601(arg1)
    print("OnSubFinish7600601")
end

return Quest76006
