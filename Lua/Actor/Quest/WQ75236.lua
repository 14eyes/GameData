require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75236 = class("Quest75236", QuestActorProxy)
Quest75236.defaultAlias = "Quest75236"
local clientData
local this
local mainID
local actorAlias

function Quest75236:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75236:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7523601"] = self.OnSubStart7523601}
end

function Quest75236:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7523601"] = self.OnSubFinish7523601}
end

function Quest75236:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75236:Start()
    print("Start")
end

function Quest75236:OnDestroy()
    print("OnDestroy")
end

function Quest75236:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75236:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75236:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75236:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75236:OnSubStart7523601(arg1)
    print("OnSubStart7523601")
end

function Quest75236:OnSubFinish7523601(arg1)
    print("OnSubFinish7523601")
end

return Quest75236
