require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3005 = class("Quest3005", QuestActorProxy)
Quest3005.defaultAlias = "Quest3005"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["300501"] = self.OnSubStart300501,
        ["300502"] = self.OnSubStart300502,
        ["300503"] = self.OnSubStart300503,
        ["300504"] = self.OnSubStart300504,
        ["300505"] = self.OnSubStart300505,
        ["300506"] = self.OnSubStart300506,
        ["300507"] = self.OnSubStart300507,
        ["300508"] = self.OnSubStart300508,
        ["300509"] = self.OnSubStart300509,
        ["300510"] = self.OnSubStart300510,
        ["300511"] = self.OnSubStart300511,
        ["300512"] = self.OnSubStart300512,
        ["300513"] = self.OnSubStart300513,
        ["300514"] = self.OnSubStart300514,
        ["300515"] = self.OnSubStart300515,
        ["300516"] = self.OnSubStart300516,
        ["300517"] = self.OnSubStart300517
    }
end

function Quest3005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["300501"] = self.OnSubFinish300501,
        ["300502"] = self.OnSubFinish300502,
        ["300503"] = self.OnSubFinish300503,
        ["300504"] = self.OnSubFinish300504,
        ["300505"] = self.OnSubFinish300505,
        ["300506"] = self.OnSubFinish300506,
        ["300507"] = self.OnSubFinish300507,
        ["300508"] = self.OnSubFinish300508,
        ["300509"] = self.OnSubFinish300509,
        ["300510"] = self.OnSubFinish300510,
        ["300511"] = self.OnSubFinish300511,
        ["300512"] = self.OnSubFinish300512,
        ["300513"] = self.OnSubFinish300513,
        ["300514"] = self.OnSubFinish300514,
        ["300515"] = self.OnSubFinish300515,
        ["300516"] = self.OnSubFinish300516,
        ["300517"] = self.OnSubFinish300517
    }
end

function Quest3005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3005:Start()
    print("Start")
end

function Quest3005:OnDestroy()
    print("OnDestroy")
end

function Quest3005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3005:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3005:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3005:OnMovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest3005:BefllowCheckNarrator()
    print("BefllowCheckNarrator")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:ClearSteerToAutonomyTask()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q300511_N12584").rot))
    actorMgr:CreateActorWithPos("Q300510Trigger", "Actor/Gadget/Q300510Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300510_guide").pos, sceneData:GetDummyPoint(3, "Q300510_guide").rot, true, false, 3)
end

function Quest3005:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        self:ShowQuestLikingBar(3005, npcs.Npc12584Data.id, 30, false, "TRUST_EXP_NAME")
    elseif arg1 == 201 then
        self:SetQuestVarByMainId(0, 1)
    elseif arg1 == 401 then
        self:UpdateQuestLikingBar(0, false, "TRUST_LEVEL_DOWN")
    elseif arg1 == 501 then
        self:HideQuestLikingBar()
    elseif arg1 == 301 then
        self:UpdateQuestLikingBar(50, false, "TRUST_LEVEL_UP")
    elseif arg1 == 302 then
        self:UpdateQuestLikingBar(70, false, "TRUST_LEVEL_UP")
    elseif arg1 == 303 then
        self:UpdateQuestLikingBar(100, false, "TRUST_LEVEL_UP")
    elseif arg1 == 300516 then
        actorUtils.FinishQuestID(false, 300516)
    elseif arg1 == 300517 then
        actorUtils.FinishQuestID(false, 300517)
    elseif arg1 == 30050701 then
        self:GetQuestNpcActor(npcs.Npc1053Data.alias):SpawnAttach("SceneObj_Area_Xm_Property_Ani_Prop_KnowledgeJar_01_02")
    elseif arg1 == 30050702 then
        self:GetQuestNpcActor(npcs.Npc1053Data.alias):UnSpawnAttach("SceneObj_Area_Xm_Property_Ani_Prop_KnowledgeJar_01_02")
    elseif arg1 == 30050801 then
        self:EnableElementView(true)
    elseif arg1 == 30050802 then
        self:EnableElementView(false)
    end
end

function Quest3005:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest3005:OnSubStart300501(arg1)
    print("OnSubStart300501")
    self:CreateQuestNpc(arg1, npcs.Npc4154Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc4156Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc4167Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12571Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc4155Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 11)
    self:CreateQuestNpc(arg1, npcs.Npc4314Data.id, 12)
    self:CreateQuestNpc(arg1, npcs.Npc12733Data.id, 13)
    self:LightNotifyTo(npcs.Npc4066Data.alias, 0, true)
    self:CreateQuestNpc(arg1, npcs.Npc4168Data.id, 14)
    actorMgr:CreateActorWithPos("Q300501Trigger", "Actor/Gadget/Q300501Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300501_guide").pos, sceneData:GetDummyPoint(3, "Q300501_guide").rot, true, false, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300501(arg1)
    print("OnSubFinish300501")
    self:SafeDestroyQuestNpc(npcs.Npc4154Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4156Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4167Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12571Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4314Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12733Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4168Data.alias, 3)
end

function Quest3005:OnSubStart300502(arg1)
    print("OnSubStart300502")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300502(arg1)
    print("OnSubFinish300502")
    self:SafeDestroyQuestNpc(npcs.Npc4155Data.alias, 3)
end

function Quest3005:OnSubStart300503(arg1)
    print("OnSubStart300503")
    self:DailyNpcSafeHideSelf(npcs.Npc4155Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
    actorMgr:CreateActorWithPos("Q300503Trigger", "Actor/Gadget/Q300503Trigger", 70900002, 0, {x = -1901.941, y = 202.788, z = 2678.243}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3005:OnSubFinish300503(arg1)
    print("OnSubFinish300503")
end

function Quest3005:OnSubStart300504(arg1)
    print("OnSubStart300504")
    self:DailyNpcSafeHideSelf(npcs.Npc4155Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300504Trigger", "Actor/Gadget/Q300504Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300504_guide").pos, sceneData:GetDummyPoint(3, "Q300504_guide").rot, true, false, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300504(arg1)
    print("OnSubFinish300504")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300501)
    self:SafeDestroyQuestNpc(npcs.Npc12572Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12573Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12580Data.alias, 3)
end

function Quest3005:OnSubStart300505(arg1)
    print("OnSubStart300505")
    self:LightNotifyTo(npcs.Npc4155Data.alias, 0, true)
    self:NpcCreateWithTriggerBlack(npcs.Npc4124Data.id, 300505, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4124Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300505(arg1)
    print("OnSubFinish300505")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4124Data.alias, 3)
end

function Quest3005:OnSubStart300506(arg1)
    print("OnSubStart300506")
    self:CreateQuestNpc(arg1, npcs.Npc12581Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12582Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12581Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc12582Data.alias):SitOnChair(0)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300506(arg1)
    print("OnSubFinish300506")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300502)
    self:SafeDestroyQuestNpc(npcs.Npc12581Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12582Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest3005:OnSubStart300507(arg1)
    print("OnSubStart300507")
    self:NpcCreateWithTriggerBlack(npcs.Npc1053Data.id, 300507, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4129Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4115Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1053Data.alias):UnSpawnAttach("SceneObj_Area_Xm_Property_Ani_Prop_KnowledgeJar_01_02")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300507(arg1)
    print("OnSubFinish300507")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest3005:OnSubStart300508(arg1)
    print("OnSubStart300508")
    self:NpcCreateWithTriggerBlack(npcs.Npc1053Data.id, 300508, 1)
    self:LightNotifyTo(npcs.Npc4129Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4115Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300508(arg1)
    print("OnSubFinish300508")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300503)
    self:SafeDestroyQuestNpc(npcs.Npc4124Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest3005:OnSubStart300509(arg1)
    print("OnSubStart300509")
    self:CreateQuestNpc(arg1, npcs.Npc12564Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc4115Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4147Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300509(arg1)
    print("OnSubFinish300509")
end

function Quest3005:OnSubStart300510(arg1)
    print("OnSubStart300510")
    self:CreateQuestNpc(arg1, npcs.Npc12584Data.id, 2)
    self:LightNotifyTo(npcs.Npc4115Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4147Data.alias, 1, true)
    self:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    self:GetQuestNpcActor(npcs.Npc12584Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12584Data.alias, 3005)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData300510, 30, 2, -1, self.BefllowCheckNarrator, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    self:NpcNarratorOnlyTaskByData(questNpcActor, datas.NarratorWithId300504)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300510(arg1)
    print("OnSubFinish300510")
end

function Quest3005:OnSubStart300511(arg1)
    print("OnSubStart300511")
    self:CreateQuestNpc(arg1, npcs.Npc12584Data.id, 2)
    self:LightNotifyTo(npcs.Npc4147Data.alias, 0, true)
    actorMgr:CreateActorWithPos("Q300511Trigger", "Actor/Gadget/Q300511Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300511_N12584").pos, sceneData:GetDummyPoint(3, "Q300511_N12584").rot, true, false, 3)
    self:HideQuestLikingBar()
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300511(arg1)
    print("OnSubFinish300511")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300506)
    self:SafeDestroyQuestNpc(npcs.Npc12584Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12564Data.alias, 3)
end

function Quest3005:OnSubStart300512(arg1)
    print("OnSubStart300512")
    actorMgr:CreateActorWithPos("Q300512Trigger", "Actor/Gadget/Q300512Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300512_guide").pos, sceneData:GetDummyPoint(3, "Q300512_guide").rot, true, false, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300512(arg1)
    print("OnSubFinish300512")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc12584Data.alias, 3)
end

function Quest3005:OnSubStart300513(arg1)
    print("OnSubStart300513")
    actorMgr:CreateActorWithPos("Q300513Trigger", "Actor/Gadget/Q300513Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300513_guide").pos, sceneData:GetDummyPoint(3, "Q300513_guide").rot, true, false, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300513(arg1)
    print("OnSubFinish300513")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc12584Data.alias, 3)
end

function Quest3005:OnSubStart300514(arg1)
    print("OnSubStart300514")
    actorMgr:CreateActorWithPos("Q300514Trigger", "Actor/Gadget/Q300514Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300514_guide").pos, sceneData:GetDummyPoint(3, "Q300514_guide").rot, true, false, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300514(arg1)
    print("OnSubFinish300514")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300507)
    globalActor:StopLocalAvatar()
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q300514_N1055").pos, 0, 5, true, false)
    self:EnablePlayerInput(false)
    self:CallDelay(5, function(arg1)
        arg1:EnablePlayerInput(true)
    end)
end

function Quest3005:OnSubStart300515(arg1)
    print("OnSubStart300515")
    self:CreateQuestNpcWithTriggerBlack("CreateNPCWithTriggerQ300515", 300515, npcs.Npc1055Data.id, 3, 15, 1)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300501"
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
    local str3 = "Q300502"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3005:OnSubFinish300515(arg1)
    print("OnSubFinish300515")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc12584Data.alias, 3)
end

function Quest3005:OnSubStart300516(arg1)
    print("OnSubStart300516")
end

function Quest3005:OnSubFinish300516(arg1)
    print("OnSubFinish300516")
end

function Quest3005:OnSubStart300517(arg1)
    print("OnSubStart300517")
end

function Quest3005:OnSubFinish300517(arg1)
    print("OnSubFinish300517")
end

return Quest3005
