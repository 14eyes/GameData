require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25034 = class("Quest25034", QuestActorProxy)
Quest25034.defaultAlias = "Quest25034"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest25034:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest25034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2503401"] = self.OnSubStart2503401,
        ["2503403"] = self.OnSubStart2503403,
        ["2503404"] = self.OnSubStart2503404
    }
end

function Quest25034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2503401"] = self.OnSubFinish2503401,
        ["2503403"] = self.OnSubFinish2503403,
        ["2503404"] = self.OnSubFinish2503404
    }
end

function Quest25034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25034:Start()
    print("Start")
end

function Quest25034:OnDestroy()
    print("OnDestroy")
end

function Quest25034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25034:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc14371.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14372.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14373.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14374.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14450.alias, 3)
    this:DestroyNpcTrigger("Q2503401N14371Trigger")
    this:DestroyNpcTrigger("Q2503404N14371Trigger")
end

function Quest25034:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest25034:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest25034:OnSubStart2503401(arg1)
    print("OnSubStart2503401")
    this:NpcCreateWithNpcTrigger(npcs.Npc14371.id, 0, 15, 2503401)
    this:GetQuestNpcActor(npcs.Npc14371.alias, 25034):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14372.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14373.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14373.alias, 25034):DoFreeStyle(1141, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14374.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14374.alias, 25034):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14450.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14450.alias, 25034):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest25034:OnSubFinish2503401(arg1)
    print("OnSubFinish2503401")
    this:SafeDestroyQuestNpc(npcs.Npc14373.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14374.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14450.alias, 3)
end

function Quest25034:OnSubStart2503403(arg1)
    print("OnSubStart2503403")
    this:CreateQuestNpc(arg1, npcs.Npc14371.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14372.id, 0, false, 0)
end

function Quest25034:OnSubFinish2503403(arg1)
    print("OnSubFinish2503403")
end

function Quest25034:OnSubStart2503404(arg1)
    print("OnSubStart2503404")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2503404, 0, 20, 0, npcs.Npc14371.id)
end

function Quest25034:OnSubFinish2503404(arg1)
    print("OnSubFinish2503404")
    this:SafeDestroyQuestNpc(npcs.Npc14371.alias, 3)
    this:ClearNarratorTask()
end

return Quest25034
