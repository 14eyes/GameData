require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3028 = class("Quest3028", QuestActorProxy)
Quest3028.defaultAlias = "Quest3028"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3028:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["302801"] = self.OnSubStart302801,
        ["302822"] = self.OnSubStart302822,
        ["302802"] = self.OnSubStart302802,
        ["302805"] = self.OnSubStart302805,
        ["302803"] = self.OnSubStart302803,
        ["302804"] = self.OnSubStart302804,
        ["302806"] = self.OnSubStart302806,
        ["302807"] = self.OnSubStart302807,
        ["302808"] = self.OnSubStart302808,
        ["302825"] = self.OnSubStart302825,
        ["302809"] = self.OnSubStart302809,
        ["302810"] = self.OnSubStart302810,
        ["302811"] = self.OnSubStart302811,
        ["302814"] = self.OnSubStart302814,
        ["302813"] = self.OnSubStart302813,
        ["302815"] = self.OnSubStart302815,
        ["302816"] = self.OnSubStart302816,
        ["302824"] = self.OnSubStart302824,
        ["302817"] = self.OnSubStart302817,
        ["302818"] = self.OnSubStart302818,
        ["302819"] = self.OnSubStart302819,
        ["302820"] = self.OnSubStart302820,
        ["302821"] = self.OnSubStart302821,
        ["302812"] = self.OnSubStart302812,
        ["302823"] = self.OnSubStart302823
    }
end

function Quest3028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["302801"] = self.OnSubFinish302801,
        ["302822"] = self.OnSubFinish302822,
        ["302802"] = self.OnSubFinish302802,
        ["302805"] = self.OnSubFinish302805,
        ["302803"] = self.OnSubFinish302803,
        ["302804"] = self.OnSubFinish302804,
        ["302806"] = self.OnSubFinish302806,
        ["302807"] = self.OnSubFinish302807,
        ["302808"] = self.OnSubFinish302808,
        ["302825"] = self.OnSubFinish302825,
        ["302809"] = self.OnSubFinish302809,
        ["302810"] = self.OnSubFinish302810,
        ["302811"] = self.OnSubFinish302811,
        ["302814"] = self.OnSubFinish302814,
        ["302813"] = self.OnSubFinish302813,
        ["302815"] = self.OnSubFinish302815,
        ["302816"] = self.OnSubFinish302816,
        ["302824"] = self.OnSubFinish302824,
        ["302817"] = self.OnSubFinish302817,
        ["302818"] = self.OnSubFinish302818,
        ["302819"] = self.OnSubFinish302819,
        ["302820"] = self.OnSubFinish302820,
        ["302821"] = self.OnSubFinish302821,
        ["302812"] = self.OnSubFinish302812,
        ["302823"] = self.OnSubFinish302823
    }
end

function Quest3028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["302818"] = self.OnSubFailed302818, ["302819"] = self.OnSubFailed302819}
end

function Quest3028:Start()
    print("Start")
end

function Quest3028:OnDestroy()
    print("OnDestroy")
end

function Quest3028:OnMainFinished(arg1)
    print("OnMainFinished")
    this:ActorDestroy(datas.Q302812_TriggerIn.alias)
end

function Quest3028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3028:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 302824 then
        actorUtils.FinishQuestID(false, 302824)
    end
end

function Quest3028:OnSubStart302801(arg1)
    print("OnSubStart302801")
    this:CreateQuestNpc(arg1, npcs.Npc12808Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12653Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc12709Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12809Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc13092Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc13093Data.id, 6)
    this:GetQuestNpcActor(npcs.Npc13093Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13092Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
    if this:GetQuestVar(302801, 0) == 0 then
        this:NarratorOnlyTaskByData(datas.NarratorWithId_302801, function(arg1)
            this:SetQuestVarByMainId(0, 1)
        end)
    end
end

function Quest3028:OnSubFinish302801(arg1)
    print("OnSubFinish302801")
end

function Quest3028:OnSubStart302822(arg1)
    print("OnSubStart302822")
    this:CreateQuestNpcWithTriggerBlack("Q302822Trigger_In", 302822, npcs.Npc1056Data.id, 1, 15, 1)
    self:GetQuestNpcActor(npcs.Npc13093Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    self:GetQuestNpcActor(npcs.Npc13092Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3028:OnSubFinish302822(arg1)
    print("OnSubFinish302822")
    local v = globalActor
    local v2 = v
    local unSpawnAttachInFixedArea = v.UnSpawnAttachInFixedArea
    local str = "Q302201"
    local str2 = "VoidAttach_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    unSpawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    local v4 = globalActor
    local v5 = v4
    local func = v4.UnSpawnAttachInFixedArea
    local str3 = "Q302201"
    local str4 = "VoidAttach_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
end

function Quest3028:OnSubStart302802(arg1)
    print("OnSubStart302802")
    self:GetQuestNpcActor(npcs.Npc13093Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    self:GetQuestNpcActor(npcs.Npc13092Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
end

function Quest3028:OnSubFinish302802(arg1)
    print("OnSubFinish302802")
    this:SafeDestroyQuestNpc(npcs.Npc12808Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12653Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12709Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12809Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13092Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13093Data.alias, 3)
end

function Quest3028:OnSubStart302805(arg1)
    print("OnSubStart302805")
    this:CreateQuestNpcWithTriggerBlack("Q302805Trigger_In", 302805, npcs.Npc1056Data.id, 1, 15, 1)
    this:ActorDestroy(datas.Q302804Trigger_In.alias)
end

function Quest3028:OnSubFinish302805(arg1)
    print("OnSubFinish302805")
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 20163)
end

function Quest3028:OnSubStart302803(arg1)
    print("OnSubStart302803")
end

function Quest3028:OnSubFinish302803(arg1)
    print("OnSubFinish302803")
end

function Quest3028:OnSubStart302804(arg1)
    print("OnSubStart302804")
    this:CreateQuestNpcWithTriggerBlack("Q302804Trigger_In", 302804, npcs.Npc12837Data.id, 1, 15, 1)
end

function Quest3028:OnSubFinish302804(arg1)
    print("OnSubFinish302804")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 20163)
end

function Quest3028:OnSubStart302806(arg1)
    print("OnSubStart302806")
end

function Quest3028:OnSubFinish302806(arg1)
    print("OnSubFinish302806")
end

function Quest3028:OnSubStart302807(arg1)
    print("OnSubStart302807")
    this:CreateQuestNpcWithTriggerBlack("Q302807Trigger_In", 302807, npcs.Npc1056Data.id, 1, 100, 1)
end

function Quest3028:OnSubFinish302807(arg1)
    print("OnSubFinish302807")
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 20168)
end

function Quest3028:OnSubStart302808(arg1)
    print("OnSubStart302808")
end

function Quest3028:OnSubFinish302808(arg1)
    print("OnSubFinish302808")
end

function Quest3028:OnSubStart302825(arg1)
    print("OnSubStart302825")
end

function Quest3028:OnSubFinish302825(arg1)
    print("OnSubFinish302825")
end

function Quest3028:OnSubStart302809(arg1)
    print("OnSubStart302809")
    if sceneData.currSceneID == 20168 then
        self:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
            arg1_2:PlayCutsceneIndex(30280901, function(arg1_2)
                this:TransmitPlayerById(arg1, 1)
                actorUtils.FinishQuestID(false, 302809)
            end, nil, nil, false)
        end, nil, nil, 0, false, true)
    end
end

function Quest3028:OnSubFinish302809(arg1)
    print("OnSubFinish302809")
end

function Quest3028:OnSubStart302810(arg1)
    print("OnSubStart302810")
end

function Quest3028:OnSubFinish302810(arg1)
    print("OnSubFinish302810")
end

function Quest3028:OnSubStart302811(arg1)
    print("OnSubStart302811")
    if sceneData.currSceneID == 20168 then
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:PlayCutsceneIndex(30281101, function(arg1)
                actorUtils.FinishQuestID(false, 302811)
            end, nil, nil, false)
        end, nil, nil, "", false, true)
    end
end

function Quest3028:OnSubFinish302811(arg1)
    print("OnSubFinish302811")
end

function Quest3028:OnSubStart302814(arg1)
    print("OnSubStart302814")
    if sceneData.currSceneID == 20168 then
        self:ShowBlackScreenWithDialogText(0.5, 1.5, 0, function(arg1)
            actorMgr:CreateActorWithPos("Q302814_TriggerIn", "Actor/Gadget/Q302814_TriggerIn", 70900002, 0, {x = 0.0, y = -25.189, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20168)
        end, nil, nil, 0, false, true)
    end
end

function Quest3028:OnSubFinish302814(arg1)
    print("OnSubFinish302814")
end

function Quest3028:OnSubStart302813(arg1)
    print("OnSubStart302813")
    this:CreateQuestNpcWithTriggerBlack("Q302813Trigger_In", 302813, npcs.Npc1056Data.id, 1, 15, 1)
    this:ActorDestroy(datas.Q302814_TriggerIn.alias)
    this:ActorDestroy(datas.Q302816Trigger_In.alias)
end

function Quest3028:OnSubFinish302813(arg1)
    print("OnSubFinish302813")
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 20158)
end

function Quest3028:OnSubStart302815(arg1)
    print("OnSubStart302815")
end

function Quest3028:OnSubFinish302815(arg1)
    print("OnSubFinish302815")
end

function Quest3028:OnSubStart302816(arg1)
    print("OnSubStart302816")
    this:CreateQuestNpcWithTriggerBlack("Q302816Trigger_In", 302816, npcs.Npc12837Data.id, 1, 15, 1)
end

function Quest3028:OnSubFinish302816(arg1)
    print("OnSubFinish302816")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 20158)
end

function Quest3028:OnSubStart302824(arg1)
    print("OnSubStart302824")
end

function Quest3028:OnSubFinish302824(arg1)
    print("OnSubFinish302824")
end

function Quest3028:OnSubStart302817(arg1)
    print("OnSubStart302817")
    if sceneData.currSceneID == 20158 then
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            actorMgr:CreateActorWithPos("Q302817_TriggerIn", "Actor/Gadget/Q302817_TriggerIn", 70900002, 0, {x = 255.813, y = 214.369, z = 627.082}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20158)
        end, nil, nil, "", false, true)
    end

    self:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuest")
end

function Quest3028:OnSubFinish302817(arg1)
    print("OnSubFinish302817")
end

function Quest3028:OnSubStart302818(arg1)
    print("OnSubStart302818")
    this:CreateQuestNpcWithTriggerBlack("Q302818Trigger_In", 302818, npcs.Npc1056Data.id, 1, 40, 1)
    this:ActorDestroy(datas.Q302817_TriggerIn.alias)
    this:LevelLoadFinishSafeCall(function(arg1)
        if this:GetQuestVar(302818, 1) == 0 then
            this:NarratorOnlyTaskByData(datas.NarratorWithId_302818, function(arg1)
                this:SetQuestVarByMainId(1, 1)
            end)
        end
    end)

    self:DisableMainPageWithConfig(true, "DisableTestSumeruMainQuest")
end

function Quest3028:OnSubFinish302818(arg1)
    print("OnSubFinish302818")
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 20164)
end

function Quest3028:OnSubFailed302818(arg1)
    print("OnSubFailed302818")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:SetQuestVarByMainId(1, 0)
        this:TryPauseCurAutoNarrator()
        this:ClearNarratorTask()
        arg1:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuest")
    end)
end

function Quest3028:OnSubStart302819(arg1)
    print("OnSubStart302819")
    self:DisableMainPageWithConfig(true, "DisableTestSumeruMainQuest")
    if sceneData.currSceneID == 20164 then
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:PlayCutsceneIndex(30281901, function(arg1)
                actorUtils.FinishQuestID(false, 302819)
            end, nil, nil, false)
        end, nil, nil, "", false, true)
    end
end

function Quest3028:OnSubFinish302819(arg1)
    print("OnSubFinish302819")
    self:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuest")
end

function Quest3028:OnSubFailed302819(arg1)
    print("OnSubFailed302819")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    self:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuest")
end

function Quest3028:OnSubStart302820(arg1)
    print("OnSubStart302820")
    if sceneData.currSceneID == 20164 then
        self:ShowBlackScreenWithDialogText(0.5, 1.5, 0, function(arg1)
            actorMgr:CreateActorWithPos("Q302820_TriggerIn", "Actor/Gadget/Q302820_TriggerIn", 70900002, 0, {x = 539.011, y = 129.955, z = 678.919}, {x = 1.251, y = 10.495, z = 353.659}, true, false, 20164)
        end, nil, nil, 0, false, true)
    end
end

function Quest3028:OnSubFinish302820(arg1)
    print("OnSubFinish302820")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest3028:OnSubStart302821(arg1)
    print("OnSubStart302821")
    if sceneData.currSceneID == 1075 then
        self:ShowBlackScreenWithDialogText(0.5, 1.5, 0, function(arg1)
            arg1:CreateQuestNpcWithTriggerBlack("Q302821Trigger_In", 302821, npcs.Npc1056Data.id, 1, 15, 1)
        end, nil, nil, 0, false, true)
    else
        self:CreateQuestNpcWithTriggerBlack("Q302821Trigger_In", 302821, npcs.Npc1056Data.id, 1, 15, 1)
    end

    this:ActorDestroy(datas.Q302820_TriggerIn.alias)
end

function Quest3028:OnSubFinish302821(arg1)
    print("OnSubFinish302821")
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
end

function Quest3028:OnSubStart302812(arg1)
    print("OnSubStart302812")
    this:CreateQuestNpc(arg1, npcs.Npc12837Data.id, 1)
    if sceneData.currSceneID == 1075 then
        self:ActionSafeCall(function(arg1)
            actorMgr:CreateActorWithPos("Q302812_TriggerIn", "Actor/Gadget/Q302812_TriggerIn", 70900002, 0, {x = 0.0, y = 114.839, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1075)
        end)
    end
end

function Quest3028:OnSubFinish302812(arg1)
    print("OnSubFinish302812")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 3)
end

function Quest3028:OnSubStart302823(arg1)
    print("OnSubStart302823")
end

function Quest3028:OnSubFinish302823(arg1)
    print("OnSubFinish302823")
end

return Quest3028
