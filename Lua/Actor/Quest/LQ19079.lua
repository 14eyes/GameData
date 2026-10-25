require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19079 = class("Quest19079", QuestActorProxy)
Quest19079.defaultAlias = "Quest19079"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19079:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19079:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1907901"] = self.OnSubStart1907901,
        ["1907902"] = self.OnSubStart1907902,
        ["1907903"] = self.OnSubStart1907903
    }
end

function Quest19079:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1907901"] = self.OnSubFinish1907901,
        ["1907902"] = self.OnSubFinish1907902,
        ["1907903"] = self.OnSubFinish1907903
    }
end

function Quest19079:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1907902"] = self.OnSubFailed1907902}
end

function Quest19079:Start()
    print("Start")
end

function Quest19079:OnDestroy()
    print("OnDestroy")
end

function Quest19079:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19079:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19079:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4122Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4123Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4127Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4128Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4129Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4109Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4122Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4123Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4124Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4128Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4129Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19079Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907903TriggerBlackInteraction", 3, false)
    actorMgr:DestroyEntityActor("Q1907903TriggerRequest", 3, false)
end

function Quest19079:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19079:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest19079:OnSubStart1907901(arg1)
    print("OnSubStart1907901")
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Coop_KaeyaData.id, 1)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc13304Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13305Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19079Trigger", "Actor/Gadget/Q19079Trigger", 70900002, 0, points.TPos_Q19079Trigger.pos, points.TPos_Q19079Trigger.rot, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    this:NpcCreate(arg1, npcs.Npc13456Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19079:OnSubFinish1907901(arg1)
    print("OnSubFinish1907901")
end

function Quest19079:OnSubStart1907902(arg1)
    print("OnSubStart1907902")
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias, 19079):SetWalkSpeedRatio(0.75)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias, 19079)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 5, 3, -1, function()
        local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias, 19079)
        this:NpcResetForceAvatarWalk(questNpcActor)
        actorUtils.FinishQuestID(false, 1907902)
    end, function()
        print("OnPause")
    end, function()
        print("OnResume")
    end, function()
        print("OnMovePause")
        local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
        questNpcActor:Standby()
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = questNpcActor:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        questNpcActor:SteerToAutonomyTask(tbl, 1, true, true)
        this:TryPauseCurAutoNarrator()
        print("TryPauseCurAutoNarrator")
    end, function()
        print("OnMoveResume")
        local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
        questNpcActor:ClearSteerToAutonomyTask()
        questNpcActor:ResumeMove()
        this:TryResumeCurAutoNarrator()
        print("TryResumeCurAutoNarrator")
    end, nil, true)

    this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 19079)
    print("19079NarratorBegin")
    this:NpcForceAvatarWalkByDist(questNpcActor, 2, 3)
end

function Quest19079:OnSubFinish1907902(arg1)
    print("OnSubFinish1907902")
end

function Quest19079:OnSubFailed1907902(arg1)
    print("OnSubFailed1907902")
    this:ClearNarratorTask()
    print("19079NarratorClear")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19079:OnSubStart1907903(arg1)
    print("OnSubStart1907903")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1907903)
    this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4122Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4123Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4128Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1907903TriggerRequest", "Actor/Gadget/Q1907903TriggerRequest", 70900002, 0, {x = -2040.692, y = 202.925, z = 2601.7}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13304Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13305Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19079:OnSubFinish1907903(arg1)
    print("OnSubFinish1907903")
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13304Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13305Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13456Data.alias, 3)
    this:ClearNarratorTask()
end

return Quest19079
