require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70053 = class("Quest70053", QuestActorProxy)
Quest70053.defaultAlias = "Quest70053"
local clientData
local this
local mainID
local actorAlias

function Quest70053:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70053:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7005301"] = self.OnSubStart7005301}
end

function Quest70053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7005301"] = self.OnSubFinish7005301}
end

function Quest70053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70053:Start()
    print("Start")
end

function Quest70053:OnDestroy()
    print("OnDestroy")
end

function Quest70053:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70053:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70053:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70053:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70053:OnSubStart7005301(arg1)
    print("OnSubStart7005301")
end

function Quest70053:OnSubFinish7005301(arg1)
    print("OnSubFinish7005301")
end

return Quest70053
