require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19096 = class("Quest19096", QuestActorProxy)
Quest19096.defaultAlias = "Quest19096"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19096:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19096:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1909619"] = self.OnSubStart1909619,
        ["1909601"] = self.OnSubStart1909601,
        ["1909602"] = self.OnSubStart1909602,
        ["1909604"] = self.OnSubStart1909604,
        ["1909605"] = self.OnSubStart1909605,
        ["1909615"] = self.OnSubStart1909615,
        ["1909616"] = self.OnSubStart1909616,
        ["1909609"] = self.OnSubStart1909609,
        ["1909611"] = self.OnSubStart1909611,
        ["1909612"] = self.OnSubStart1909612,
        ["1909618"] = self.OnSubStart1909618,
        ["1909617"] = self.OnSubStart1909617,
        ["1909614"] = self.OnSubStart1909614,
        ["1909613"] = self.OnSubStart1909613,
        ["1909608"] = self.OnSubStart1909608
    }
end

function Quest19096:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1909619"] = self.OnSubFinish1909619,
        ["1909601"] = self.OnSubFinish1909601,
        ["1909602"] = self.OnSubFinish1909602,
        ["1909604"] = self.OnSubFinish1909604,
        ["1909605"] = self.OnSubFinish1909605,
        ["1909615"] = self.OnSubFinish1909615,
        ["1909616"] = self.OnSubFinish1909616,
        ["1909609"] = self.OnSubFinish1909609,
        ["1909611"] = self.OnSubFinish1909611,
        ["1909612"] = self.OnSubFinish1909612,
        ["1909618"] = self.OnSubFinish1909618,
        ["1909617"] = self.OnSubFinish1909617,
        ["1909614"] = self.OnSubFinish1909614,
        ["1909613"] = self.OnSubFinish1909613,
        ["1909608"] = self.OnSubFinish1909608
    }
end

function Quest19096:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19096:Start()
    print("Start")
end

function Quest19096:OnDestroy()
    print("OnDestroy")
end

function Quest19096:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19096:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19096:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.DilucData.alias, 1018)
    this:SafeDestroyQuestNpc(npcs.Npc1533Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1529Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1527Data.alias, 1018)
    this:SafeDestroyQuestNpc(npcs.Npc1527Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 1018)
    this:SafeDestroyQuestNpc(npcs.Npc1531Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1595Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1596Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1535Data.alias, 3)
    this:LightNotifyTo(npcs.Npc1527Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1531Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1595Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1596Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1535Data.alias, 0, true)
    this:RemoveLocalGadget(71700494, "1")
    this:RemoveLocalGadget(70710037, "3")
    this:RemoveLocalGadget(71700528, "2")
    actorMgr:DestroyEntityActor("Q19096Trigger", 1018, false)
    actorMgr:DestroyEntityActor("Q1909601TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1909602TriggerRequest", 1018, false)
    actorMgr:DestroyEntityActor("Q1909610FinishTrigger", 0, false)
    actorMgr:DestroyEntityActor("Q1909604N1527Trigger", 1018, false)
    this:RemoveLocalGadget(71700494, "1")
    this:RemoveLocalGadget(71700528, "2")
    this:RemoveLocalGadget(70710037, "3")
    this:ActorDestroy("Q19096TriggerPauseNarrator")
end

function Quest19096:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest19096:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19096:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19096:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19096:OnSubStart1909619(arg1)
    print("OnSubStart1909619")
end

function Quest19096:OnSubFinish1909619(arg1)
    print("OnSubFinish1909619")
end

function Quest19096:OnSubStart1909601(arg1)
    print("OnSubStart1909601")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909601)
    this:CreateQuestNpc(arg1, npcs.DilucData.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1533Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1529Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1527Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Coop_KaeyaData.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc1531Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Coop_KaeyaData.id, 5)
    this:GetQuestNpcActor(npcs.Npc1527Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1909601TriggerRequest", "Actor/Gadget/Q1909601TriggerRequest", 70900002, 0, {x = 1769.173, y = 222.123, z = -399.122}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest19096:OnSubFinish1909601(arg1)
    print("OnSubFinish1909601")
    this:TransmitPlayerWithDialogTextByQuestId(1909601, 1, nil, 1)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19096:OnSubStart1909602(arg1)
    print("OnSubStart1909602")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909602)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1531Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1527Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1909602TriggerRequest", "Actor/Gadget/Q1909602TriggerRequest", 70900002, 0, points.TPos_Q1909602TriggerRequest.pos, points.TPos_Q1909602TriggerRequest.rot, true, false, 1018)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
end

function Quest19096:OnSubFinish1909602(arg1)
    print("OnSubFinish1909602")
    this:SafeDestroyQuestNpc(npcs.Npc1527Data.alias, 1018)
    this:SafeDestroyQuestNpc(npcs.Npc1527Data.alias, 1018)
end

function Quest19096:OnSubStart1909604(arg1)
    print("OnSubStart1909604")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909604)
    this:CreateQuestNpc(arg1, npcs.DilucData.id, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaData.id, 1909604, 3, 5, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1531Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.DilucData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19096:OnSubFinish1909604(arg1)
    print("OnSubFinish1909604")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19096:OnSubStart1909605(arg1)
    print("OnSubStart1909605")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909605)
    this:CreateQuestNpc(arg1, npcs.Npc1533Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1529Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1531Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.DilucData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateLocalGadget(70710037, "3", {x = 1772.462, y = 222.81, z = -381.289}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
    this:CreateLocalGadget(71700528, "2", {x = 1772.709, y = 222.81, z = -381.38}, {x = 0.0, y = 183.976, z = 0.0}, 3, nil, nil, true)
end

function Quest19096:OnSubFinish1909605(arg1)
    print("OnSubFinish1909605")
end

function Quest19096:OnSubStart1909615(arg1)
    print("OnSubStart1909615")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Coop_KaeyaData.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1533Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc1533Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateLocalGadget(71700494, "1", {x = 1834.865, y = 219.194, z = -405.138}, {x = 0.0, y = 321.294, z = 0.0}, 3, nil, nil, true)
end

function Quest19096:OnSubFinish1909615(arg1)
    print("OnSubFinish1909615")
end

function Quest19096:OnSubStart1909616(arg1)
    print("OnSubStart1909616")
end

function Quest19096:OnSubFinish1909616(arg1)
    print("OnSubFinish1909616")
end

function Quest19096:OnSubStart1909609(arg1)
    print("OnSubStart1909609")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1533Data.alias, 19096)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 7, 5, -1, function(arg1)
        print("OnMoveFinish")
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        actorUtils.FinishQuestID(false, 1909609)
    end, function(arg1)
        print("OnPause")
    end, function(arg1) end, function(arg1)
        print("OnMovePause")
        arg1:Standby()
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
        this:TryPauseCurAutoNarrator()
        print("NarratorTryPause")
    end, function(arg1)
        print("OnMoveResume")
        arg1:ClearSteerToAutonomyTask()
        arg1:ResumeMove()
        this:TryResumeCurAutoNarrator()
        print("NarratorTryResume")
    end, nil, true)

    this:NpcForceAvatarWalkByDist(questNpcActor, 3, 5)
    this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 19096)
    actorMgr:CreateActorWithPos("Q19096TriggerPauseNarrator", "Actor/Gadget/Q19096TriggerPauseNarrator", 70900002, 0, {x = 1806.662, y = 217.676, z = -387.692}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest19096:OnSubFinish1909609(arg1)
    print("OnSubFinish1909609")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1533Data.alias, 19096)
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:ActorDestroy("Q19096TriggerPauseNarrator")
    this:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
    npc1533Data = this:GetQuestNpcActor(npcs.Npc1533Data.alias)
    npc1533Data:ClearFollowTask()
    npc1533Data:Standby()
end

function Quest19096:OnSubStart1909611(arg1)
    print("OnSubStart1909611")
end

function Quest19096:OnSubFinish1909611(arg1)
    print("OnSubFinish1909611")
end

function Quest19096:OnSubStart1909612(arg1)
    print("OnSubStart1909612")
end

function Quest19096:OnSubFinish1909612(arg1)
    print("OnSubFinish1909612")
end

function Quest19096:OnSubStart1909618(arg1)
    print("OnSubStart1909618")
end

function Quest19096:OnSubFinish1909618(arg1)
    print("OnSubFinish1909618")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1533Data.alias, 19096)
    this:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsData_02, function(arg1)
        this:GetQuestNpcActor(npcs.Npc1533Data.alias):SteerToTask(datas.Grape2, 1, true, true)
    end)

    this:NarratorOnlyTaskByData(datas.NarratorWithId_01, nil, 19096)
end

function Quest19096:OnSubStart1909617(arg1)
    print("OnSubStart1909617")
end

function Quest19096:OnSubFinish1909617(arg1)
    print("OnSubFinish1909617")
end

function Quest19096:OnSubStart1909614(arg1)
    print("OnSubStart1909614")
end

function Quest19096:OnSubFinish1909614(arg1)
    print("OnSubFinish1909614")
end

function Quest19096:OnSubStart1909613(arg1)
    print("OnSubStart1909613")
end

function Quest19096:OnSubFinish1909613(arg1)
    print("OnSubFinish1909613")
    this:ClearNarratorTask()
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02, nil, 19096)
end

function Quest19096:OnSubStart1909608(arg1)
    print("OnSubStart1909608")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909608)
    this:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1531Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1535Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1533Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.DilucData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1533Data.alias)
    questNpcActor:ClearFollowTask()
    questNpcActor:Standby()
    local avatarPos = actorUtils.GetAvatarPos()
    questNpcActor:SteerToTask(avatarPos, 1, true, true)
end

function Quest19096:OnSubFinish1909608(arg1)
    print("OnSubFinish1909608")
    this:ClearNarratorTask()
    this:LightNotifyTo(npcs.Npc1527Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1531Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1595Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1596Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1535Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.DilucData.alias, 1018)
    this:SafeDestroyQuestNpc(npcs.Npc1533Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1529Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:RemoveLocalGadget(71700494, "1")
    this:RemoveLocalGadget(71700528, "2")
    this:RemoveLocalGadget(70710037, "3")
end

return Quest19096
