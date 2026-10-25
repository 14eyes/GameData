require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76507 = class("Quest76507", QuestActorProxy)
Quest76507.defaultAlias = "Quest76507"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76507:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76507:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650701"] = self.OnSubStart7650701}
end

function Quest76507:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650701"] = self.OnSubFinish7650701}
end

function Quest76507:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76507:Start()
    print("Start")
end

function Quest76507:OnDestroy()
    print("OnDestroy")
end

function Quest76507:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76507:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76507:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7650701N1005Trigger")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Paimon.alias, 76507):DestroyWithDisappear(false, nil)
    end)
end

function Quest76507:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76507:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76507:OnSubStart7650701(arg1)
    print("OnSubStart7650701")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7650701, 0, 5, 1, npcs.Paimon.id)
end

function Quest76507:OnSubFinish7650701(arg1)
    print("OnSubFinish7650701")
    this:GetQuestNpcActor(npcs.Paimon.alias, 76507):DestroyWithDisappear(false, nil)
end

return Quest76507
