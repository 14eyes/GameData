require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12046 = class("Quest12046", QuestActorProxy)
Quest12046.defaultAlias = "Quest12046"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest12046:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest12046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1204601"] = self.OnSubStart1204601,
        ["1204602"] = self.OnSubStart1204602,
        ["1204603"] = self.OnSubStart1204603,
        ["1204604"] = self.OnSubStart1204604,
        ["1204605"] = self.OnSubStart1204605
    }
end

function Quest12046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1204601"] = self.OnSubFinish1204601,
        ["1204602"] = self.OnSubFinish1204602,
        ["1204603"] = self.OnSubFinish1204603,
        ["1204604"] = self.OnSubFinish1204604,
        ["1204605"] = self.OnSubFinish1204605
    }
end

function Quest12046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12046:Start()
    print("Start")
end

function Quest12046:OnDestroy()
    print("OnDestroy")
end

function Quest12046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12046:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest12046:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest12046:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest12046:OnSubStart1204601(arg1)
    print("OnSubStart1204601")
end

function Quest12046:OnSubFinish1204601(arg1)
    print("OnSubFinish1204601")
end

function Quest12046:OnSubStart1204602(arg1)
    print("OnSubStart1204602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204602, 0, 20, 1, npcs.Npc3210.id)
    this:GetQuestNpcActor(npcs.Npc3210.alias, 12046):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc3211.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc3211.alias, 12046):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc3038.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc3038.alias, 12046):DoFreeStyle(1060, true, nil, true, true, false, false)
end

function Quest12046:OnSubFinish1204602(arg1)
    print("OnSubFinish1204602")
end

function Quest12046:OnSubStart1204603(arg1)
    print("OnSubStart1204603")
    this:NpcCreateWithNpcTrigger(npcs.Npc15037.id, 0, 15, 1204603)
    this:GetQuestNpcActor(npcs.Npc3038.alias, 12046):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc3210.alias, 12046):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc3211.alias, 12046):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15038.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc3211.alias, 12046):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc3210.alias, 12046):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc3038.alias, 12046):DisableInteeHeadCtrl(true)
end

function Quest12046:OnSubFinish1204603(arg1)
    print("OnSubFinish1204603")
    this:SafeDestroyQuestNpc(npcs.Npc15037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3038.alias, 1202)
    this:SafeDestroyQuestNpc(npcs.Npc3210.alias, 1202)
    this:SafeDestroyQuestNpc(npcs.Npc3211.alias, 1202)
    this:SafeDestroyQuestNpc(npcs.Npc15038.alias, 3)
end

function Quest12046:OnSubStart1204604(arg1)
    print("OnSubStart1204604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204604, 0, 5, 1.5, npcs.Npc1034.id)
end

function Quest12046:OnSubFinish1204604(arg1)
    print("OnSubFinish1204604")
    this:DestroyQuestNpcActor(npcs.Npc1034.alias, 3)
end

function Quest12046:OnSubStart1204605(arg1)
    print("OnSubStart1204605")
end

function Quest12046:OnSubFinish1204605(arg1)
    print("OnSubFinish1204605")
end

return Quest12046
