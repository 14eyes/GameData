require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24002 = class("Quest24002", QuestActorProxy)
Quest24002.defaultAlias = "Quest24002"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest24002:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest24002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400201"] = self.OnSubStart2400201,
        ["2400202"] = self.OnSubStart2400202,
        ["2400203"] = self.OnSubStart2400203,
        ["2400204"] = self.OnSubStart2400204
    }
end

function Quest24002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400201"] = self.OnSubFinish2400201,
        ["2400202"] = self.OnSubFinish2400202,
        ["2400203"] = self.OnSubFinish2400203,
        ["2400204"] = self.OnSubFinish2400204
    }
end

function Quest24002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24002:Start()
    print("Start")
end

function Quest24002:OnDestroy()
    print("OnDestroy")
end

function Quest24002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24002:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5045Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5005Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5060Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5004Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5005Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5058Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5060Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5004Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q24002Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400204N5005Trigger", 3, false)
    this:UnCallDelayByQuest("24002")
    this:UnCallDelayByQuest("24003")
end

function Quest24002:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest24002:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest24002:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest24002:OnSubStart2400201(arg1)
    print("OnSubStart2400201")
    this:CreateQuestNpc(arg1, npcs.Npc5005Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5005Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5004Data.alias, 1, true)
end

function Quest24002:OnSubFinish2400201(arg1)
    print("OnSubFinish2400201")
    this:NpcDestroy(npcs.Npc5005Data.alias, 3)
end

function Quest24002:OnSubStart2400202(arg1)
    print("OnSubStart2400202")
    this:CreateQuestNpc(arg1, npcs.Npc5045Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:DailyNpcSafeHideSelf(npcs.Npc5005Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5004Data.alias, 1, true)
    end)
end

function Quest24002:OnSubFinish2400202(arg1)
    print("OnSubFinish2400202")
end

function Quest24002:OnSubStart2400203(arg1)
    print("OnSubStart2400203")
    this:CreateQuestNpc(arg1, npcs.Npc5045Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5005Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5004Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q24002Trigger", "Actor/Gadget/Q24002Trigger", 70900002, 0, points.TPos_Q24002Trigger.pos, points.TPos_Q24002Trigger.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5045Data.alias, 24002)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 10, 4, -1, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5045Data.alias, 24002)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_01, 10, 4, -1, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc5045Data.alias, 24002)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_02, 10, 4, -1, function(arg1)
                if arg1.BeFollowState == BeFollowState.SUCCESS then
                    actorUtils.FinishQuestID(false, 2400203)
                end
            end, nil, nil, nil, nil, nil, true)

            this:NarratorOnlyTaskByData(datas.Narrator_2400203)
            this:CallDelayByQuest("24002", 4, function(arg1)
                this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1200, true, nil, true, true, false, false)
            end)
        end, nil, nil, nil, nil, nil, true)

        this:NarratorOnlyTaskByData(datas.Narrator_2400202)
    end, nil, nil, nil, nil, nil, true)

    this:GetQuestNpcActor(npcs.Npc5045Data.alias):SetWalkSpeedRatio(1)
    this:CallDelayByQuest("24003", 0.5, function(arg1)
        if this:GetQuestVar(2400203, 1) == 0 then
            this:NarratorOnlyTaskByData(datas.Narrator_2400201, function(arg1)
                this:SetQuestVarByMainId(1, 1)
            end)
        end
    end)
end

function Quest24002:OnSubFinish2400203(arg1)
    print("OnSubFinish2400203")
    this:ClearNarratorTask()
    actorMgr:DestroyEntityActor("Q24002Trigger", 3, false)
end

function Quest24002:OnSubStart2400204(arg1)
    print("OnSubStart2400204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5005Data.id, 2400204, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5005Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
    this:LightNotifyTo(npcs.Npc5058Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5060Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5004Data.alias, 1, true)
end

function Quest24002:OnSubFinish2400204(arg1)
    print("OnSubFinish2400204")
    this:LightNotifyTo(npcs.Npc5004Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc5045Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5005Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5053Data.alias, 3)
end

return Quest24002
