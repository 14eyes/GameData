require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76226 = class("Quest76226", QuestActorProxy)
Quest76226.defaultAlias = "Quest76226"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76226:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76226:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7622604"] = self.OnSubStart7622604,
        ["7622601"] = self.OnSubStart7622601,
        ["7622602"] = self.OnSubStart7622602,
        ["7622603"] = self.OnSubStart7622603
    }
end

function Quest76226:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7622604"] = self.OnSubFinish7622604,
        ["7622601"] = self.OnSubFinish7622601,
        ["7622602"] = self.OnSubFinish7622602,
        ["7622603"] = self.OnSubFinish7622603
    }
end

function Quest76226:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76226:Start()
    print("Start")
end

function Quest76226:OnDestroy()
    print("OnDestroy")
end

function Quest76226:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76226:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76226:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76226:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76226:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76226:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76226:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76226:OnSubStart7622604(arg1)
    print("OnSubStart7622604")
end

function Quest76226:OnSubFinish7622604(arg1)
    print("OnSubFinish7622604")
end

function Quest76226:OnSubStart7622601(arg1)
    print("OnSubStart7622601")
    this:NpcCreateWithNpcTrigger(npcs.Npc15702.id, 0, 7, 7622601)
end

function Quest76226:OnSubFinish7622601(arg1)
    print("OnSubFinish7622601")
    this:NpcDestroyImmediately(102, npcs.Npc15702.alias)
end

function Quest76226:OnSubStart7622602(arg1)
    print("OnSubStart7622602")
end

function Quest76226:OnSubFinish7622602(arg1)
    print("OnSubFinish7622602")
end

function Quest76226:OnSubStart7622603(arg1)
    print("OnSubStart7622603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7622603, 0, 50, 2, npcs.Npc15702.id)
end

function Quest76226:OnSubFinish7622603(arg1)
    print("OnSubFinish7622603")
    this:NpcDestroyImmediately(102, npcs.Npc15702.alias)
end

return Quest76226
