require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74533 = class("Quest74533", QuestActorProxy)
Quest74533.defaultAlias = "Quest74533"
local clientData
local this
local mainID
local actorAlias

function Quest74533:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74533:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7453301"] = self.OnSubStart7453301}
end

function Quest74533:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7453301"] = self.OnSubFinish7453301}
end

function Quest74533:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74533:Start()
    print("Start")
end

function Quest74533:OnDestroy()
    print("OnDestroy")
end

function Quest74533:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74533:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74533:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74533:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74533:OnSubStart7453301(arg1)
    print("OnSubStart7453301")
    actorUtils.FinishQuestWithParam({false}, {7453301})
end

function Quest74533:OnSubFinish7453301(arg1)
    print("OnSubFinish7453301")
end

return Quest74533
