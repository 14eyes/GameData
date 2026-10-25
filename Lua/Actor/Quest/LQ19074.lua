require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19074 = class("Quest19074", QuestActorProxy)
Quest19074.defaultAlias = "Quest19074"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19074:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19074:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1907401"] = self.OnSubStart1907401,
        ["1907403"] = self.OnSubStart1907403,
        ["1907402"] = self.OnSubStart1907402,
        ["1907404"] = self.OnSubStart1907404
    }
end

function Quest19074:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1907401"] = self.OnSubFinish1907401,
        ["1907403"] = self.OnSubFinish1907403,
        ["1907402"] = self.OnSubFinish1907402,
        ["1907404"] = self.OnSubFinish1907404
    }
end

function Quest19074:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1907403"] = self.OnSubFailed1907403}
end

function Quest19074:Start()
    print("Start")
end

function Quest19074:OnDestroy()
    print("OnDestroy")
end

function Quest19074:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19074:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19074:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4376Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4376Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4369Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc1055Data.alias):ResetForceAvatarWalk()
    this:GetQuestNpcActor(npcs.Coop_KavehData.alias):ClearFollowTask()
    this:ActorDestroy("Q1907403Trigger")
    this:ActorDestroy("Q1907402Trigger")
    this:ActorDestroy("Q1907403FailTrigger")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    if this:IsPlayerSitOnChair(3, M.Pos(32.33735, 191.3961, 2616.105), 2.5) then
        this:PlayerStandFromChair(0)
    end
end

function Quest19074:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19074:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19074:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest19074:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1907404)
    end
end

function Quest19074:OnSubStart1907401(arg1)
    print("OnSubStart1907401")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907401)
    this:NPCDestroyImmediately(npcs.Npc1055Data.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1055Data.id, 1)
    end)

    this:DailyNpcSafeHideSelf(npcs.Npc4376Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1055Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:ActorDestroy("Q1907403Trigger")
    this:DailyNpcSafeHideSelf(npcs.Npc4369Data.alias, 1, true)
end

function Quest19074:OnSubFinish1907401(arg1)
    print("OnSubFinish1907401")
end

function Quest19074:OnSubStart1907403(arg1)
    print("OnSubStart1907403")
    this:DailyNpcSafeHideSelf(npcs.Npc4376Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4369Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1055Data.alias, 19074)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 4, 2, -1, function(arg1)
        print("OnMoveFinish")
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        actorMgr:CreateActorWithPos("Q1907403Trigger", "Actor/Gadget/Q1907403Trigger", 70900002, 0, {x = 32.721, y = 195.772, z = 2615.514}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        this:GetQuestNpcActor(npcs.Npc1055Data.alias):SteerToAutonomyTask({x = 41.035, y = 190.7, z = 2621.183}, 2, true, true)
    end, nil, function(arg1)
        print("OnMoveResume")
        arg1:ClearSteerToAutonomyTask()
        arg1:ResumeMove()
    end, function(arg1)
        print("OnMovePause")
        arg1:Standby()
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
    end, nil, nil, true)

    local v = this:GetQuestNpcActor(npcs.Npc1055Data.alias, 19074)
    this:NpcForceAvatarWalkByDist(v, 5, 15)
    this:GetQuestNpcActor(npcs.Coop_KavehData.alias):NpcFollowTaskWithParams(npcs.Coop_KavehData.id, nil, nil, function(arg1)
        this:GetQuestNpcActor(npcs.Coop_KavehData.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    end, "19074", true, 1, 5, 1, 15, 20, 30, 5, 5)

    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
    actorMgr:CreateActorWithPos("Q1907403FailTrigger", "Actor/Gadget/Q1907403FailTrigger", 70900002, 0, {x = 43.119, y = 197.085, z = 2620.465}, {x = 0.0, y = 334.989, z = 0.0}, true, false, 3)
end

function Quest19074:OnSubFinish1907403(arg1)
    print("OnSubFinish1907403")
    this:NpcResetForceAvatarWalk(nil)
    this:GetQuestNpcActor(npcs.Coop_KavehData.alias, 19074):ClearFollowTask()
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    this:ActorDestroy("Q1907403FailTrigger")
end

function Quest19074:OnSubFailed1907403(arg1)
    print("OnSubFailed1907403")
    this:NpcResetForceAvatarWalk(nil)
    this:GetQuestNpcActor(npcs.Coop_KavehData.alias, 19074):ClearFollowTask()
    this:DestroyQuestNpcActor(npcs.Coop_KavehData.alias, 3)
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    this:ActorDestroy("Q1907403FailTrigger")
end

function Quest19074:OnSubStart1907402(arg1)
    print("OnSubStart1907402")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907402)
    this:DailyNpcSafeHideSelf(npcs.Npc4376Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4369Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1907402Trigger", "Actor/Gadget/Q1907402Trigger", 70900002, 0, {x = 32.721, y = 191.396, z = 2615.514}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest19074:OnSubFinish1907402(arg1)
    print("OnSubFinish1907402")
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4376Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4369Data.alias, 0, true)
end

function Quest19074:OnSubStart1907404(arg1)
    print("OnSubStart1907404")
end

function Quest19074:OnSubFinish1907404(arg1)
    print("OnSubFinish1907404")
    this:GetQuestNpcActor(npcs.Npc1055Data.alias):ResetForceAvatarWalk()
    this:GetQuestNpcActor(npcs.Coop_KavehData.alias):ClearFollowTask()
end

return Quest19074
