require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76137 = class("Quest76137", QuestActorProxy)
Quest76137.defaultAlias = "Quest76137"
local clientData
local this
local mainID
local actorAlias

function Quest76137:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76137:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7613701"] = self.OnSubStart7613701}
end

function Quest76137:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7613701"] = self.OnSubFinish7613701}
end

function Quest76137:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76137:Start()
    print("Start")
end

function Quest76137:OnDestroy()
    print("OnDestroy")
end

function Quest76137:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76137:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76137:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76137:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76137:OnSubStart7613701(arg1)
    print("OnSubStart7613701")
    actorUtils.FinishQuestID(false, 7613701)
end

function Quest76137:OnSubFinish7613701(arg1)
    print("OnSubFinish7613701")
end

return Quest76137
