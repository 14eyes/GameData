require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40141 = class("Quest40141", QuestActorProxy)
Quest40141.defaultAlias = "Quest40141"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40141:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40141:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014101"] = self.OnSubStart4014101,
        ["4014102"] = self.OnSubStart4014102,
        ["4014103"] = self.OnSubStart4014103,
        ["4014104"] = self.OnSubStart4014104,
        ["4014107"] = self.OnSubStart4014107,
        ["4014105"] = self.OnSubStart4014105,
        ["4014106"] = self.OnSubStart4014106,
        ["4014108"] = self.OnSubStart4014108,
        ["4014109"] = self.OnSubStart4014109,
        ["4014110"] = self.OnSubStart4014110,
        ["4014112"] = self.OnSubStart4014112,
        ["4014113"] = self.OnSubStart4014113,
        ["4014111"] = self.OnSubStart4014111,
        ["4014114"] = self.OnSubStart4014114
    }
end

function Quest40141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014101"] = self.OnSubFinish4014101,
        ["4014102"] = self.OnSubFinish4014102,
        ["4014103"] = self.OnSubFinish4014103,
        ["4014104"] = self.OnSubFinish4014104,
        ["4014107"] = self.OnSubFinish4014107,
        ["4014105"] = self.OnSubFinish4014105,
        ["4014106"] = self.OnSubFinish4014106,
        ["4014108"] = self.OnSubFinish4014108,
        ["4014109"] = self.OnSubFinish4014109,
        ["4014110"] = self.OnSubFinish4014110,
        ["4014112"] = self.OnSubFinish4014112,
        ["4014113"] = self.OnSubFinish4014113,
        ["4014111"] = self.OnSubFinish4014111,
        ["4014114"] = self.OnSubFinish4014114
    }
end

function Quest40141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40141:Start()
    print("Start")
end

function Quest40141:OnDestroy()
    print("OnDestroy")
end

function Quest40141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40141:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13860Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1083Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30474Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13900Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13891Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13855Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2428Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2427Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2260Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4014103Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4014107Trigger", 3, false)
    this:DestroyNpcTrigger("Q4014102N1084Trigger")
    this:DestroyNpcTrigger("Q4014104N13860Trigger")
    this:DestroyNpcTrigger("Q4014105N1084Trigger")
    this:DestroyNpcTrigger("Q4014106N10232Trigger")
    this:DestroyNpcTrigger("Q4014108N10232Trigger")
    this:DestroyNpcTrigger("Q4014109N1070Trigger")
    this:DestroyNpcTrigger("Q4014111N13860Trigger")
    this:DestroyNpcTrigger("Q4014112N30474Trigger")
    this:DestroyNpcTrigger("Q4014113N13900Trigger")
end

function Quest40141:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40141:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40141:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40141:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest40141:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40141:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40141:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest40141:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest40141:OnSubStart4014101(arg1)
    print("OnSubStart4014101")
end

function Quest40141:OnSubFinish4014101(arg1)
    print("OnSubFinish4014101")
    this:NarratorOnlyTaskByData(datas.Narrator_4014198, nil, 40141)
end

function Quest40141:OnSubStart4014102(arg1)
    print("OnSubStart4014102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1084Data.id, 4014102, 0, 10)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
end

function Quest40141:OnSubFinish4014102(arg1)
    print("OnSubFinish4014102")
    this:ClearNarratorTask()
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1084Data.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData)
end

function Quest40141:OnSubStart4014103(arg1)
    print("OnSubStart4014103")
    actorMgr:CreateActorWithPos("Q4014103Trigger", "Actor/Gadget/Q4014103Trigger", 70900002, 0, points.TPos_Q4014103Trigger.pos, points.TPos_Q4014103Trigger.rot, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2260Data.alias, 1, true)
end

function Quest40141:OnSubFinish4014103(arg1)
    print("OnSubFinish4014103")
    this:ActorDestroy("Q4014103Trigger")
end

function Quest40141:OnSubStart4014104(arg1)
    print("OnSubStart4014104")
    this:NpcCreateWithNpcTrigger(npcs.Npc13860Data.id, 4014104, 0, 10)
    this:GetQuestNpcActor(npcs.Npc13860Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc2260Data.alias, 1, true)
end

function Quest40141:OnSubFinish4014104(arg1)
    print("OnSubFinish4014104")
    this:ClearNarratorTask()
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13860Data.alias)
end

function Quest40141:OnSubStart4014107(arg1)
    print("OnSubStart4014107")
    actorMgr:CreateActorWithPos("Q4014107Trigger", "Actor/Gadget/Q4014107Trigger", 70900002, 0, points.TPos_Q4014107Trigger.pos, points.TPos_Q4014107Trigger.rot, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc2260Data.alias, 1, true)
end

function Quest40141:OnSubFinish4014107(arg1)
    print("OnSubFinish4014107")
    this:ActorDestroy("Q4014107Trigger")
    this:LightNotifyTo(npcs.Npc2260Data.alias, 0, true)
    this:NarratorOnlyTaskByData(datas.Narrator_4014197, nil, 40141)
end

function Quest40141:OnSubStart4014105(arg1)
    print("OnSubStart4014105")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1084Data.id, 4014105, 0, 15, 1)
end

function Quest40141:OnSubFinish4014105(arg1)
    print("OnSubFinish4014105")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1084Data.alias)
    this:ClearNarratorTask()
end

function Quest40141:OnSubStart4014106(arg1)
    print("OnSubStart4014106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc10232Data.id, 4014106, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2427Data.alias, 1, true)
end

function Quest40141:OnSubFinish4014106(arg1)
    print("OnSubFinish4014106")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc10232Data.alias)
end

function Quest40141:OnSubStart4014108(arg1)
    print("OnSubStart4014108")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13860Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc10232Data.id, 4014108, 0, 5, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2428Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2427Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13860Data.alias):SitOnChair(8040, false)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13860Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40141:OnSubFinish4014108(arg1)
    print("OnSubFinish4014108")
    this:SafeDestroyQuestNpc(npcs.Npc1084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13860Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc10232Data.alias)
end

function Quest40141:OnSubStart4014109(arg1)
    print("OnSubStart4014109")
    this:NpcCreateWithNpcTrigger(npcs.Npc1070Data.id, 4014109, 0, 15)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1083Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1045Data.id, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc2428Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc2427Data.alias, 1, true)
        this:GetQuestNpcActor(npcs.Npc1083Data.alias):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1045Data.alias):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1070Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1083Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1045Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40141:OnSubFinish4014109(arg1)
    print("OnSubFinish4014109")
    this:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2428Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2427Data.alias, 0, true)
end

function Quest40141:OnSubStart4014110(arg1)
    print("OnSubStart4014110")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13860Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1070Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithTrigger(npcs.Npc1083Data.id, 4014110, 0)
        this:GetQuestNpcActor(npcs.Npc1083Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)

    this:GetQuestNpcActor(npcs.Npc13860Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13860Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40141:OnSubFinish4014110(arg1)
    print("OnSubFinish4014110")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1083Data.alias)
end

function Quest40141:OnSubStart4014112(arg1)
    print("OnSubStart4014112")
    this:NpcCreateWithNpcTrigger(npcs.Npc30474Data.id, 4014112, 0, 5)
    this:GetQuestNpcActor(npcs.Npc30474Data.alias):DoFreeStyle(1320, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13860Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13860Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40141:OnSubFinish4014112(arg1)
    print("OnSubFinish4014112")
    this:NarratorOnlyTaskByData(datas.Narrator_4014196, nil, 40141)
    this:SafeDestroyQuestNpc(npcs.Npc30474Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13860Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
end

function Quest40141:OnSubStart4014113(arg1)
    print("OnSubStart4014113")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc13900Data.id, 4014113, 0, 10, 1)
end

function Quest40141:OnSubFinish4014113(arg1)
    print("OnSubFinish4014113")
    this:NarratorOnlyTaskByData(datas.Narrator_4014195, nil, 40141)
    this:SafeDestroyQuestNpc(npcs.Npc13900Data.alias, 3)
end

function Quest40141:OnSubStart4014111(arg1)
    print("OnSubStart4014111")
    this:CreateQuestNpc(arg1, npcs.Npc1084Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc13860Data.id, 4014111, 0, 25)
    this:CreateQuestNpc(arg1, npcs.Npc13891Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13860Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13891Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
end

function Quest40141:OnSubFinish4014111(arg1)
    print("OnSubFinish4014111")
    this:ClearNarratorTask()
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1084Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13860Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13891Data.alias, 3)
end

function Quest40141:OnSubStart4014114(arg1)
    print("OnSubStart4014114")
end

function Quest40141:OnSubFinish4014114(arg1)
    print("OnSubFinish4014114")
end

return Quest40141
