require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76229 = class("Quest76229", QuestActorProxy)
Quest76229.defaultAlias = "Quest76229"
local clientData
local this
local mainID
local actorAlias

function Quest76229:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76229:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7622901"] = self.OnSubStart7622901}
end

function Quest76229:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7622901"] = self.OnSubFinish7622901}
end

function Quest76229:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76229:Start()
    print("Start")
end

function Quest76229:OnDestroy()
    print("OnDestroy")
end

function Quest76229:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76229:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76229:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76229:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76229:OnSubStart7622901(arg1)
    print("OnSubStart7622901")
end

function Quest76229:OnSubFinish7622901(arg1)
    print("OnSubFinish7622901")
end

return Quest76229
