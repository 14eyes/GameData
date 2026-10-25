require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70130 = class("Quest70130", QuestActorProxy)
Quest70130.defaultAlias = "Quest70130"
local clientData
local this
local mainID
local actorAlias

function Quest70130:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70130:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7013001"] = self.OnSubStart7013001}
end

function Quest70130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7013001"] = self.OnSubFinish7013001}
end

function Quest70130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70130:Start()
    print("Start")
end

function Quest70130:OnDestroy()
    print("OnDestroy")
end

function Quest70130:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70130:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70130:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70130:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70130:OnSubStart7013001(arg1)
    print("OnSubStart7013001")
    actorUtils.FinishQuestWithParam({false}, {7013001})
end

function Quest70130:OnSubFinish7013001(arg1)
    print("OnSubFinish7013001")
end

return Quest70130
