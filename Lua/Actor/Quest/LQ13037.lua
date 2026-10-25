require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13037 = class("Quest13037", QuestActorProxy)
Quest13037.defaultAlias = "Quest13037"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest13037:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest13037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1303701"] = self.OnSubStart1303701,
        ["1303702"] = self.OnSubStart1303702,
        ["1303703"] = self.OnSubStart1303703,
        ["1303704"] = self.OnSubStart1303704,
        ["1303705"] = self.OnSubStart1303705,
        ["1303706"] = self.OnSubStart1303706,
        ["1303707"] = self.OnSubStart1303707,
        ["1303708"] = self.OnSubStart1303708,
        ["1303713"] = self.OnSubStart1303713,
        ["1303709"] = self.OnSubStart1303709,
        ["1303710"] = self.OnSubStart1303710,
        ["1303711"] = self.OnSubStart1303711,
        ["1303712"] = self.OnSubStart1303712,
        ["1303714"] = self.OnSubStart1303714
    }
end

function Quest13037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1303701"] = self.OnSubFinish1303701,
        ["1303702"] = self.OnSubFinish1303702,
        ["1303703"] = self.OnSubFinish1303703,
        ["1303704"] = self.OnSubFinish1303704,
        ["1303705"] = self.OnSubFinish1303705,
        ["1303706"] = self.OnSubFinish1303706,
        ["1303707"] = self.OnSubFinish1303707,
        ["1303708"] = self.OnSubFinish1303708,
        ["1303713"] = self.OnSubFinish1303713,
        ["1303709"] = self.OnSubFinish1303709,
        ["1303710"] = self.OnSubFinish1303710,
        ["1303711"] = self.OnSubFinish1303711,
        ["1303712"] = self.OnSubFinish1303712,
        ["1303714"] = self.OnSubFinish1303714
    }
end

function Quest13037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13037:Start()
    print("Start")
end

function Quest13037:OnDestroy()
    print("OnDestroy")
end

function Quest13037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13037:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13037:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest13037:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest13037:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13037:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest13037:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest13037:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 130371301 then
        actorUtils.FinishQuestID(false, 1303713)
    elseif arg1 == 130371401 then
        actorUtils.FinishQuestID(false, 1303714)
    end
end

function Quest13037:OnSubStart1303701(arg1)
    print("OnSubStart1303701")
    this:NpcCreateWithNpcTrigger(npcs.Npc1058Data.id, 1303701, 0, 35)
    this:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4358Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DoFreeStyle(1172, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest13037:OnSubFinish1303701(arg1)
    print("OnSubFinish1303701")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest13037:OnSubStart1303702(arg1)
    print("OnSubStart1303702")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1052Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1059Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc4403Data.id, 1303702, 0, 40, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4358Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1052Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1059Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest13037:OnSubFinish1303702(arg1)
    print("OnSubFinish1303702")
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4403Data.alias, 3)
end

function Quest13037:OnSubStart1303703(arg1)
    print("OnSubStart1303703")
    this:NpcCreateWithNpcTrigger(npcs.Npc1085Data.id, 1303703, 0, 40)
    this:CreateQuestNpc(arg1, npcs.Npc14000Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14001Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc14001Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:LightNotifyTo(npcs.Npc4358Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14000Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13037:OnSubFinish1303703(arg1)
    print("OnSubFinish1303703")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest13037:OnSubStart1303704(arg1)
    print("OnSubStart1303704")
    this:CreateQuestNpc(arg1, npcs.Npc1085Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14000Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14001Data.id, 0)
    this:ActorDestroy("Q1303704Trigger")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1085Data.alias, 13037)
    this:NpcRunToRouteTask(questNpcActor, datas.RoutePointsData1303704, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1085Data.alias)
        questNpcActor:Standby()
        questNpcActor:TurnToAvatar()
        actorMgr:CreateActorWithPos("Q1303704Trigger", "Actor/Gadget/Q1303704Trigger", 70900002, 0, points.TPos_Q1303704Trigger.pos, points.TPos_Q1303704Trigger.rot, true, false, 3)
    end)

    this:GetQuestNpcActor(npcs.Npc14000Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14001Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest13037:OnSubFinish1303704(arg1)
    print("OnSubFinish1303704")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest13037:OnSubStart1303705(arg1)
    print("OnSubStart1303705")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1085Data.id, 1303705, 0, 10, 1)
    this:GetQuestNpcActor(npcs.Npc14000Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14001Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest13037:OnSubFinish1303705(arg1)
    print("OnSubFinish1303705")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1085Data.alias, 3)
end

function Quest13037:OnSubStart1303706(arg1)
    print("OnSubStart1303706")
    this:GetQuestNpcActor(npcs.Npc14000Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14001Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest13037:OnSubFinish1303706(arg1)
    print("OnSubFinish1303706")
    this:SafeDestroyQuestNpc(npcs.Npc14000Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14001Data.alias, 3)
end

function Quest13037:OnSubStart1303707(arg1)
    print("OnSubStart1303707")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1085Data.id, 1303707, 0, 10, 1, true)
end

function Quest13037:OnSubFinish1303707(arg1)
    print("OnSubFinish1303707")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1085Data.alias, 1091)
end

function Quest13037:OnSubStart1303708(arg1)
    print("OnSubStart1303708")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1085Data.id, 1303708, 0, 50, 1)
end

function Quest13037:OnSubFinish1303708(arg1)
    print("OnSubFinish1303708")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
end

function Quest13037:OnSubStart1303713(arg1)
    print("OnSubStart1303713")
end

function Quest13037:OnSubFinish1303713(arg1)
    print("OnSubFinish1303713")
end

function Quest13037:OnSubStart1303709(arg1)
    print("OnSubStart1303709")
end

function Quest13037:OnSubFinish1303709(arg1)
    print("OnSubFinish1303709")
end

function Quest13037:OnSubStart1303710(arg1)
    print("OnSubStart1303710")
end

function Quest13037:OnSubFinish1303710(arg1)
    print("OnSubFinish1303710")
end

function Quest13037:OnSubStart1303711(arg1)
    print("OnSubStart1303711")
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1085Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1171, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
end

function Quest13037:OnSubFinish1303711(arg1)
    print("OnSubFinish1303711")
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(false)
end

function Quest13037:OnSubStart1303712(arg1)
    print("OnSubStart1303712")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1085Data.id, 1303712, 0, 40, 1, true)
end

function Quest13037:OnSubFinish1303712(arg1)
    print("OnSubFinish1303712")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1085Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc13995Data.alias, 1091)
end

function Quest13037:OnSubStart1303714(arg1)
    print("OnSubStart1303714")
end

function Quest13037:OnSubFinish1303714(arg1)
    print("OnSubFinish1303714")
end

return Quest13037
