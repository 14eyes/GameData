require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40107 = class("Quest40107", QuestActorProxy)
Quest40107.defaultAlias = "Quest40107"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40107:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40107:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4010719"] = self.OnSubStart4010719,
        ["4010701"] = self.OnSubStart4010701,
        ["4010702"] = self.OnSubStart4010702,
        ["4010703"] = self.OnSubStart4010703,
        ["4010704"] = self.OnSubStart4010704,
        ["4010705"] = self.OnSubStart4010705,
        ["4010706"] = self.OnSubStart4010706,
        ["4010707"] = self.OnSubStart4010707,
        ["4010708"] = self.OnSubStart4010708,
        ["4010712"] = self.OnSubStart4010712,
        ["4010713"] = self.OnSubStart4010713,
        ["4010714"] = self.OnSubStart4010714,
        ["4010709"] = self.OnSubStart4010709,
        ["4010715"] = self.OnSubStart4010715,
        ["4010716"] = self.OnSubStart4010716,
        ["4010717"] = self.OnSubStart4010717,
        ["4010718"] = self.OnSubStart4010718
    }
end

function Quest40107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4010719"] = self.OnSubFinish4010719,
        ["4010701"] = self.OnSubFinish4010701,
        ["4010702"] = self.OnSubFinish4010702,
        ["4010703"] = self.OnSubFinish4010703,
        ["4010704"] = self.OnSubFinish4010704,
        ["4010705"] = self.OnSubFinish4010705,
        ["4010706"] = self.OnSubFinish4010706,
        ["4010707"] = self.OnSubFinish4010707,
        ["4010708"] = self.OnSubFinish4010708,
        ["4010712"] = self.OnSubFinish4010712,
        ["4010713"] = self.OnSubFinish4010713,
        ["4010714"] = self.OnSubFinish4010714,
        ["4010709"] = self.OnSubFinish4010709,
        ["4010715"] = self.OnSubFinish4010715,
        ["4010716"] = self.OnSubFinish4010716,
        ["4010717"] = self.OnSubFinish4010717,
        ["4010718"] = self.OnSubFinish4010718
    }
end

function Quest40107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4010715"] = self.OnSubFailed4010715}
end

function Quest40107:Start()
    print("Start")
end

function Quest40107:OnDestroy()
    print("OnDestroy")
end

function Quest40107:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40107:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40107:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30357Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30358Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1431Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.GaiaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1567Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30359Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30367Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1433Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30385Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30386Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30387Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30388Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30394Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1449Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1455Data.alias, 3)
    this:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1449Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1408Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1455Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4010705Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4010707Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4010713Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4010717Trigger", 3, false)
end

function Quest40107:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40107:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40107:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest40107:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40107:BefllowCheckNarrator()
    print("BefllowCheckNarrator")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:ClearSteerToAutonomyTask()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    self:TurnTo(M.Euler2DirXZ(points.TPos_Q4010705Trigger.rot))
    actorMgr:CreateActorWithPos("Q4010705Trigger", "Actor/Gadget/Q4010705Trigger", 70900002, 0, points.TPos_Q4010705Trigger.pos, points.TPos_Q4010705Trigger.rot, true, false, 3)
end

function Quest40107:OnMovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest40107:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest40107:OnSubStart4010719(arg1)
    print("OnSubStart4010719")
    actorUtils.FinishQuestID(false, 4010719)
end

function Quest40107:OnSubFinish4010719(arg1)
    print("OnSubFinish4010719")
    this:NarratorOnlyTaskByData(datas.NarratorWithId4010701)
end

function Quest40107:OnSubStart4010701(arg1)
    print("OnSubStart4010701")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30357Data.id, 4010701, 1, 15, 1)
end

function Quest40107:OnSubFinish4010701(arg1)
    print("OnSubFinish4010701")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30357Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30358Data.alias, 3)
end

function Quest40107:OnSubStart4010702(arg1)
    print("OnSubStart4010702")
    this:NpcCreateWithNpcTrigger(npcs.Npc1061Data.id, 4010702, 3, 12)
    this:CreateQuestNpc(arg1, npcs.Npc1069Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc1408Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1455Data.alias, 1, true)
end

function Quest40107:OnSubFinish4010702(arg1)
    print("OnSubFinish4010702")
    this:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
end

function Quest40107:OnSubStart4010703(arg1)
    print("OnSubStart4010703")
    this:NpcCreateWithNpcTrigger(npcs.Npc1431Data.id, 4010703, 3, 8)
    this:DailyNpcSafeHideSelf(npcs.Npc1408Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1455Data.alias, 1, true)
end

function Quest40107:OnSubFinish4010703(arg1)
    print("OnSubFinish4010703")
    this:SafeDestroyQuestNpc(npcs.Npc1431Data.alias, 3)
end

function Quest40107:OnSubStart4010704(arg1)
    print("OnSubStart4010704")
    this:DailyNpcSafeHideSelf(npcs.Npc1431Data.alias, 1, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1070Data.id, 4010704, 3, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc1408Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1455Data.alias, 1, true)
end

function Quest40107:OnSubFinish4010704(arg1)
    print("OnSubFinish4010704")
end

function Quest40107:OnSubStart4010705(arg1)
    print("OnSubStart4010705")
    this:DailyNpcSafeHideSelf(npcs.Npc1431Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1449Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1408Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1455Data.alias, 1, true)
    this:CallDelay(3, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1070Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:SetWalkSpeedRatio(0.8)
        local v = this:GetQuestNpcActor(npcs.Npc1070Data.alias, 40107)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData4010705, 10, 4, -1, arg1.BefllowCheckNarrator, nil, nil, arg1.OnMovePause, arg1.OnMoveResume, nil, false)
        this:NpcNarratorOnlyTaskByData(v, datas.NarratorWithId4010702)
    end)
end

function Quest40107:OnSubFinish4010705(arg1)
    print("OnSubFinish4010705")
end

function Quest40107:OnSubStart4010706(arg1)
    print("OnSubStart4010706")
    this:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1070Data.id, 4010706, 3, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc1449Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc1408Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1455Data.alias, 0, true)
end

function Quest40107:OnSubFinish4010706(arg1)
    print("OnSubFinish4010706")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
end

function Quest40107:OnSubStart4010707(arg1)
    print("OnSubStart4010707")
    this:CreateQuestNpc(arg1, npcs.Npc30357Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30358Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.GaiaData.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc1567Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc30367Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc1433Data.id, 7)
    this:DailyNpcSafeHideSelf(npcs.Npc1449Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010707Trigger", "Actor/Gadget/Q4010707Trigger", 70900002, 0, points.TPos_Q4010707Trigger.pos, points.TPos_Q4010707Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40107:OnSubFinish4010707(arg1)
    print("OnSubFinish4010707")
end

function Quest40107:OnSubStart4010708(arg1)
    print("OnSubStart4010708")
    this:NpcCreateWithNpcTrigger(npcs.GaiaData.id, 4010708, 2, 34)
    this:LightNotifyTo(npcs.Npc1449Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40107:OnSubFinish4010708(arg1)
    print("OnSubFinish4010708")
    this:SafeDestroyQuestNpc(npcs.Npc30359Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30367Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30394Data.alias, 3)
end

function Quest40107:OnSubStart4010712(arg1)
    print("OnSubStart4010712")
    this:NpcCreateWithNpcTrigger(npcs.Npc1070Data.id, 4010712, 1, 5)
    this:CreateQuestNpc(arg1, npcs.GaiaData.id, 2)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40107:OnSubFinish4010712(arg1)
    print("OnSubFinish4010712")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30359Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30394Data.alias, 3)
end

function Quest40107:OnSubStart4010713(arg1)
    print("OnSubStart4010713")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1070Data.id, 4010713, 1, 5, 1)
    actorMgr:CreateActorWithPos("Q4010713Trigger", "Actor/Gadget/Q4010713Trigger", 70900002, 0, points.TPos_Q4010713Trigger.pos, points.TPos_Q4010713Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40107:OnSubFinish4010713(arg1)
    print("OnSubFinish4010713")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30359Data.alias, 3)
end

function Quest40107:OnSubStart4010714(arg1)
    print("OnSubStart4010714")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1070Data.id, 4010714, 1, 5, 1)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40107:OnSubFinish4010714(arg1)
    print("OnSubFinish4010714")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30359Data.alias, 3)
end

function Quest40107:OnSubStart4010709(arg1)
    print("OnSubStart4010709")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1070Data.id, 4010709, 1, 5, 1)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40107:OnSubFinish4010709(arg1)
    print("OnSubFinish4010709")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30385Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30386Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30387Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30388Data.alias, 3)
end

function Quest40107:OnSubStart4010715(arg1)
    print("OnSubStart4010715")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc30359Data.id, 5)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc30359Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
        this:NarratorOnlyTaskByData(datas.NarratorWithId4010704)
        this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
        this:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair(0)
        this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1567Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40107:OnSubFinish4010715(arg1)
    print("OnSubFinish4010715")
end

function Quest40107:OnSubFailed4010715(arg1)
    print("OnSubFailed4010715")
    this:SafeDestroyQuestNpc(npcs.Npc30359Data.alias, 3)
end

function Quest40107:OnSubStart4010716(arg1)
    print("OnSubStart4010716")
    this:NpcCreateWithNpcTrigger(npcs.Npc30359Data.id, 4010716, 2, 30)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40107:OnSubFinish4010716(arg1)
    print("OnSubFinish4010716")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30359Data.alias, 3)
end

function Quest40107:OnSubStart4010717(arg1)
    print("OnSubStart4010717")
    actorMgr:CreateActorWithPos("Q4010717Trigger", "Actor/Gadget/Q4010717Trigger", 70900002, 0, {x = 2215.292, y = 230.089, z = -800.72}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40107:OnSubFinish4010717(arg1)
    print("OnSubFinish4010717")
end

function Quest40107:OnSubStart4010718(arg1)
    print("OnSubStart4010718")
    this:NpcCreateWithNpcTrigger(npcs.GaiaData.id, 4010718, 2, 30)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40107:OnSubFinish4010718(arg1)
    print("OnSubFinish4010718")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(6, function(arg1)
            actorUtils.ShowJourneyEntrancePage()
        end)
    end)

    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1567Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc30357Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30358Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.GaiaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1567Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30367Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1433Data.alias, 3)
end

return Quest40107
