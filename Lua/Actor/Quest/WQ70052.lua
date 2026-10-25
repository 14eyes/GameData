require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70052 = class("Quest70052", QuestActorProxy)
Quest70052.defaultAlias = "Quest70052"
local clientData
local this
local mainID
local actorAlias

function Quest70052:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70052:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7005201"] = self.OnSubStart7005201}
end

function Quest70052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7005201"] = self.OnSubFinish7005201}
end

function Quest70052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70052:Start()
    print("Start")
end

function Quest70052:OnDestroy()
    print("OnDestroy")
end

function Quest70052:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70052:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70052:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70052:OnSubStart7005201(arg1)
    print("OnSubStart7005201")
end

function Quest70052:OnSubFinish7005201(arg1)
    print("OnSubFinish7005201")
end

return Quest70052
