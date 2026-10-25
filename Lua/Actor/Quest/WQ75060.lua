require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75060 = class("Quest75060", QuestActorProxy)
Quest75060.defaultAlias = "Quest75060"
local clientData
local this
local mainID
local actorAlias

function Quest75060:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75060:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7506001"] = self.OnSubStart7506001, ["7506002"] = self.OnSubStart7506002}
end

function Quest75060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7506001"] = self.OnSubFinish7506001, ["7506002"] = self.OnSubFinish7506002}
end

function Quest75060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75060:Start()
    print("Start")
end

function Quest75060:OnDestroy()
    print("OnDestroy")
end

function Quest75060:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75060:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75060:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75060:OnSubStart7506001(arg1)
    print("OnSubStart7506001")
end

function Quest75060:OnSubFinish7506001(arg1)
    print("OnSubFinish7506001")
end

function Quest75060:OnSubStart7506002(arg1)
    print("OnSubStart7506002")
end

function Quest75060:OnSubFinish7506002(arg1)
    print("OnSubFinish7506002")
end

return Quest75060
