require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3008 = class("Quest3008", QuestActorProxy)
Quest3008.defaultAlias = "Quest3008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["300810"] = self.OnSubStart300810,
        ["300811"] = self.OnSubStart300811,
        ["300801"] = self.OnSubStart300801,
        ["300812"] = self.OnSubStart300812,
        ["300802"] = self.OnSubStart300802,
        ["300803"] = self.OnSubStart300803,
        ["300804"] = self.OnSubStart300804,
        ["300815"] = self.OnSubStart300815,
        ["300805"] = self.OnSubStart300805,
        ["300816"] = self.OnSubStart300816,
        ["300817"] = self.OnSubStart300817,
        ["300813"] = self.OnSubStart300813,
        ["300806"] = self.OnSubStart300806,
        ["300807"] = self.OnSubStart300807,
        ["300808"] = self.OnSubStart300808,
        ["300814"] = self.OnSubStart300814
    }
end

function Quest3008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["300810"] = self.OnSubFinish300810,
        ["300811"] = self.OnSubFinish300811,
        ["300801"] = self.OnSubFinish300801,
        ["300812"] = self.OnSubFinish300812,
        ["300802"] = self.OnSubFinish300802,
        ["300803"] = self.OnSubFinish300803,
        ["300804"] = self.OnSubFinish300804,
        ["300815"] = self.OnSubFinish300815,
        ["300805"] = self.OnSubFinish300805,
        ["300816"] = self.OnSubFinish300816,
        ["300817"] = self.OnSubFinish300817,
        ["300813"] = self.OnSubFinish300813,
        ["300806"] = self.OnSubFinish300806,
        ["300807"] = self.OnSubFinish300807,
        ["300808"] = self.OnSubFinish300808,
        ["300814"] = self.OnSubFinish300814
    }
end

function Quest3008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["300814"] = self.OnSubFailed300814}
end

function Quest3008:Start()
    print("Start")
end

function Quest3008:OnDestroy()
    print("OnDestroy")
end

function Quest3008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3008:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest3008:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest3008:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest3008:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3008:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("Dialogue refresh candybox")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 300815)
    elseif arg1 == 2 then
        print("Param2222222222")
        actor:FinishQuestID(false, 300816)
    elseif arg1 == 3 then
        actor:FinishQuestID(false, 300817)
    end
end

function Quest3008:OnSubStart300810(arg1)
    print("OnSubStart300810")
    actorMgr:CreateActorWithPos("Q3008CityEntrance", "Actor/Gadget/Q3008CityEntrance", 70900002, 0, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").pos, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").rot, true, false, 3)
    self:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4021Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4044Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4069Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4067Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4314Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4070Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4056Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4077Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4080Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4098Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4079Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4074Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4073Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4072Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4076Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4075Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4071Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4078Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300701B"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    local v4 = globalActor
    local v5 = v4
    local func = v4.SpawnAttachInFixedArea
    local str3 = "Q300701G"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
    self:CallDelay(4, function(arg1)
        arg1:ActorDestroy("Q3008ChairInstantTrigger")
        arg1:DestroyQuestNpcActor(npcs.Npc12555Data.alias, 3)
    end)
end

function Quest3008:OnSubFinish300810(arg1)
    print("OnSubFinish300810")
    self:TransmitPlayerByQuestId(300810, 1)
    self:ActorDestroy("Q3008ChairInstantTrigger")
end

function Quest3008:OnSubStart300811(arg1)
    print("OnSubStart300811")
    self:CreateQuestNpcWithTriggerBlack("300811Trigger", 300811, 1005, 0, 12, 2)
    self:NpcCreate(arg1, npcs.Npc12657Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12658Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12666Data.id, 0)
    actorMgr:CreateActorWithPos("Q3008FrontGateTrigger", "Actor/Gadget/Q3008FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3008EastGateTrigger", "Actor/Gadget/Q3008EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    self:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4021Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4044Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4069Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4067Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4314Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4070Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4056Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4077Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4080Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4098Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4079Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4074Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4073Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4072Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4076Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4075Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4071Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4078Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300701B"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    local v4 = globalActor
    local v5 = v4
    local func = v4.SpawnAttachInFixedArea
    local str3 = "Q300701G"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3008:OnSubFinish300811(arg1)
    print("OnSubFinish300811")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest3008:OnSubStart300801(arg1)
    print("OnSubStart300801")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTrigger("300801Trigger", 300801, npcs.Npc12555Data.id, 0, 8)
        arg1_2:NpcCreate(arg1, npcs.Npc12652Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc4018Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12653Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12654Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12655Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12656Data.id, 0)
        actorMgr:CreateActorWithPos("Q3008EastGateTrigger", "Actor/Gadget/Q3008EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3008FrontGateTrigger", "Actor/Gadget/Q3008FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
        arg1_2:NotifyTo(npcs.Npc4020Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4021Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4054Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4044Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4069Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4068Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4067Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4066Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4314Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4070Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4049Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4315Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4065Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4060Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4062Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4056Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4077Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4080Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4098Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4079Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4074Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4073Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4072Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4076Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4075Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4071Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4078Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4102Data.alias, 1, true)
        local v = globalActor
        local v2 = v
        local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
        local str = "Q300701B"
        local str2 = "VoidAttachNew_PlayerBoy"
        local n = 10000005
        local v3
        local tbl = {}
        local n2 = 2412
        tbl[1] = 2103
        tbl[2] = n2
        spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
        local v4 = globalActor
        local v5 = v4
        local func = v4.SpawnAttachInFixedArea
        local str3 = "Q300701G"
        local str4 = "VoidAttachNew_PlayerGirl"
        local n3 = 10000007
        local v6
        local tbl2 = {}
        local n4 = 2412
        tbl2[1] = 2103
        tbl2[2] = n4
        func(v5, str3, str4, n3, v6, tbl2, nil, true)
    end)
end

function Quest3008:OnSubFinish300801(arg1)
    print("OnSubFinish300801")
end

function Quest3008:OnSubStart300812(arg1)
    print("OnSubStart300812")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(8.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithIdWalkTalk1)
        end)
    end)

    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12555Data.alias)
    questNpcActor:Standby()
    questNpcActor:SetWalkSpeedRatio(0.8)
    self:NpcForceAvatarWalkByDist(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3008), 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:EnableInteraction(false)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3008), datas.RoutePointsData, 30, 3, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q3007Day1MerchantADina").rot))
        arg1:ClearSteerToAutonomyTask()
        actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 300812)
    end, nil, nil, function(arg1)
        print("OnMovePause")
        arg1:TryPauseCurAutoNarrator()
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        local actor = actorMgr:GetActor("3008")
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
    end, function(arg1)
        print("OnMoveResume")
        arg1:ClearSteerToAutonomyTask()
        arg1:TryResumeCurAutoNarrator()
        arg1:DisableInteeHeadCtrl(true)
        arg1:ResumeMove()
    end, nil, true)
end

function Quest3008:OnSubFinish300812(arg1)
    print("OnSubFinish300812")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12555Data.alias)
    questNpcActor:Standby()
    self:NpcResetForceAvatarWalk(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3008))
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:EnableInteraction(true)
end

function Quest3008:OnSubStart300802(arg1)
    print("OnSubStart300802")
    actorMgr:CreateActorWithPos("Q3008EastGateTrigger", "Actor/Gadget/Q3008EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3008FrontGateTrigger", "Actor/Gadget/Q3008FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3008TriggerMerchantA", "Actor/Gadget/Q3008TriggerMerchantA", 70900002, 0, {x = -429.528, y = 236.326, z = 2737.96}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    self:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4021Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4044Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4069Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4067Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4314Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4070Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4056Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4077Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4080Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4098Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4079Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4074Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4073Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4072Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4076Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4075Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4071Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4078Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300701B"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    local v4 = globalActor
    local v5 = v4
    local func = v4.SpawnAttachInFixedArea
    local str3 = "Q300701G"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3008:OnSubFinish300802(arg1)
    print("OnSubFinish300802")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest3008:OnSubStart300803(arg1)
    print("OnSubStart300803")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithIdWalkTalk2)
        end)
    end)

    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12555Data.alias)
    questNpcActor:Standby()
    questNpcActor:SetWalkSpeedRatio(0.8)
    self:NpcForceAvatarWalkByDist(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3008), 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:EnableInteraction(false)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3008), datas.RoutePointsData1, 30, 3, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q3007Day1MerchantCDina").rot))
        arg1:ClearSteerToAutonomyTask()
        actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 300803)
    end, nil, nil, function(arg1)
        print("OnMovePause")
        arg1:TryPauseCurAutoNarrator()
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        local actor = actorMgr:GetActor("3008")
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
    end, function(arg1)
        print("OnMoveResume")
        arg1:ClearSteerToAutonomyTask()
        arg1:TryResumeCurAutoNarrator()
        arg1:DisableInteeHeadCtrl(true)
        arg1:ResumeMove()
    end, nil, true)
end

function Quest3008:OnSubFinish300803(arg1)
    print("OnSubFinish300803")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12555Data.alias)
    questNpcActor:Standby()
    self:NpcResetForceAvatarWalk(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3008))
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:EnableInteraction(true)
end

function Quest3008:OnSubStart300804(arg1)
    print("OnSubStart300804")
    actorMgr:CreateActorWithPos("Q3008EastGateTrigger", "Actor/Gadget/Q3008EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3008FrontGateTrigger", "Actor/Gadget/Q3008FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
    self:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4021Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4044Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4069Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4067Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4314Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4070Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4056Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4077Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4080Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4098Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4079Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4074Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4073Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4072Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4076Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4075Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4071Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4078Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q3008TriggerMerchantC", "Actor/Gadget/Q3008TriggerMerchantC", 70900002, 0, {x = -429.986, y = 235.92, z = 2771.17}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300701B"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    local v4 = globalActor
    local v5 = v4
    local func = v4.SpawnAttachInFixedArea
    local str3 = "Q300701G"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3008:OnSubFinish300804(arg1)
    print("OnSubFinish300804")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest3008:OnSubStart300815(arg1)
    print("OnSubStart300815")
end

function Quest3008:OnSubFinish300815(arg1)
    print("OnSubFinish300815")
end

function Quest3008:OnSubStart300805(arg1)
    print("OnSubStart300805")
    self:NpcCreate(arg1, npcs.Npc4030Data.id, 0)
    actorMgr:CreateActorWithPos("Q3008PubTrigger", "Actor/Gadget/Q3008PubTrigger", 70900002, 0, sceneData:GetDummyPoint(1072, "Q300409_N1052").pos, sceneData:GetDummyPoint(1072, "Q300409_N1052").rot, true, false, 1072)
    actorMgr:CreateActorWithPos("Q3008EastGateTrigger", "Actor/Gadget/Q3008EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3008FrontGateTrigger", "Actor/Gadget/Q3008FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
    self:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4021Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4044Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4069Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4067Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4314Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4070Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4056Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4077Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4080Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4098Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4079Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4074Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4073Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4072Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4076Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4075Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4071Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4078Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300701B"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    local v4 = globalActor
    local v5 = v4
    local func = v4.SpawnAttachInFixedArea
    local str3 = "Q300701G"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3008:OnSubFinish300805(arg1)
    print("OnSubFinish300805")
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroyWithBlackscreen(1072, npcs.Npc4030Data.alias)
    self:NpcDestroy(npcs.Npc12654Data.alias, 3)
    self:NpcDestroy(npcs.Npc12655Data.alias, 3)
    self:NpcDestroy(npcs.Npc12656Data.alias, 3)
end

function Quest3008:OnSubStart300816(arg1)
    print("OnSubStart300816")
end

function Quest3008:OnSubFinish300816(arg1)
    print("OnSubFinish300816")
end

function Quest3008:OnSubStart300817(arg1)
    print("OnSubStart300817")
end

function Quest3008:OnSubFinish300817(arg1)
    print("OnSubFinish300817")
end

function Quest3008:OnSubStart300813(arg1)
    print("OnSubStart300813")
    self:NpcCreate(arg1, npcs.Npc12555Data.id, 0)
    actorMgr:CreateActorWithPos("Q3008EastGateTrigger", "Actor/Gadget/Q3008EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3008FrontGateTrigger", "Actor/Gadget/Q3008FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
    self:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4021Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4044Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4069Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4067Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4314Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4070Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4056Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4077Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4080Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4098Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4079Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4074Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4073Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4072Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4076Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4075Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4071Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4078Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300701B"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    local v4 = globalActor
    local v5 = v4
    local func = v4.SpawnAttachInFixedArea
    local str3 = "Q300701G"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3008:OnSubFinish300813(arg1)
    print("OnSubFinish300813")
end

function Quest3008:OnSubStart300806(arg1)
    print("OnSubStart300806")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc12555Data.id, 0)
        actorMgr:CreateActorWithPos("Q3008ChairInstantTrigger", "Actor/Gadget/Q3008ChairInstantTrigger", 70900002, 0, {x = -501.833, y = 222.725, z = 2792.602}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3008EastGateTrigger", "Actor/Gadget/Q3008EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3008FrontGateTrigger", "Actor/Gadget/Q3008FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
        arg1_2:GetQuestNpcActor(npcs.Npc12555Data.alias):SitOnChair(0)
        arg1_2:NotifyTo(npcs.Npc4020Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4021Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4054Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4044Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4069Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4068Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4067Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4066Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4314Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4070Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4049Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4315Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4065Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4060Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4062Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4056Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4077Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4080Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4098Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4079Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4074Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4073Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4072Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4076Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4075Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4071Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4078Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4102Data.alias, 1, true)
        local v = globalActor
        local v2 = v
        local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
        local str = "Q300701B"
        local str2 = "VoidAttachNew_PlayerBoy"
        local n = 10000005
        local v3
        local tbl = {}
        local n2 = 2412
        tbl[1] = 2103
        tbl[2] = n2
        spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
        local v4 = globalActor
        local v5 = v4
        local func = v4.SpawnAttachInFixedArea
        local str3 = "Q300701G"
        local str4 = "VoidAttachNew_PlayerGirl"
        local n3 = 10000007
        local v6
        local tbl2 = {}
        local n4 = 2412
        tbl2[1] = 2103
        tbl2[2] = n4
        func(v5, str3, str4, n3, v6, tbl2, nil, true)
    end, nil, nil, "", false, false)
end

function Quest3008:OnSubFinish300806(arg1)
    print("OnSubFinish300806")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12555Data.alias)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
    end)
end

function Quest3008:OnSubStart300807(arg1)
    print("OnSubStart300807")
    self:NpcCreate(arg1, npcs.Npc1054Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12659Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12660Data.id, 0)
    actorMgr:CreateActorWithPos("Q3008StageTrigger", "Actor/Gadget/Q3008StageTrigger", 70900002, 0, {x = -394.719, y = 234.383, z = 2799.981}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3008EastGateTrigger", "Actor/Gadget/Q3008EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3008FrontGateTrigger", "Actor/Gadget/Q3008FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
    self:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4021Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4044Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4069Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4067Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4314Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4070Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4056Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4077Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4080Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4098Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4079Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4074Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4073Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4072Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4076Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4075Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4071Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4078Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300701B"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    local v4 = globalActor
    local v5 = v4
    local func = v4.SpawnAttachInFixedArea
    local str3 = "Q300701G"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3008:OnSubFinish300807(arg1)
    print("OnSubFinish300807")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1054Data.alias)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12653Data.alias, 3)
    self:NpcDestroy(npcs.Npc12659Data.alias, 3)
    self:NpcDestroy(npcs.Npc12660Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:TransmitPlayerWithTextByQuestId(300807, 1, datas.TextmapFin, 2.5)
    end)
end

function Quest3008:OnSubStart300808(arg1)
    print("OnSubStart300808")
    self:CreateQuestNpcWithTriggerBlack("300808Trigger", 300808, 1005, 0, 12, 2)
    actorMgr:CreateActorWithPos("Q3008EastGateTrigger", "Actor/Gadget/Q3008EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3008FrontGateTrigger", "Actor/Gadget/Q3008FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
    self:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4021Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4044Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4069Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4067Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4314Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4070Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4056Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4077Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4080Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4098Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4079Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4074Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4073Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4072Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4076Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4075Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4071Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4078Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300701B"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    local v4 = globalActor
    local v5 = v4
    local func = v4.SpawnAttachInFixedArea
    local str3 = "Q300701G"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3008:OnSubFinish300808(arg1)
    print("OnSubFinish300808")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:ActorDestroy("Q3008FrontGateTrigger")
    self:ActorDestroy("Q3008EastGateTrigger")
end

function Quest3008:OnSubStart300814(arg1)
    print("OnSubStart300814")
    local this = self
    local questLimitRegionTask = self.QuestLimitRegionTask
    local n = 300814
    local v = 3
    local tbl = {}
    local n2 = 1073
    local n3 = 1074
    local n4 = 1075
    tbl[1] = 1072
    tbl[2] = n2
    tbl[3] = n3
    tbl[4] = n4
    local tbl2 = {x = -416.9535, y = 245.9313, z = 2757.707}
    local tbl3 = {}
    local n5 = 0
    local n6 = 0
    tbl3[1] = 0
    tbl3[2] = n5
    tbl3[3] = n6
    questLimitRegionTask(this, n, v, tbl, tbl2, tbl3, 1, 210, 230, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", nil)
end

function Quest3008:OnSubFinish300814(arg1)
    print("OnSubFinish300814")
    self:ClearQuestLimitRegionTask()
end

function Quest3008:OnSubFailed300814(arg1)
    print("OnSubFailed300814")
    self:ClearQuestLimitRegionTask()
    self:DestroyQuestNpcActor(npcs.Npc1054Data.alias, 3)
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroy(npcs.Npc1054Data.alias, 3)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12653Data.alias, 3)
    self:NpcDestroy(npcs.Npc4030Data.alias, 1072)
    self:NpcDestroy(npcs.Npc12659Data.alias, 3)
    self:NpcDestroy(npcs.Npc12660Data.alias, 3)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:NpcDestroy(npcs.Npc12654Data.alias, 3)
    self:NpcDestroy(npcs.Npc12655Data.alias, 3)
    self:NpcDestroy(npcs.Npc12656Data.alias, 3)
    self:ActorDestroy("Q3008EastGateTrigger")
    self:ActorDestroy("Q3008FrontGateTrigger")
    self:ActorDestroy("Q3008PubTrigger")
    self:ActorDestroy("Q3008ChairInstantTrigger")
    self:ActorDestroy("Q3008DormTrigger")
    self:ActorDestroy("Q3008StageTrigger")
    self:ActorDestroy("Q3008TriggerMerchantA")
    self:StopNarrator()
    self:ClearNarratorTask()
    self:ActorDestroy("300811Trigger")
    self:ActorDestroy("300808Trigger")
    self:ActorDestroy("300801Trigger")
    self:ActorDestroy("Q3008TriggerMerchantC")
end

return Quest3008
