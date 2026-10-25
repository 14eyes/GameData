require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75100 = class("Quest75100", QuestActorProxy)
Quest75100.defaultAlias = "Quest75100"
local clientData
local this
local mainID
local actorAlias

function Quest75100:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75100:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7510001"] = self.OnSubStart7510001}
end

function Quest75100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7510001"] = self.OnSubFinish7510001}
end

function Quest75100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75100:Start()
    print("Start")
end

function Quest75100:OnDestroy()
    print("OnDestroy")
end

function Quest75100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75100:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75100:OnSubStart7510001(arg1)
    print("OnSubStart7510001")
end

function Quest75100:OnSubFinish7510001(arg1)
    print("OnSubFinish7510001")
end

return Quest75100
