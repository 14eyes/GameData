require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19051 = class("Quest19051", QuestActorProxy)
Quest19051.defaultAlias = "Quest19051"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas
local n = 0
local v = 0

function Quest19051:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19051:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1905101"] = self.OnSubStart1905101,
        ["1905102"] = self.OnSubStart1905102,
        ["1905103"] = self.OnSubStart1905103,
        ["1905104"] = self.OnSubStart1905104,
        ["1905111"] = self.OnSubStart1905111,
        ["1905105"] = self.OnSubStart1905105,
        ["1905106"] = self.OnSubStart1905106,
        ["1905113"] = self.OnSubStart1905113,
        ["1905114"] = self.OnSubStart1905114,
        ["1905115"] = self.OnSubStart1905115,
        ["1905107"] = self.OnSubStart1905107,
        ["1905108"] = self.OnSubStart1905108,
        ["1905112"] = self.OnSubStart1905112,
        ["1905109"] = self.OnSubStart1905109,
        ["1905110"] = self.OnSubStart1905110
    }
end

function Quest19051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1905101"] = self.OnSubFinish1905101,
        ["1905102"] = self.OnSubFinish1905102,
        ["1905103"] = self.OnSubFinish1905103,
        ["1905104"] = self.OnSubFinish1905104,
        ["1905111"] = self.OnSubFinish1905111,
        ["1905105"] = self.OnSubFinish1905105,
        ["1905106"] = self.OnSubFinish1905106,
        ["1905113"] = self.OnSubFinish1905113,
        ["1905114"] = self.OnSubFinish1905114,
        ["1905115"] = self.OnSubFinish1905115,
        ["1905107"] = self.OnSubFinish1905107,
        ["1905108"] = self.OnSubFinish1905108,
        ["1905112"] = self.OnSubFinish1905112,
        ["1905109"] = self.OnSubFinish1905109,
        ["1905110"] = self.OnSubFinish1905110
    }
end

function Quest19051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19051:Start()
    print("Start")
end

function Quest19051:OnDestroy()
    print("OnDestroy")
end

function Quest19051:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19051:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19051:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2439Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2434Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2438Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2433Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12239Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2433Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1905106Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905107Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905114Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905115Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905108Trigger", 3, false)
    n = 0
    v = 0
end

function Quest19051:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19051:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest19051:OnSubStart1905101(arg1)
    print("OnSubStart1905101")
    self:CreateQuestNpc(arg1, npcs.Npc2439Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
end

function Quest19051:OnSubFinish1905101(arg1)
    print("OnSubFinish1905101")
end

function Quest19051:OnSubStart1905102(arg1)
    print("OnSubStart1905102")
    self:CreateQuestNpc(arg1, npcs.Npc2434Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
end

function Quest19051:OnSubFinish1905102(arg1)
    print("OnSubFinish1905102")
end

function Quest19051:OnSubStart1905103(arg1)
    print("OnSubStart1905103")
    self:CreateQuestNpc(arg1, npcs.Npc2438Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
end

function Quest19051:OnSubFinish1905103(arg1)
    print("OnSubFinish1905103")
end

function Quest19051:OnSubStart1905104(arg1)
    print("OnSubStart1905104")
    self:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905101)
end

function Quest19051:OnSubFinish1905104(arg1)
    print("OnSubFinish1905104")
    self:SafeDestroyQuestNpc(npcs.Npc2439Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2434Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2438Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
end

function Quest19051:OnSubStart1905111(arg1)
    print("OnSubStart1905111")
    self:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
    self:FinishQuestID(false, 1905111)
end

function Quest19051:OnSubFinish1905111(arg1)
    print("OnSubFinish1905111")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:LightNotifyTo("2433", 0, true)
end

function Quest19051:OnSubStart1905105(arg1)
    print("OnSubStart1905105")
    self:CreateQuestNpc(arg1, npcs.Npc2433Data.id, 5)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905102)
end

function Quest19051:OnSubFinish1905105(arg1)
    print("OnSubFinish1905105")
    self:SafeDestroyQuestNpc(npcs.Npc2439Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2434Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2438Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2433Data.alias, 3)
end

function Quest19051:OnSubStart1905106(arg1)
    print("OnSubStart1905106")
    actorMgr:CreateActorWithPos("Q1905106Trigger", "Actor/Gadget/Q1905106Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou04").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou04").rot, true, false, 3)
end

function Quest19051:OnSubFinish1905106(arg1)
    print("OnSubFinish1905106")
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905105)
end

function Quest19051:OnSubStart1905113(arg1)
    print("OnSubStart1905113")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_BeidouData.id, 1, npcs.Coop_BeidouData.alias)
end

function Quest19051:OnSubFinish1905113(arg1)
    print("OnSubFinish1905113")
end

function Quest19051:OnSubStart1905114(arg1)
    print("OnSubStart1905114")
    n = 0
    self:CallDelay(1.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Coop_BeidouData.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:SetWalkSpeedRatio(0.9)
        local v = arg1:GetQuestNpcActor(npcs.Coop_BeidouData.alias, 19051)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData1905114, 6, 2, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:ClearSteerToAutonomyTask()
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP10240101Beidou05").rot))
            if n == 1 then
                print("\229\136\164\230\150\173\229\188\128\232\189\1661\230\152\175\229\144\166\231\187\147\230\157\159")
                actorMgr:CreateActorWithPos("Q1905114Trigger", "Actor/Gadget/Q1905114Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101GaoShi01").pos, sceneData:GetDummyPoint(3, "COOP10240101GaoShi01").rot, true, false, 3)
            end
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
            local avatarPos = actorUtils.GetAvatarPos()
            local pos = arg1:GetPos()
            local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
            arg1:SteerToAutonomyTask(tbl, 1, true, true)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:TryResumeCurAutoNarrator()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, true)

        arg1:NpcForceAvatarWalkByDist(v, 2, 3)
        arg1:NpcNarratorOnlyTaskByData(v, datas.NarratorWithId1905114, function(arg1)
            print("CheckDistance")
            if arg1:GetSubQuestState(1905114) == 2 then
                n = 1
                local pos = arg1:GetPos()
                local v = sceneData:GetDummyPoint(3, "COOP10240101GaoShi01").pos
                local dist = M.Dist(v, pos)
                print("StartCheck")
                if dist < 0.5 then
                    actorUtils.FinishQuestID(false, 1905114)
                end
            end
        end)
    end)
end

function Quest19051:OnSubFinish1905114(arg1)
    print("OnSubFinish1905114")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_BeidouData.alias)
    questNpcActor:ResetForceAvatarWalk()
    questNpcActor:DisableInteeHeadCtrl(false)
end

function Quest19051:OnSubStart1905115(arg1)
    print("OnSubStart1905115")
    self:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905106)
    actorMgr:CreateActorWithPos("Q1905115Trigger", "Actor/Gadget/Q1905115Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101GaoShi01").pos, sceneData:GetDummyPoint(3, "COOP10240101GaoShi01").rot, true, false, 3)
end

function Quest19051:OnSubFinish1905115(arg1)
    print("OnSubFinish1905115")
end

function Quest19051:OnSubStart1905107(arg1)
    print("OnSubStart1905107")
    v = 0
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_BeidouData.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.9)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Coop_BeidouData.alias, 19051)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor2, datas.RoutePointsData1905107, 6, 2, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:ClearSteerToAutonomyTask()
        arg1:Standby()
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
        if v == 1 then
            print("\229\136\164\230\150\173\229\188\128\232\189\1662\230\152\175\229\144\166\231\187\147\230\157\159")
            actorMgr:CreateActorWithPos("Q1905107Trigger", "Actor/Gadget/Q1905107Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou05").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou05").rot, true, false, 3)
        end
    end, nil, nil, function(arg1)
        arg1:TryPauseCurAutoNarrator()
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
    end, function(arg1)
        arg1:ClearSteerToAutonomyTask()
        arg1:TryResumeCurAutoNarrator()
        arg1:DisableInteeHeadCtrl(true)
        arg1:ResumeMove()
    end, nil, true)

    self:NpcForceAvatarWalkByDist(questNpcActor2, 2, 3)
    self:NpcNarratorOnlyTaskByData(questNpcActor2, datas.NarratorWithId1905107, function(arg1)
        print("CheckDistance")
        if arg1:GetSubQuestState(1905107) == 2 then
            v = 1
            local pos = arg1:GetPos()
            local pos2 = sceneData:GetDummyPoint(3, "COOP10240101Beidou05").pos
            local dist = M.Dist(pos2, pos)
            print("StartCheck")
            if dist < 0.5 then
                actorUtils.FinishQuestID(false, 1905107)
            end
        end
    end)
end

function Quest19051:OnSubFinish1905107(arg1)
    print("OnSubFinish1905107")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_BeidouData.alias)
    questNpcActor:ResetForceAvatarWalk()
    questNpcActor:DisableInteeHeadCtrl(false)
    self:ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest19051:OnSubStart1905108(arg1)
    print("OnSubStart1905108")
    self:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905103)
    actorMgr:CreateActorWithPos("Q1905108Trigger", "Actor/Gadget/Q1905108Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou05").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou05").rot, true, false, 3)
end

function Quest19051:OnSubFinish1905108(arg1)
    print("OnSubFinish1905108")
end

function Quest19051:OnSubStart1905112(arg1)
    print("OnSubStart1905112")
end

function Quest19051:OnSubFinish1905112(arg1)
    print("OnSubFinish1905112")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:LightNotifyTo("2433", 0, true)
end

function Quest19051:OnSubStart1905109(arg1)
    print("OnSubStart1905109")
    self:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    self:GetQuestNpcActor(npcs.Coop_BeidouData.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12239Data.id, 2)
end

function Quest19051:OnSubFinish1905109(arg1)
    print("OnSubFinish1905109")
    self:SafeDestroyQuestNpc(npcs.Npc12239Data.alias, 3)
    self:GetQuestNpcActor(npcs.Coop_BeidouData.alias):DoFreeStateTrigger()
end

function Quest19051:OnSubStart1905110(arg1)
    print("OnSubStart1905110")
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905104)
end

function Quest19051:OnSubFinish1905110(arg1)
    print("OnSubFinish1905110")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
end

return Quest19051
