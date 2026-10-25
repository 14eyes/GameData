require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75203 = class("Quest75203", QuestActorProxy)
Quest75203.defaultAlias = "Quest75203"
local clientData
local this
local mainID
local actorAlias

function Quest75203:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75203:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7520302"] = self.OnSubStart7520302}
end

function Quest75203:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7520302"] = self.OnSubFinish7520302}
end

function Quest75203:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75203:Start()
    print("Start")
end

function Quest75203:OnDestroy()
    print("OnDestroy")
end

function Quest75203:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75203:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75203:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75203:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75203:OnSubStart7520302(arg1)
    print("OnSubStart7520302")
end

function Quest75203:OnSubFinish7520302(arg1)
    print("OnSubFinish7520302")
end

return Quest75203
