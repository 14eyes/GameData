require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76224 = class("Quest76224", QuestActorProxy)
Quest76224.defaultAlias = "Quest76224"
local clientData
local this
local mainID
local actorAlias

function Quest76224:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76224:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7622401"] = self.OnSubStart7622401, ["7622402"] = self.OnSubStart7622402}
end

function Quest76224:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7622401"] = self.OnSubFinish7622401, ["7622402"] = self.OnSubFinish7622402}
end

function Quest76224:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7622402"] = self.OnSubFailed7622402}
end

function Quest76224:Start()
    print("Start")
end

function Quest76224:OnDestroy()
    print("OnDestroy")
end

function Quest76224:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76224:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76224:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76224:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76224:OnSubStart7622401(arg1)
    print("OnSubStart7622401")
end

function Quest76224:OnSubFinish7622401(arg1)
    print("OnSubFinish7622401")
end

function Quest76224:OnSubStart7622402(arg1)
    print("OnSubStart7622402")
end

function Quest76224:OnSubFinish7622402(arg1)
    print("OnSubFinish7622402")
end

function Quest76224:OnSubFailed7622402(arg1)
    print("OnSubFailed7622402")
    this:RecycleAllRes()
end

return Quest76224
