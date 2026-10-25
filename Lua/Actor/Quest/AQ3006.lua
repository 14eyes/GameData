require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3006 = class("Quest3006", QuestActorProxy)
Quest3006.defaultAlias = "Quest3006"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["300601"] = self.OnSubStart300601,
        ["300602"] = self.OnSubStart300602,
        ["300603"] = self.OnSubStart300603,
        ["300604"] = self.OnSubStart300604,
        ["300614"] = self.OnSubStart300614,
        ["300615"] = self.OnSubStart300615,
        ["300605"] = self.OnSubStart300605,
        ["300606"] = self.OnSubStart300606,
        ["300613"] = self.OnSubStart300613,
        ["300607"] = self.OnSubStart300607,
        ["300608"] = self.OnSubStart300608,
        ["300609"] = self.OnSubStart300609,
        ["300610"] = self.OnSubStart300610,
        ["300611"] = self.OnSubStart300611,
        ["300612"] = self.OnSubStart300612
    }
end

function Quest3006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["300601"] = self.OnSubFinish300601,
        ["300602"] = self.OnSubFinish300602,
        ["300603"] = self.OnSubFinish300603,
        ["300604"] = self.OnSubFinish300604,
        ["300614"] = self.OnSubFinish300614,
        ["300615"] = self.OnSubFinish300615,
        ["300605"] = self.OnSubFinish300605,
        ["300606"] = self.OnSubFinish300606,
        ["300613"] = self.OnSubFinish300613,
        ["300607"] = self.OnSubFinish300607,
        ["300608"] = self.OnSubFinish300608,
        ["300609"] = self.OnSubFinish300609,
        ["300610"] = self.OnSubFinish300610,
        ["300611"] = self.OnSubFinish300611,
        ["300612"] = self.OnSubFinish300612
    }
end

function Quest3006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3006:Start()
    print("Start")
end

function Quest3006:OnDestroy()
    print("OnDestroy")
end

function Quest3006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3006:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest3006:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3006:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 30061201 then
        self:GetQuestNpcActor(npcs.Npc1053Data.alias):SpawnAttach("SceneObj_Area_Xm_Property_Ani_Prop_KnowledgeJar_02")
    elseif arg1 == 30061202 then
        self:GetQuestNpcActor(npcs.Npc1053Data.alias):UnSpawnAttach("SceneObj_Area_Xm_Property_Ani_Prop_KnowledgeJar_02")
    end
end

function Quest3006:OnSubStart300601(arg1)
    print("OnSubStart300601")
    self:NpcCreateWithTrigger(npcs.Npc1053Data.id, 300601, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1055Data.id, 2)
    self:NarratorOnlyTaskByData(datas.NarratorWithId300601)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300601(arg1)
    print("OnSubFinish300601")
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
end

function Quest3006:OnSubStart300602(arg1)
    print("OnSubStart300602")
    self:NpcCreateWithTriggerBlack(npcs.Npc1053Data.id, 300602, 1)
    self:ClearNarratorTask()
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300602(arg1)
    print("OnSubFinish300602")
end

function Quest3006:OnSubStart300603(arg1)
    print("OnSubStart300603")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300603(arg1)
    print("OnSubFinish300603")
end

function Quest3006:OnSubStart300604(arg1)
    print("OnSubStart300604")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300604(arg1)
    print("OnSubFinish300604")
end

function Quest3006:OnSubStart300614(arg1)
    print("OnSubStart300614")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300614(arg1)
    print("OnSubFinish300614")
end

function Quest3006:OnSubStart300615(arg1)
    print("OnSubStart300615")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:RequestInteraction(npcs.Npc1053Data.alias)
    end)

    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300615(arg1)
    print("OnSubFinish300615")
end

function Quest3006:OnSubStart300605(arg1)
    print("OnSubStart300605")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300605(arg1)
    print("OnSubFinish300605")
end

function Quest3006:OnSubStart300606(arg1)
    print("OnSubStart300606")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300606(arg1)
    print("OnSubFinish300606")
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest3006:OnSubStart300613(arg1)
    print("OnSubStart300613")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300613(arg1)
    print("OnSubFinish300613")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300602)
end

function Quest3006:OnSubStart300607(arg1)
    print("OnSubStart300607")
    self:CreateQuestNpc(arg1, npcs.Npc1055Data.id, 2)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300607(arg1)
    print("OnSubFinish300607")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300603)
end

function Quest3006:OnSubStart300608(arg1)
    print("OnSubStart300608")
    self:NpcCreateWithTrigger(npcs.Npc1053Data.id, 300608, 1)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300608(arg1)
    print("OnSubFinish300608")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
end

function Quest3006:OnSubStart300609(arg1)
    print("OnSubStart300609")
    self:DailyNpcSafeHideSelf(npcs.Npc4120Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4121Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4110Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("CreateQuestNPCWithTriggerQ300609", 300609, npcs.Npc12581Data.id, 2, 12, 1)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300609(arg1)
    print("OnSubFinish300609")
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12581Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12582Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12568Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12569Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12570Data.alias, 3)
end

function Quest3006:OnSubStart300610(arg1)
    print("OnSubStart300610")
    self:DailyNpcSafeHideSelf(npcs.Npc4120Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4121Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4110Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3006:OnSubFinish300610(arg1)
    print("OnSubFinish300610")
end

function Quest3006:OnSubStart300611(arg1)
    print("OnSubStart300611")
    self:DailyNpcSafeHideSelf(npcs.Npc4120Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4121Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4110Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(30061401, function(arg1)
            actorUtils.FinishQuestID(false, 300611)
        end, nil, nil, false)
    end)
end

function Quest3006:OnSubFinish300611(arg1)
    print("OnSubFinish300611")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest3006:OnSubStart300612(arg1)
    print("OnSubStart300612")
    self:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4120Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4121Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4110Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300601"
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
    local str3 = "Q300602"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
    actorMgr:CreateActorWithPos("Q300612Trigger", "Actor/Gadget/Q300612Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300609_N1053").pos, sceneData:GetDummyPoint(3, "Q300609_N1053").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1053Data.alias):UnSpawnAttach("SceneObj_Area_Xm_Property_Ani_Prop_KnowledgeJar_02")
end

function Quest3006:OnSubFinish300612(arg1)
    print("OnSubFinish300612")
    self:LightNotifyTo(npcs.Npc4120Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4121Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4110Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

return Quest3006
