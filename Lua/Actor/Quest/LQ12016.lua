require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12016 = class("Quest12016", QuestActorProxy)
Quest12016.defaultAlias = "Quest12016"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest12016:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest12016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1201601"] = self.OnSubStart1201601,
        ["1201602"] = self.OnSubStart1201602,
        ["1201603"] = self.OnSubStart1201603,
        ["1201604"] = self.OnSubStart1201604,
        ["1201605"] = self.OnSubStart1201605,
        ["1201615"] = self.OnSubStart1201615,
        ["1201606"] = self.OnSubStart1201606,
        ["1201607"] = self.OnSubStart1201607,
        ["1201608"] = self.OnSubStart1201608,
        ["1201609"] = self.OnSubStart1201609,
        ["1201610"] = self.OnSubStart1201610,
        ["1201611"] = self.OnSubStart1201611,
        ["1201612"] = self.OnSubStart1201612,
        ["1201613"] = self.OnSubStart1201613,
        ["1201614"] = self.OnSubStart1201614
    }
end

function Quest12016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1201601"] = self.OnSubFinish1201601,
        ["1201602"] = self.OnSubFinish1201602,
        ["1201603"] = self.OnSubFinish1201603,
        ["1201604"] = self.OnSubFinish1201604,
        ["1201605"] = self.OnSubFinish1201605,
        ["1201615"] = self.OnSubFinish1201615,
        ["1201606"] = self.OnSubFinish1201606,
        ["1201607"] = self.OnSubFinish1201607,
        ["1201608"] = self.OnSubFinish1201608,
        ["1201609"] = self.OnSubFinish1201609,
        ["1201610"] = self.OnSubFinish1201610,
        ["1201611"] = self.OnSubFinish1201611,
        ["1201612"] = self.OnSubFinish1201612,
        ["1201613"] = self.OnSubFinish1201613,
        ["1201614"] = self.OnSubFinish1201614
    }
end

function Quest12016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1201601"] = self.OnSubFailed1201601,
        ["1201602"] = self.OnSubFailed1201602,
        ["1201603"] = self.OnSubFailed1201603,
        ["1201604"] = self.OnSubFailed1201604,
        ["1201605"] = self.OnSubFailed1201605,
        ["1201615"] = self.OnSubFailed1201615,
        ["1201606"] = self.OnSubFailed1201606,
        ["1201607"] = self.OnSubFailed1201607,
        ["1201608"] = self.OnSubFailed1201608,
        ["1201609"] = self.OnSubFailed1201609,
        ["1201610"] = self.OnSubFailed1201610,
        ["1201611"] = self.OnSubFailed1201611,
        ["1201612"] = self.OnSubFailed1201612,
        ["1201613"] = self.OnSubFailed1201613,
        ["1201614"] = self.OnSubFailed1201614
    }
end

function Quest12016:Start()
    print("Start")
end

function Quest12016:OnDestroy()
    print("OnDestroy")
end

function Quest12016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12016:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12016:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest12016:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest12016:OnSubStart1201601(arg1)
    print("OnSubStart1201601")
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc3064Data.id, 0)
    actorMgr:CreateActorWithPos("Q1201601Trigger", "Actor/Gadget/Q1201601Trigger", 70900002, 0, points.TPos_Q1201601Trigger.pos, points.TPos_Q1201601Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1201600Trigger", "Actor/Gadget/Q1201600Trigger", 70900002, 0, points.TPos_Q1201600Trigger.pos, points.TPos_Q1201600Trigger.rot, true, false, 3)
end

function Quest12016:OnSubFinish1201601(arg1)
    print("OnSubFinish1201601")
end

function Quest12016:OnSubFailed1201601(arg1)
    print("OnSubFailed1201601")
end

function Quest12016:OnSubStart1201602(arg1)
    print("OnSubStart1201602")
    this:CreateQuestNpc(arg1, npcs.Npc12076Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3024Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3003Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3038Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3005Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3018Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3001Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1201602Trigger", "Actor/Gadget/Q1201602Trigger", 70900002, 0, points.TPos_Q1201602Trigger.pos, points.TPos_Q1201602Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc3006Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc3024Data.alias):DoFreeStyle(1130, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc3003Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc3038Data.alias):DoFreeStyle(1050, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc3005Data.alias):DoFreeStyle(1130, true, nil, true, true, false)
    this:GetQuestNpcActor(npcs.Npc3018Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest12016:OnSubFinish1201602(arg1)
    print("OnSubFinish1201602")
    this:SafeDestroyQuestNpc(npcs.Npc3064Data.alias, 3)
end

function Quest12016:OnSubFailed1201602(arg1)
    print("OnSubFailed1201602")
end

function Quest12016:OnSubStart1201603(arg1)
    print("OnSubStart1201603")
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3001Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc12076Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.85)
    local v = this:GetQuestNpcActor(npcs.Npc12076Data.alias, 12016)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData1201601, 4, 2, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q12016Watch1").rot))
        actorMgr:CreateActorWithPos("Q1201603Trigger", "Actor/Gadget/Q1201603Trigger", 70900002, 0, points.TPos_Q1201603Trigger.pos, points.TPos_Q1201603Trigger.rot, true, false, 3)
    end, nil, nil, function(arg1)
        arg1:TryPauseCurAutoNarrator()
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
    end, function(arg1)
        arg1:ClearSteerToAutonomyTask()
        arg1:TryResumeCurAutoNarrator()
        arg1:DisableInteeHeadCtrl(true)
        arg1:ResumeMove()
    end, nil, true)

    this:NpcForceAvatarWalkByDist(v, 2, 3)
    this:NpcNarratorOnlyTaskByData(v, datas.NarratorWithId1201602, function(arg1)
        this:CallDelay(4, function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithId1201603)
        end)
    end)
end

function Quest12016:OnSubFinish1201603(arg1)
    print("OnSubFinish1201603")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc12076Data.alias)
    questNpcActor:ResetForceAvatarWalk()
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest12016:OnSubFailed1201603(arg1)
    print("OnSubFailed1201603")
end

function Quest12016:OnSubStart1201604(arg1)
    print("OnSubStart1201604")
    this:CreateQuestNpc(arg1, npcs.Npc3173Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3001Data.alias, 1, true)
    this:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q12016Milk1").pos, 0, 5, true, false)
    globalActor:StopLocalAvatar()
    this:EnablePlayerInput(false)
    this:NarratorOnlyTaskByData(datas.NarratorWithId1201604)
    this:CallDelay(5, function(arg1)
        actorUtils.FinishQuestID(false, 1201604)
    end)
end

function Quest12016:OnSubFinish1201604(arg1)
    print("OnSubFinish1201604")
    this:EnablePlayerInput(true)
end

function Quest12016:OnSubFailed1201604(arg1)
    print("OnSubFailed1201604")
end

function Quest12016:OnSubStart1201605(arg1)
    print("OnSubStart1201605")
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3001Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc12076Data.alias):WalkToRouteTask(datas.RoutePointsData1201605, function(arg1)
        actorMgr:CreateActorWithPos("Q1201605Trigger", "Actor/Gadget/Q1201605Trigger", 70900002, 0, points.TPos_Q1201605Trigger.pos, points.TPos_Q1201605Trigger.rot, true, false, 3)
    end)
end

function Quest12016:OnSubFinish1201605(arg1)
    print("OnSubFinish1201605")
end

function Quest12016:OnSubFailed1201605(arg1)
    print("OnSubFailed1201605")
end

function Quest12016:OnSubStart1201615(arg1)
    print("OnSubStart1201615")
    actorMgr:CreateActorWithPos("Q1201615Trigger", "Actor/Gadget/Q1201615Trigger", 70900002, 0, points.TPos_Q1201615Trigger.pos, points.TPos_Q1201615Trigger.rot, true, false, 3)
end

function Quest12016:OnSubFinish1201615(arg1)
    print("OnSubFinish1201615")
    this:ActorDestroy("Q1201615Trigger")
end

function Quest12016:OnSubFailed1201615(arg1)
    print("OnSubFailed1201615")
end

function Quest12016:OnSubStart1201606(arg1)
    print("OnSubStart1201606")
    this:CreateQuestNpc(arg1, npcs.Npc3173Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3001Data.alias, 1, true)
    this:RequestInteraction(npcs.Npc3173Data.alias)
end

function Quest12016:OnSubFinish1201606(arg1)
    print("OnSubFinish1201606")
    this:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
end

function Quest12016:OnSubFailed1201606(arg1)
    print("OnSubFailed1201606")
end

function Quest12016:OnSubStart1201607(arg1)
    print("OnSubStart1201607")
    this:CreateQuestNpc(arg1, npcs.Npc3029Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3001Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1201607Trigger", "Actor/Gadget/Q1201607Trigger", 70900002, 0, points.TPos_Q1201607Trigger.pos, points.TPos_Q1201607Trigger.rot, true, false, 3)
end

function Quest12016:OnSubFinish1201607(arg1)
    print("OnSubFinish1201607")
end

function Quest12016:OnSubFailed1201607(arg1)
    print("OnSubFailed1201607")
end

function Quest12016:OnSubStart1201608(arg1)
    print("OnSubStart1201608")
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3030Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc3001Data.alias, 0, true)
    this:RequestInteraction(npcs.Npc3029Data.alias)
end

function Quest12016:OnSubFinish1201608(arg1)
    print("OnSubFinish1201608")
    this:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3006Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3024Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3003Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3005Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3018Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3173Data.alias, 3)
end

function Quest12016:OnSubFailed1201608(arg1)
    print("OnSubFailed1201608")
end

function Quest12016:OnSubStart1201609(arg1)
    print("OnSubStart1201609")
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3030Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1201609Trigger", "Actor/Gadget/Q1201609Trigger", 70900002, 0, points.TPos_Q1201609Trigger.pos, points.TPos_Q1201609Trigger.rot, true, false, 3)
end

function Quest12016:OnSubFinish1201609(arg1)
    print("OnSubFinish1201609")
end

function Quest12016:OnSubFailed1201609(arg1)
    print("OnSubFailed1201609")
end

function Quest12016:OnSubStart1201610(arg1)
    print("OnSubStart1201610")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12076Data.id, 0, npcs.Npc12076Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3030Data.alias, 1, true)
end

function Quest12016:OnSubFinish1201610(arg1)
    print("OnSubFinish1201610")
    this:NarratorOnlyTaskByData(datas.NarratorWithId1201605)
end

function Quest12016:OnSubFailed1201610(arg1)
    print("OnSubFailed1201610")
end

function Quest12016:OnSubStart1201611(arg1)
    print("OnSubStart1201611")
    this:CreateQuestNpc(arg1, npcs.Npc12076Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12082Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12083Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12084Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3030Data.alias, 1, true)
end

function Quest12016:OnSubFinish1201611(arg1)
    print("OnSubFinish1201611")
end

function Quest12016:OnSubFailed1201611(arg1)
    print("OnSubFailed1201611")
end

function Quest12016:OnSubStart1201612(arg1)
    print("OnSubStart1201612")
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3030Data.alias, 1, true)
end

function Quest12016:OnSubFinish1201612(arg1)
    print("OnSubFinish1201612")
end

function Quest12016:OnSubFailed1201612(arg1)
    print("OnSubFailed1201612")
end

function Quest12016:OnSubStart1201613(arg1)
    print("OnSubStart1201613")
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3030Data.alias, 1, true)
end

function Quest12016:OnSubFinish1201613(arg1)
    print("OnSubFinish1201613")
end

function Quest12016:OnSubFailed1201613(arg1)
    print("OnSubFailed1201613")
end

function Quest12016:OnSubStart1201614(arg1)
    print("OnSubStart1201614")
    this:DailyNpcSafeHideSelf(npcs.Npc3054Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc3030Data.alias, 0, true)
    this:NarratorOnlyTaskByData(datas.NarratorWithId1201606)
end

function Quest12016:OnSubFinish1201614(arg1)
    print("OnSubFinish1201614")
    this:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3029Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12083Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12084Data.alias, 3)
end

function Quest12016:OnSubFailed1201614(arg1)
    print("OnSubFailed1201614")
end

return Quest12016
