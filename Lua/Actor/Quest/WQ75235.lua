require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75235 = class("Quest75235", QuestActorProxy)
Quest75235.defaultAlias = "Quest75235"
local clientData
local this
local mainID
local actorAlias

function Quest75235:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75235:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7523501"] = self.OnSubStart7523501}
end

function Quest75235:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7523501"] = self.OnSubFinish7523501}
end

function Quest75235:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75235:Start()
    print("Start")
end

function Quest75235:OnDestroy()
    print("OnDestroy")
end

function Quest75235:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75235:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75235:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75235:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75235:OnSubStart7523501(arg1)
    print("OnSubStart7523501")
end

function Quest75235:OnSubFinish7523501(arg1)
    print("OnSubFinish7523501")
end

return Quest75235
