require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76230 = class("Quest76230", QuestActorProxy)
Quest76230.defaultAlias = "Quest76230"
local clientData
local this
local mainID
local actorAlias

function Quest76230:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76230:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7623001"] = self.OnSubStart7623001}
end

function Quest76230:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7623001"] = self.OnSubFinish7623001}
end

function Quest76230:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76230:Start()
    print("Start")
end

function Quest76230:OnDestroy()
    print("OnDestroy")
end

function Quest76230:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76230:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76230:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76230:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76230:OnSubStart7623001(arg1)
    print("OnSubStart7623001")
end

function Quest76230:OnSubFinish7623001(arg1)
    print("OnSubFinish7623001")
end

return Quest76230
