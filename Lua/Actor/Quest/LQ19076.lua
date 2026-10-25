require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19076 = class("Quest19076", QuestActorProxy)
Quest19076.defaultAlias = "Quest19076"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19076:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19076:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1907601"] = self.OnSubStart1907601,
        ["1907602"] = self.OnSubStart1907602,
        ["1907603"] = self.OnSubStart1907603,
        ["1907604"] = self.OnSubStart1907604,
        ["1907608"] = self.OnSubStart1907608,
        ["1907605"] = self.OnSubStart1907605,
        ["1907606"] = self.OnSubStart1907606,
        ["1907607"] = self.OnSubStart1907607
    }
end

function Quest19076:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1907601"] = self.OnSubFinish1907601,
        ["1907602"] = self.OnSubFinish1907602,
        ["1907603"] = self.OnSubFinish1907603,
        ["1907604"] = self.OnSubFinish1907604,
        ["1907608"] = self.OnSubFinish1907608,
        ["1907605"] = self.OnSubFinish1907605,
        ["1907606"] = self.OnSubFinish1907606,
        ["1907607"] = self.OnSubFinish1907607
    }
end

function Quest19076:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1907602"] = self.OnSubFailed1907602}
end

function Quest19076:Start()
    print("Start")
end

function Quest19076:OnDestroy()
    print("OnDestroy")
end

function Quest19076:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19076:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19076:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1073)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KavehData.alias)
    questNpcActor:ResetForceAvatarWalk()
    this:DisableMainPageWithConfigByQuest(false, "ConfigMainPageDisableInfo")
    this:LightNotifyTo(npcs.Npc4414Data.alias, 0, true)
    this:UnCallFunc(self.unCallNPCTrigger)
    questNpcActor:ClearCheckPlayerDistTask()
    actorMgr:DestroyEntityActor("Q1907601N515Trigger", 1073, false)
    actorMgr:DestroyEntityActor("Q1907603N1053Trigger", 1073, false)
    actorMgr:DestroyEntityActor("Q1907604N515Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907605N515Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907607N515Trigger", 3, false)
end

function Quest19076:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19076:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19076:unCallNPCTrigger()
    print("unCallNPCTrigger")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1907607, 1, 20, 1)
end

function Quest19076:FuncBegin()
    print("FuncBegin")
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KavehData.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DoFreeStyle(133002, true, nil, true, true, false, false)
end

function Quest19076:OnSubStart1907601(arg1)
    print("OnSubStart1907601")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907601)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1907601, 1, 8, 1)
end

function Quest19076:OnSubFinish1907601(arg1)
    print("OnSubFinish1907601")
end

function Quest19076:OnSubStart1907602(arg1)
    print("OnSubStart1907602")
    this:CreateQuestNpc(arg1, npcs.Coop_KavehData.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4414Data.alias, 1, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KavehData.alias, 19076)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 5, 3, -1, function(arg1)
        print("OnMoveFinish")
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        this:GetQuestNpcActor(npcs.Coop_KavehData.alias):SteerToAutonomyTask(datas.NewVector3, 2, true, true)
        this:CallDelay(2, function(arg1)
            this:GetQuestNpcActor(npcs.Coop_KavehData.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
            this:NarratorOnlyTaskByData(datas.Narrator_1907601, function(arg1)
                this:GetQuestNpcActor(npcs.Coop_KavehData.alias, 19076):SteerToAutonomyTask(datas.steerpoint, 0, true, true)
                local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KavehData.alias, 19076)
                this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_01, 5, 3, -1, function(arg1)
                    print("OnMoveFinish")
                    arg1:SyncPos(2)
                    if arg1.BeFollowState == BeFollowState.FAILED then
                        return
                    end

                    this:GetQuestNpcActor(npcs.Coop_KavehData.alias):SteerToAutonomyTask(datas.NewVector3_01, 1, true, true)
                    this:CallDelay(1, function(arg1)
                        this:GetQuestNpcActor(npcs.Coop_KavehData.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
                        this:CallDelay(3, function(arg1)
                            this:GetQuestNpcActor(npcs.Coop_KavehData.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
                        end)
                    end)
                end, nil, nil, function(arg1)
                    print("OnMovePause")
                    arg1:Standby()
                    local avatarPos = actorUtils.GetAvatarPos()
                    local pos = arg1:GetPos()
                    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
                    arg1:SteerToAutonomyTask(tbl, 1, true, true)
                end, function(arg1)
                    print("OnMoveResume")
                    arg1:ClearSteerToAutonomyTask()
                    arg1:ResumeMove()
                end, nil, true)

                this:NarratorOnlyTaskByData(datas.Narrator_1907602, function(arg1)
                    this:GetQuestNpcActor(npcs.Coop_KavehData.alias):DoFreeStateTrigger()
                    actorUtils.FinishQuestID(false, 1907602)
                end, 19076)
            end, 19076)

            this:CallDelay(5, function(arg1)
                this:GetQuestNpcActor(npcs.Coop_KavehData.alias, 19076):DoFreeStyleWithSuite(133002, true, nil, true, true, false, false, "default")
            end)
        end)
    end, nil, nil, function(arg1)
        print("OnMovePause")
        arg1:Standby()
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
    end, function(arg1)
        print("OnMoveResume")
        arg1:ClearSteerToAutonomyTask()
        arg1:ResumeMove()
    end, nil, true)

    local v = this:GetQuestNpcActor(npcs.Coop_KavehData.alias)
    v:ForceAvatarWalkByDist(5, 15)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
    v:DisableInteeHeadCtrl(true)
    v:CheckPlayerDistTask(15, 1, nil, function(arg1)
        actorUtils.FinishQuestID(true, 1907602)
    end)
end

function Quest19076:OnSubFinish1907602(arg1)
    print("OnSubFinish1907602")
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KavehData.alias)
    questNpcActor:ResetForceAvatarWalk()
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:ClearCheckPlayerDistTask()
end

function Quest19076:OnSubFailed1907602(arg1)
    print("OnSubFailed1907602")
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KavehData.alias)
    questNpcActor:ResetForceAvatarWalk()
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    this:StopNarrator()
    this:ClearNarratorTask()
    questNpcActor:ClearCheckPlayerDistTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
end

function Quest19076:OnSubStart1907603(arg1)
    print("OnSubStart1907603")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907603)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1053Data.id, 1907603, 1, 30, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4414Data.alias, 1, false)
end

function Quest19076:OnSubFinish1907603(arg1)
    print("OnSubFinish1907603")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1073)
end

function Quest19076:OnSubStart1907604(arg1)
    print("OnSubStart1907604")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907604)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1907604, 1, 20, 1)
    this:LightNotifyTo(npcs.Npc4414Data.alias, 0, true)
end

function Quest19076:OnSubFinish1907604(arg1)
    print("OnSubFinish1907604")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
end

function Quest19076:OnSubStart1907608(arg1)
    print("OnSubStart1907608")
end

function Quest19076:OnSubFinish1907608(arg1)
    print("OnSubFinish1907608")
end

function Quest19076:OnSubStart1907605(arg1)
    print("OnSubStart1907605")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907605)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1907605, 1, 10, 1)
end

function Quest19076:OnSubFinish1907605(arg1)
    print("OnSubFinish1907605")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
end

function Quest19076:OnSubStart1907606(arg1)
    print("OnSubStart1907606")
end

function Quest19076:OnSubFinish1907606(arg1)
    print("OnSubFinish1907606")
end

function Quest19076:OnSubStart1907607(arg1)
    print("OnSubStart1907607")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907607)
    this:CallDelay(2, self.unCallNPCTrigger)
end

function Quest19076:OnSubFinish1907607(arg1)
    print("OnSubFinish1907607")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
end

return Quest19076
