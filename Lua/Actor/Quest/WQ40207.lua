require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40207 = class("Quest40207", QuestActorProxy)
Quest40207.defaultAlias = "Quest40207"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40207:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40207:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4020701"] = self.OnSubStart4020701, ["4020702"] = self.OnSubStart4020702}
end

function Quest40207:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4020701"] = self.OnSubFinish4020701, ["4020702"] = self.OnSubFinish4020702}
end

function Quest40207:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40207:Start()
    print("Start")
end

function Quest40207:OnDestroy()
    print("OnDestroy")
end

function Quest40207:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40207:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40207:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 3)
    this:DestroyNpcTrigger("Q4020702N1312Trigger")
end

function Quest40207:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest40207:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40207:OnSubStart4020701(arg1)
    print("OnSubStart4020701")
end

function Quest40207:OnSubFinish4020701(arg1)
    print("OnSubFinish4020701")
    this:QuestNarratorTask(datas.NarratorWithId_4020701, nil)
end

function Quest40207:OnSubStart4020702(arg1)
    print("OnSubStart4020702")
    this:NpcCreateWithNpcTrigger(npcs.Npc1312.id, 0, 15, 4020702)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 40207):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 40207):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 40207):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 40207):DisableInteeHeadCtrl(true)
end

function Quest40207:OnSubFinish4020702(arg1)
    print("OnSubFinish4020702")
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 3)
end

return Quest40207
