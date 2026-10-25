require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70113 = class("Quest70113", QuestActorProxy)
Quest70113.defaultAlias = "Quest70113"
local clientData
local this
local mainID
local actorAlias

function Quest70113:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70113:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7011301"] = self.OnSubStart7011301}
end

function Quest70113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7011301"] = self.OnSubFinish7011301}
end

function Quest70113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70113:Start()
    print("Start")
end

function Quest70113:OnDestroy()
    print("OnDestroy")
end

function Quest70113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70113:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70113:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70113:OnSubStart7011301(arg1)
    print("OnSubStart7011301")
end

function Quest70113:OnSubFinish7011301(arg1)
    print("OnSubFinish7011301")
end

return Quest70113
