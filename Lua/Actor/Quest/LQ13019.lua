require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13019 = class("Quest13019", QuestActorProxy)
Quest13019.defaultAlias = "Quest13019"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest13019:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest13019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1301901"] = self.OnSubStart1301901,
        ["1301902"] = self.OnSubStart1301902,
        ["1301903"] = self.OnSubStart1301903,
        ["1301922"] = self.OnSubStart1301922,
        ["1301904"] = self.OnSubStart1301904,
        ["1301905"] = self.OnSubStart1301905,
        ["1301906"] = self.OnSubStart1301906,
        ["1301923"] = self.OnSubStart1301923,
        ["1301907"] = self.OnSubStart1301907,
        ["1301908"] = self.OnSubStart1301908,
        ["1301924"] = self.OnSubStart1301924,
        ["1301909"] = self.OnSubStart1301909,
        ["1301910"] = self.OnSubStart1301910,
        ["1301927"] = self.OnSubStart1301927,
        ["1301925"] = self.OnSubStart1301925,
        ["1301926"] = self.OnSubStart1301926,
        ["1301911"] = self.OnSubStart1301911,
        ["1301912"] = self.OnSubStart1301912,
        ["1301913"] = self.OnSubStart1301913,
        ["1301914"] = self.OnSubStart1301914,
        ["1301915"] = self.OnSubStart1301915,
        ["1301928"] = self.OnSubStart1301928,
        ["1301916"] = self.OnSubStart1301916,
        ["1301929"] = self.OnSubStart1301929,
        ["1301918"] = self.OnSubStart1301918,
        ["1301930"] = self.OnSubStart1301930,
        ["1301919"] = self.OnSubStart1301919,
        ["1301920"] = self.OnSubStart1301920,
        ["1301921"] = self.OnSubStart1301921,
        ["1301917"] = self.OnSubStart1301917
    }
end

function Quest13019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1301901"] = self.OnSubFinish1301901,
        ["1301902"] = self.OnSubFinish1301902,
        ["1301903"] = self.OnSubFinish1301903,
        ["1301922"] = self.OnSubFinish1301922,
        ["1301904"] = self.OnSubFinish1301904,
        ["1301905"] = self.OnSubFinish1301905,
        ["1301906"] = self.OnSubFinish1301906,
        ["1301923"] = self.OnSubFinish1301923,
        ["1301907"] = self.OnSubFinish1301907,
        ["1301908"] = self.OnSubFinish1301908,
        ["1301924"] = self.OnSubFinish1301924,
        ["1301909"] = self.OnSubFinish1301909,
        ["1301910"] = self.OnSubFinish1301910,
        ["1301927"] = self.OnSubFinish1301927,
        ["1301925"] = self.OnSubFinish1301925,
        ["1301926"] = self.OnSubFinish1301926,
        ["1301911"] = self.OnSubFinish1301911,
        ["1301912"] = self.OnSubFinish1301912,
        ["1301913"] = self.OnSubFinish1301913,
        ["1301914"] = self.OnSubFinish1301914,
        ["1301915"] = self.OnSubFinish1301915,
        ["1301928"] = self.OnSubFinish1301928,
        ["1301916"] = self.OnSubFinish1301916,
        ["1301929"] = self.OnSubFinish1301929,
        ["1301918"] = self.OnSubFinish1301918,
        ["1301930"] = self.OnSubFinish1301930,
        ["1301919"] = self.OnSubFinish1301919,
        ["1301920"] = self.OnSubFinish1301920,
        ["1301921"] = self.OnSubFinish1301921,
        ["1301917"] = self.OnSubFinish1301917
    }
end

function Quest13019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13019:Start()
    print("Start")
end

function Quest13019:OnDestroy()
    print("OnDestroy")
end

function Quest13019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13019:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13019:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13019:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest13019:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest13019:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest13019:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13019:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest13019:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeLuaAccept")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 1301927)
    elseif arg1 == 2 then
        actor:FinishQuestID(false, 1301929)
    elseif arg1 == 3 then
        actor:EnableElementView(true)
    elseif arg1 == 4 then
        actor:EnableElementView(false)
    end
end

function Quest13019:OnSubStart1301901(arg1)
    print("OnSubStart1301901")
    this:CreateQuestNpcWithTriggerBlack("Q1301901Trigger", 1301901, npcs.Npc1056Data.id, 0, 20, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13162Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13162Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13164Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4011Data.id, 0)
    this:NotifyTo(npcs.Npc4106Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4100Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4101Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4099Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4104Data.alias, 1, true)
end

function Quest13019:OnSubFinish1301901(arg1)
    print("OnSubFinish1301901")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithIdStartBridge)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
    this:NpcDestroy(npcs.Npc4011Data.alias, 3)
end

function Quest13019:OnSubStart1301902(arg1)
    print("OnSubStart1301902")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13163Data.id, 0)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13163Data.alias)
        questNpcActor:Standby()
        questNpcActor:SetWalkSpeedRatio(2)
        this:NpcRunToRouteTask(this:GetQuestNpcActor(npcs.Npc13163Data.alias, 13019), datas.RoutePointsDataPre, function(arg1)
            actorUtils.FinishQuestID(false, 1301902)
        end)
    end)

    this:NotifyTo(npcs.Npc4106Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4100Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4101Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4099Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4104Data.alias, 1, true)
end

function Quest13019:OnSubFinish1301902(arg1)
    print("OnSubFinish1301902")
end

function Quest13019:OnSubStart1301903(arg1)
    print("OnSubStart1301903")
    this:GetQuestNpcActor(npcs.Npc13162Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q13019TriggerPre", "Actor/Gadget/Q13019TriggerPre", 70900002, 0, points.TPos_Q13019TriggerPre.pos, points.TPos_Q13019TriggerPre.rot, true, false, 3)
    this:NotifyTo(npcs.Npc4106Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4100Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4101Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4099Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4104Data.alias, 1, true)
end

function Quest13019:OnSubFinish1301903(arg1)
    print("OnSubFinish1301903")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13162Data.alias)
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc4106Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4100Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4101Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4099Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4104Data.alias, 0, true)
    end)

    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest13019:OnSubStart1301922(arg1)
    print("OnSubStart1301922")
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcWithTriggerBlack("Q1301922Trigger", 1301922, npcs.Npc13162Data.id, 0, 20, 2)
    end)
end

function Quest13019:OnSubFinish1301922(arg1)
    print("OnSubFinish1301922")
    this:SafeDestroyQuestNpc(npcs.Npc13162Data.alias, 3)
end

function Quest13019:OnSubStart1301904(arg1)
    print("OnSubStart1301904")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc13162Data.id, 1301904, 0, 25)
        this:GetQuestNpcActor(npcs.Npc13162Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    end)
end

function Quest13019:OnSubFinish1301904(arg1)
    print("OnSubFinish1301904")
end

function Quest13019:OnSubStart1301905(arg1)
    print("OnSubStart1301905")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13162Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:CallDelay(9, function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithIdFollow1)
        end)

        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13162Data.alias)
        questNpcActor:Standby()
        questNpcActor:SetWalkSpeedRatio(2)
        this:NpcRunToRouteTask(this:GetQuestNpcActor(npcs.Npc13162Data.alias, 13019), datas.RoutePointsDataMetFollow01, function(arg1)
            actorUtils.FinishQuestID(false, 1301905)
        end)
    end)
end

function Quest13019:OnSubFinish1301905(arg1)
    print("OnSubFinish1301905")
end

function Quest13019:OnSubStart1301906(arg1)
    print("OnSubStart1301906")
end

function Quest13019:OnSubFinish1301906(arg1)
    print("OnSubFinish1301906")
end

function Quest13019:OnSubStart1301923(arg1)
    print("OnSubStart1301923")
    actorMgr:CreateActorWithPos("Q13019TriggerMet1Follow01", "Actor/Gadget/Q13019TriggerMet1Follow01", 70900002, 0, points.TPos_Q13019TriggerMet1Follow01.pos, points.TPos_Q13019TriggerMet1Follow01.rot, true, false, 3)
end

function Quest13019:OnSubFinish1301923(arg1)
    print("OnSubFinish1301923")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest13019:OnSubStart1301907(arg1)
    print("OnSubStart1301907")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13162Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:CallDelay(3, function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithIdFollow2)
        end)

        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13162Data.alias)
        questNpcActor:Standby()
        questNpcActor:SetWalkSpeedRatio(2)
        this:NpcRunToRouteTask(this:GetQuestNpcActor(npcs.Npc13162Data.alias, 13019), datas.RoutePointsDataMetFollow02, function(arg1)
            actorUtils.FinishQuestID(false, 1301907)
        end)
    end)
end

function Quest13019:OnSubFinish1301907(arg1)
    print("OnSubFinish1301907")
end

function Quest13019:OnSubStart1301908(arg1)
    print("OnSubStart1301908")
end

function Quest13019:OnSubFinish1301908(arg1)
    print("OnSubFinish1301908")
end

function Quest13019:OnSubStart1301924(arg1)
    print("OnSubStart1301924")
    actorMgr:CreateActorWithPos("Q13019TriggerMet1Follow02", "Actor/Gadget/Q13019TriggerMet1Follow02", 70900002, 0, points.TPos_Q13019TriggerMet1Follow02.pos, points.TPos_Q13019TriggerMet1Follow02.rot, true, false, 3)
end

function Quest13019:OnSubFinish1301924(arg1)
    print("OnSubFinish1301924")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest13019:OnSubStart1301909(arg1)
    print("OnSubStart1301909")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13162Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:CallDelay(3.5, function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithIdFollow3)
        end)

        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13162Data.alias)
        questNpcActor:Standby()
        questNpcActor:SetWalkSpeedRatio(2)
        this:NpcRunToRouteTask(this:GetQuestNpcActor(npcs.Npc13162Data.alias, 13019), datas.RoutePointsDataMetFollow03, function(arg1)
            actorUtils.FinishQuestID(false, 1301909)
        end)
    end)
end

function Quest13019:OnSubFinish1301909(arg1)
    print("OnSubFinish1301909")
end

function Quest13019:OnSubStart1301910(arg1)
    print("OnSubStart1301910")
    actorMgr:CreateActorWithPos("Q13019TriggerMet1Follow03", "Actor/Gadget/Q13019TriggerMet1Follow03", 70900002, 0, points.TPos_Q13019TriggerMet1Follow03.pos, points.TPos_Q13019TriggerMet1Follow03.rot, true, false, 3)
end

function Quest13019:OnSubFinish1301910(arg1)
    print("OnSubFinish1301910")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13162Data.alias)
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest13019:OnSubStart1301927(arg1)
    print("OnSubStart1301927")
end

function Quest13019:OnSubFinish1301927(arg1)
    print("OnSubFinish1301927")
end

function Quest13019:OnSubStart1301925(arg1)
    print("OnSubStart1301925")
end

function Quest13019:OnSubFinish1301925(arg1)
    print("OnSubFinish1301925")
end

function Quest13019:OnSubStart1301926(arg1)
    print("OnSubStart1301926")
end

function Quest13019:OnSubFinish1301926(arg1)
    print("OnSubFinish1301926")
end

function Quest13019:OnSubStart1301911(arg1)
    print("OnSubStart1301911")
end

function Quest13019:OnSubFinish1301911(arg1)
    print("OnSubFinish1301911")
end

function Quest13019:OnSubStart1301912(arg1)
    print("OnSubStart1301912")
    this:CreateQuestNpcWithTriggerBlack("Q1301912Trigger", 1301912, npcs.Npc13162Data.id, 0, 50, 2)
end

function Quest13019:OnSubFinish1301912(arg1)
    print("OnSubFinish1301912")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13162Data.alias)
end

function Quest13019:OnSubStart1301913(arg1)
    print("OnSubStart1301913")
    this:CreateQuestNpcWithTriggerBlack("Q1301913Trigger", 1301913, npcs.Npc1056Data.id, 0, 50, 2)
    this:ActorDestroy("Q13019TriggerHideWarning1")
    this:ActorDestroy("Q13019TriggerHideWarning2")
    this:StopNarrator()
    this:ClearNarratorTask()
    this:ActorDestroy("Q13019TriggerTempElementView")
    this:NpcDestroy(npcs.Npc13162Data.alias, 3)
    this:NpcDestroy(npcs.Npc13165Data.alias, 3)
    this:NpcDestroy(npcs.Npc13167Data.alias, 3)
    this:NpcDestroy(npcs.Npc13214Data.alias, 3)
    this:NpcDestroy(npcs.Npc13216Data.alias, 3)
    this:NpcDestroy(npcs.Npc13215Data.alias, 3)
    this:NpcDestroy(npcs.Npc13234Data.alias, 3)
    this:NpcDestroy(npcs.Npc13217Data.alias, 3)
    this:NpcDestroy(npcs.Npc13218Data.alias, 3)
    this:NpcDestroy(npcs.Npc13219Data.alias, 3)
    this:NpcDestroy(npcs.Npc13232Data.alias, 3)
    this:NpcDestroy(npcs.Npc13230Data.alias, 3)
end

function Quest13019:OnSubFinish1301913(arg1)
    print("OnSubFinish1301913")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

function Quest13019:OnSubStart1301914(arg1)
    print("OnSubStart1301914")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13167Data.id, 1301914, 0, 30, 2)
    this:GetQuestNpcActor(npcs.Npc13165Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13234Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
end

function Quest13019:OnSubFinish1301914(arg1)
    print("OnSubFinish1301914")
end

function Quest13019:OnSubStart1301915(arg1)
    print("OnSubStart1301915")
    actorMgr:CreateActorWithPos("Q13019TriggerHideWarning1", "Actor/Gadget/Q13019TriggerHideWarning1", 70900002, 0, points.TPos_Q13019TriggerHideWarning1.pos, points.TPos_Q13019TriggerHideWarning1.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q13019TriggerHideWarning2", "Actor/Gadget/Q13019TriggerHideWarning2", 70900002, 0, points.TPos_Q13019TriggerHideWarning2.pos, points.TPos_Q13019TriggerHideWarning2.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q13019TriggerTempElementView", "Actor/Gadget/Q13019TriggerTempElementView", 70900002, 0, points.TPos_Q13019TriggerTempElementView.pos, points.TPos_Q13019TriggerTempElementView.rot, true, false, 3)
end

function Quest13019:OnSubFinish1301915(arg1)
    print("OnSubFinish1301915")
    this:ActorDestroy("Q13019TriggerHideWarning1")
    this:ActorDestroy("Q13019TriggerHideWarning2")
end

function Quest13019:OnSubStart1301928(arg1)
    print("OnSubStart1301928")
end

function Quest13019:OnSubFinish1301928(arg1)
    print("OnSubFinish1301928")
end

function Quest13019:OnSubStart1301916(arg1)
    print("OnSubStart1301916")
    this:NpcCreateWithNpcTrigger(npcs.Npc13167Data.id, 1301916, 0, 50)
    this:GetQuestNpcActor(npcs.Npc13165Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13234Data.alias):DoFreeStyle(8, true, nil, true, true, false, true)
end

function Quest13019:OnSubFinish1301916(arg1)
    print("OnSubFinish1301916")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13167Data.alias)
    this:NpcDestroy(npcs.Npc13214Data.alias, 3)
    this:NpcDestroy(npcs.Npc13234Data.alias, 3)
    this:NpcDestroy(npcs.Npc13232Data.alias, 3)
    this:NpcDestroy(npcs.Npc13230Data.alias, 3)
end

function Quest13019:OnSubStart1301929(arg1)
    print("OnSubStart1301929")
end

function Quest13019:OnSubFinish1301929(arg1)
    print("OnSubFinish1301929")
end

function Quest13019:OnSubStart1301918(arg1)
    print("OnSubStart1301918")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13165Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13165Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13214Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13216Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13217Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13218Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13219Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13219Data.alias):DoFreeStyle(3, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13298Data.id, 0)
end

function Quest13019:OnSubFinish1301918(arg1)
    print("OnSubFinish1301918")
    this:NpcDestroy(npcs.Npc13298Data.alias, 3)
end

function Quest13019:OnSubStart1301930(arg1)
    print("OnSubStart1301930")
end

function Quest13019:OnSubFinish1301930(arg1)
    print("OnSubFinish1301930")
    this:NarratorOnlyTaskByData(datas.NarratorWithIdSeedAfter)
end

function Quest13019:OnSubStart1301919(arg1)
    print("OnSubStart1301919")
    this:GetQuestNpcActor(npcs.Npc13165Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
end

function Quest13019:OnSubFinish1301919(arg1)
    print("OnSubFinish1301919")
end

function Quest13019:OnSubStart1301920(arg1)
    print("OnSubStart1301920")
    this:CreateQuestNpcWithTriggerBlack("Q1301920Trigger", 1301920, npcs.Npc1056Data.id, 0, 60, 1.5)
    this:GetQuestNpcActor(npcs.Npc13165Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
end

function Quest13019:OnSubFinish1301920(arg1)
    print("OnSubFinish1301920")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

function Quest13019:OnSubStart1301921(arg1)
    print("OnSubStart1301921")
    this:NpcCreateWithTrigger(npcs.Npc13165Data.id, 1301921, 0)
    this:GetQuestNpcActor(npcs.Npc13165Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13214Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13216Data.alias):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13215Data.alias):DoFreeStyle(7, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13218Data.alias):DoFreeStyle(2, true, nil, true, true, false, true)
end

function Quest13019:OnSubFinish1301921(arg1)
    print("OnSubFinish1301921")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13165Data.alias)
    this:NpcDestroy(npcs.Npc13214Data.alias, 3)
    this:NpcDestroy(npcs.Npc13216Data.alias, 3)
    this:NpcDestroy(npcs.Npc13215Data.alias, 3)
    this:NpcDestroy(npcs.Npc13217Data.alias, 3)
    this:NpcDestroy(npcs.Npc13218Data.alias, 3)
    this:NpcDestroy(npcs.Npc13219Data.alias, 3)
    this:NpcDestroy(npcs.Npc13163Data.alias, 3)
    this:NpcDestroy(npcs.Npc13164Data.alias, 3)
end

function Quest13019:OnSubStart1301917(arg1)
    print("OnSubStart1301917")
end

function Quest13019:OnSubFinish1301917(arg1)
    print("OnSubFinish1301917")
end

return Quest13019
