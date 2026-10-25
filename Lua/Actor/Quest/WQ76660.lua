require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76660 = class("Quest76660", QuestActorProxy)
Quest76660.defaultAlias = "Quest76660"
local clientData
local this
local mainID
local actorAlias

function Quest76660:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76660:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7666001"] = self.OnSubStart7666001}
end

function Quest76660:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7666001"] = self.OnSubFinish7666001}
end

function Quest76660:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76660:Start()
    print("Start")
end

function Quest76660:OnDestroy()
    print("OnDestroy")
end

function Quest76660:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76660:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76660:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76660:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76660:OnSubStart7666001(arg1)
    print("OnSubStart7666001")
end

function Quest76660:OnSubFinish7666001(arg1)
    print("OnSubFinish7666001")
end

return Quest76660
