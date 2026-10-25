require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77161 = class("Quest77161", QuestActorProxy)
Quest77161.defaultAlias = "Quest77161"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77161:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77161:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7716105"] = self.OnSubStart7716105,
        ["7716107"] = self.OnSubStart7716107,
        ["7716109"] = self.OnSubStart7716109,
        ["7716101"] = self.OnSubStart7716101,
        ["7716102"] = self.OnSubStart7716102,
        ["7716103"] = self.OnSubStart7716103,
        ["7716106"] = self.OnSubStart7716106,
        ["7716108"] = self.OnSubStart7716108,
        ["7716110"] = self.OnSubStart7716110,
        ["7716104"] = self.OnSubStart7716104
    }
end

function Quest77161:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7716105"] = self.OnSubFinish7716105,
        ["7716107"] = self.OnSubFinish7716107,
        ["7716109"] = self.OnSubFinish7716109,
        ["7716101"] = self.OnSubFinish7716101,
        ["7716102"] = self.OnSubFinish7716102,
        ["7716103"] = self.OnSubFinish7716103,
        ["7716106"] = self.OnSubFinish7716106,
        ["7716108"] = self.OnSubFinish7716108,
        ["7716110"] = self.OnSubFinish7716110,
        ["7716104"] = self.OnSubFinish7716104
    }
end

function Quest77161:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77161:Start()
    print("Start")
end

function Quest77161:OnDestroy()
    print("OnDestroy")
end

function Quest77161:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77161:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77161:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77161:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77161:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77161:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77161:OnSubStart7716105(arg1)
    print("OnSubStart7716105")
    this:CreateQuestNpc(arg1, npcs.Npc22544.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22545.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc22730_1.id, 0, 10, 7716105)
    this:CreateQuestNpc(arg1, npcs.Npc22731_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22732_1.id, 0, false, 0)
end

function Quest77161:OnSubFinish7716105(arg1)
    print("OnSubFinish7716105")
end

function Quest77161:OnSubStart7716107(arg1)
    print("OnSubStart7716107")
    this:CreateQuestNpc(arg1, npcs.Npc22544.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22545.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22730_1.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc22731_1.id, 0, 6, 7716107)
    this:CreateQuestNpc(arg1, npcs.Npc22732_1.id, 0, false, 0)
end

function Quest77161:OnSubFinish7716107(arg1)
    print("OnSubFinish7716107")
end

function Quest77161:OnSubStart7716109(arg1)
    print("OnSubStart7716109")
    this:CreateQuestNpc(arg1, npcs.Npc22544.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22545.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22730_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22731_1.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc22732_1.id, 0, 12, 7716109)
end

function Quest77161:OnSubFinish7716109(arg1)
    print("OnSubFinish7716109")
end

function Quest77161:OnSubStart7716101(arg1)
    print("OnSubStart7716101")
    this:CreateQuestNpc(arg1, npcs.Npc22730_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22731_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22732_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22545.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22544.id, 0, false, 0)
end

function Quest77161:OnSubFinish7716101(arg1)
    print("OnSubFinish7716101")
end

function Quest77161:OnSubStart7716102(arg1)
    print("OnSubStart7716102")
    this:CreateQuestNpc(arg1, npcs.Npc22730_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22731_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22732_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22544.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22545.id, 0, false, 0)
end

function Quest77161:OnSubFinish7716102(arg1)
    print("OnSubFinish7716102")
end

function Quest77161:OnSubStart7716103(arg1)
    print("OnSubStart7716103")
    this:CreateQuestNpc(arg1, npcs.Npc22730_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22731_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22732_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22544.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22545.id, 0, false, 0)
end

function Quest77161:OnSubFinish7716103(arg1)
    print("OnSubFinish7716103")
end

function Quest77161:OnSubStart7716106(arg1)
    print("OnSubStart7716106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7716106, 0, 19, 1, npcs.Npc22730_1.id)
end

function Quest77161:OnSubFinish7716106(arg1)
    print("OnSubFinish7716106")
end

function Quest77161:OnSubStart7716108(arg1)
    print("OnSubStart7716108")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7716108, 0, 19, 1, npcs.Npc22731_1.id)
end

function Quest77161:OnSubFinish7716108(arg1)
    print("OnSubFinish7716108")
end

function Quest77161:OnSubStart7716110(arg1)
    print("OnSubStart7716110")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7716110, 0, 19, 1, npcs.Npc22732_1.id)
end

function Quest77161:OnSubFinish7716110(arg1)
    print("OnSubFinish7716110")
end

function Quest77161:OnSubStart7716104(arg1)
    print("OnSubStart7716104")
    this:CreateQuestNpc(arg1, npcs.Npc22544.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22545.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22730_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22731_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22732_1.id, 0, false, 0)
end

function Quest77161:OnSubFinish7716104(arg1)
    print("OnSubFinish7716104")
end

return Quest77161
