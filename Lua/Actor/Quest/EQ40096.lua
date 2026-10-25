require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40096 = class("Quest40096", QuestActorProxy)
Quest40096.defaultAlias = "Quest40096"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40096:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40096:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4009605"] = self.OnSubStart4009605,
        ["4009601"] = self.OnSubStart4009601,
        ["4009606"] = self.OnSubStart4009606,
        ["4009607"] = self.OnSubStart4009607,
        ["4009611"] = self.OnSubStart4009611,
        ["4009608"] = self.OnSubStart4009608,
        ["4009609"] = self.OnSubStart4009609,
        ["4009610"] = self.OnSubStart4009610,
        ["4009602"] = self.OnSubStart4009602,
        ["4009603"] = self.OnSubStart4009603,
        ["4009604"] = self.OnSubStart4009604
    }
end

function Quest40096:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4009605"] = self.OnSubFinish4009605,
        ["4009601"] = self.OnSubFinish4009601,
        ["4009606"] = self.OnSubFinish4009606,
        ["4009607"] = self.OnSubFinish4009607,
        ["4009611"] = self.OnSubFinish4009611,
        ["4009608"] = self.OnSubFinish4009608,
        ["4009609"] = self.OnSubFinish4009609,
        ["4009610"] = self.OnSubFinish4009610,
        ["4009602"] = self.OnSubFinish4009602,
        ["4009603"] = self.OnSubFinish4009603,
        ["4009604"] = self.OnSubFinish4009604
    }
end

function Quest40096:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40096:Start()
    print("Start")
end

function Quest40096:OnDestroy()
    print("OnDestroy")
end

function Quest40096:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40096:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40096:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 1035)
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 1035)
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 1035)
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 1035)
    this:SafeDestroyQuestNpc(npcs.XianglingData.alias, 1035)
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 1035)
    this:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 1035)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 1035)
    this:SafeDestroyQuestNpc(npcs.Npc13097Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2087Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2087Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4009601N1021Trigger", 1035, false)
    actorMgr:DestroyEntityActor("Q4009602N13097Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009603N1021Trigger", 1035, false)
    actorMgr:DestroyEntityActor("Q4009604N10204Trigger", 1035, false)
    actorMgr:DestroyEntityActor("Q4009606N10204Trigger", 1035, false)
    actorMgr:DestroyEntityActor("Q4009607N1021Trigger", 1035, false)
    actorMgr:DestroyEntityActor("Q4009608N10204Trigger", 1035, false)
    actorMgr:DestroyEntityActor("Q4009609N1021Trigger", 1035, false)
    actorMgr:DestroyEntityActor("Q4009610N1021Trigger", 1035, false)
    actorMgr:DestroyEntityActor("Q4009611N1021Trigger", 1035, false)
end

function Quest40096:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest40096:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40096:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest40096:OnSubStart4009605(arg1)
    print("OnSubStart4009605")
end

function Quest40096:OnSubFinish4009605(arg1)
    print("OnSubFinish4009605")
    this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 40096)
end

function Quest40096:OnSubStart4009601(arg1)
    print("OnSubStart4009601")
    this:NpcCreateWithTrigger(npcs.Npc1021Data.id, 4009601, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2087Data.alias, 1, true)
end

function Quest40096:OnSubFinish4009601(arg1)
    print("OnSubFinish4009601")
    this:TransmitPlayerByQuestId(4009601, 1)
end

function Quest40096:OnSubStart4009606(arg1)
    print("OnSubStart4009606")
    this:NpcCreateWithTriggerBlack(npcs.XiaoData.id, 4009606, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2087Data.alias, 1, true)
end

function Quest40096:OnSubFinish4009606(arg1)
    print("OnSubFinish4009606")
    this:TransmitPlayerByQuestId(4009606, 1)
end

function Quest40096:OnSubStart4009607(arg1)
    print("OnSubStart4009607")
    this:NpcCreateWithTriggerBlack(npcs.Npc1021Data.id, 4009607, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2087Data.alias, 1, true)
end

function Quest40096:OnSubFinish4009607(arg1)
    print("OnSubFinish4009607")
end

function Quest40096:OnSubStart4009611(arg1)
    print("OnSubStart4009611")
    this:NpcCreateWithTriggerBlack(npcs.Npc1021Data.id, 4009611, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2087Data.alias, 1, true)
end

function Quest40096:OnSubFinish4009611(arg1)
    print("OnSubFinish4009611")
    this:TransmitPlayerByQuestId(4009611, 1)
end

function Quest40096:OnSubStart4009608(arg1)
    print("OnSubStart4009608")
    this:NpcCreateWithTriggerBlack(npcs.XiaoData.id, 4009608, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2087Data.alias, 1, true)
end

function Quest40096:OnSubFinish4009608(arg1)
    print("OnSubFinish4009608")
    this:TransmitPlayerByQuestId(4009608, 1)
end

function Quest40096:OnSubStart4009609(arg1)
    print("OnSubStart4009609")
    this:NpcCreateWithTriggerBlack(npcs.Npc1021Data.id, 4009609, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2087Data.alias, 1, true)
end

function Quest40096:OnSubFinish4009609(arg1)
    print("OnSubFinish4009609")
end

function Quest40096:OnSubStart4009610(arg1)
    print("OnSubStart4009610")
    this:NpcCreateWithTriggerBlack(npcs.Npc1021Data.id, 4009610, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2087Data.alias, 1, true)
end

function Quest40096:OnSubFinish4009610(arg1)
    print("OnSubFinish4009610")
end

function Quest40096:OnSubStart4009602(arg1)
    print("OnSubStart4009602")
    this:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.XiaoData.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 4)
    this:CreateQuestNpc(arg1, npcs.XianglingData.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 8)
    this:NpcCreateWithTriggerBlack(npcs.Npc13097Data.id, 4009602, 9)
    this:DailyNpcSafeHideSelf(npcs.Npc2087Data.alias, 1, true)
end

function Quest40096:OnSubFinish4009602(arg1)
    print("OnSubFinish4009602")
end

function Quest40096:OnSubStart4009603(arg1)
    print("OnSubStart4009603")
    this:NpcCreateWithTriggerBlack(npcs.Npc1021Data.id, 4009603, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2087Data.alias, 1, true)
end

function Quest40096:OnSubFinish4009603(arg1)
    print("OnSubFinish4009603")
    this:TransmitPlayerByQuestId(4009603, 1)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 1035)
end

function Quest40096:OnSubStart4009604(arg1)
    print("OnSubStart4009604")
    this:NpcCreateWithTriggerBlack(npcs.XiaoData.id, 4009604, 1)
end

function Quest40096:OnSubFinish4009604(arg1)
    print("OnSubFinish4009604")
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    this:LightNotifyTo(npcs.Npc2087Data.alias, 0, true)
end

return Quest40096
