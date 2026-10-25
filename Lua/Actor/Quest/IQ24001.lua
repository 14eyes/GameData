require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24001 = class("Quest24001", QuestActorProxy)
Quest24001.defaultAlias = "Quest24001"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest24001:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest24001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400101"] = self.OnSubStart2400101,
        ["2400102"] = self.OnSubStart2400102,
        ["2400103"] = self.OnSubStart2400103,
        ["2400104"] = self.OnSubStart2400104
    }
end

function Quest24001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400101"] = self.OnSubFinish2400101,
        ["2400102"] = self.OnSubFinish2400102,
        ["2400103"] = self.OnSubFinish2400103,
        ["2400104"] = self.OnSubFinish2400104
    }
end

function Quest24001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24001:Start()
    print("Start")
end

function Quest24001:OnDestroy()
    print("OnDestroy")
end

function Quest24001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24001:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5113Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5019Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13344Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5117Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5113Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5117Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q24001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q24001Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q2400101N5113Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400103N5113Trigger", 3, false)
end

function Quest24001:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest24001:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest24001:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest24001:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest24001:OnSubStart2400101(arg1)
    print("OnSubStart2400101")
    this:NpcCreateWithNpcTrigger(npcs.Npc5113Data.id, 2400101, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc5019Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5117Data.alias, 1, true)
end

function Quest24001:OnSubFinish2400101(arg1)
    print("OnSubFinish2400101")
    this:TransmitPlayerByQuestId(2400101, 1)
end

function Quest24001:OnSubStart2400102(arg1)
    print("OnSubStart2400102")
    this:CreateQuestNpc(arg1, npcs.Npc5113Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13344Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5117Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q24001Trigger1", "Actor/Gadget/Q24001Trigger1", 70900002, 0, points.TPos_Q24001Trigger1.pos, points.TPos_Q24001Trigger1.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q24001Trigger", "Actor/Gadget/Q24001Trigger", 70900002, 0, points.TPos_Q24001Trigger.pos, points.TPos_Q24001Trigger.rot, true, false, 3, nil, 0, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5113Data.alias)
    questNpcActor:DoFreeStyle(1360, true, nil, true, true, false, false)
    local v = this:GetQuestNpcActor(npcs.Npc5113Data.alias, 24001)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData_01, 10, 4, -1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc5113Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5113Data.alias, 24001)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_02, 10, 4, -1, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc5113Data.alias, 24001)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_03, 10, 4, -1, function(arg1)
                if arg1.BeFollowState == BeFollowState.SUCCESS then
                    actorUtils.FinishQuestID(false, 2400102)
                    actorMgr:DestroyEntityActor("Q24001Trigger1", 3, false)
                end
            end, nil, nil, nil, nil, nil, true)

            this:NarratorOnlyTaskByData(datas.Narrator_2400102)
        end, nil, nil, nil, nil, nil, true)
    end, nil, nil, nil, nil, nil, true)

    questNpcActor:SetWalkSpeedRatio(1.5)
    if this:GetQuestVar(2400102, 1) == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400101, function(arg1)
            this:SetQuestVarByMainId(1, 2)
        end)
    end
end

function Quest24001:OnSubFinish2400102(arg1)
    print("OnSubFinish2400102")
    actorMgr:DestroyEntityActor("Q24001Trigger", 3, false)
    this:ClearNarratorTask()
    this:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
    this:GetQuestNpcActor(npcs.Npc5113Data.alias, 24001):ClearFollowTask()
end

function Quest24001:OnSubStart2400103(arg1)
    print("OnSubStart2400103")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5113Data.id, 2400103, 0, 15, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5113Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5117Data.alias, 1, true)
end

function Quest24001:OnSubFinish2400103(arg1)
    print("OnSubFinish2400103")
    this:SafeDestroyQuestNpc(npcs.Npc5113Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13344Data.alias, 3)
end

function Quest24001:OnSubStart2400104(arg1)
    print("OnSubStart2400104")
    this:DailyNpcSafeHideSelf(npcs.Npc5113Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5117Data.alias, 1, true)
end

function Quest24001:OnSubFinish2400104(arg1)
    print("OnSubFinish2400104")
    this:SafeDestroyQuestNpc(npcs.Npc5019Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5113Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5117Data.alias, 0, true)
end

return Quest24001
