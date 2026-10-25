require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3004 = class("Quest3004", QuestActorProxy)
Quest3004.defaultAlias = "Quest3004"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["300401"] = self.OnSubStart300401,
        ["300422"] = self.OnSubStart300422,
        ["300402"] = self.OnSubStart300402,
        ["300403"] = self.OnSubStart300403,
        ["300404"] = self.OnSubStart300404,
        ["300405"] = self.OnSubStart300405,
        ["300406"] = self.OnSubStart300406,
        ["300407"] = self.OnSubStart300407,
        ["300408"] = self.OnSubStart300408,
        ["300409"] = self.OnSubStart300409,
        ["300421"] = self.OnSubStart300421,
        ["300410"] = self.OnSubStart300410,
        ["300411"] = self.OnSubStart300411,
        ["300412"] = self.OnSubStart300412,
        ["300413"] = self.OnSubStart300413,
        ["300414"] = self.OnSubStart300414,
        ["300415"] = self.OnSubStart300415,
        ["300416"] = self.OnSubStart300416,
        ["300417"] = self.OnSubStart300417,
        ["300418"] = self.OnSubStart300418,
        ["300419"] = self.OnSubStart300419,
        ["300420"] = self.OnSubStart300420
    }
end

function Quest3004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["300401"] = self.OnSubFinish300401,
        ["300422"] = self.OnSubFinish300422,
        ["300402"] = self.OnSubFinish300402,
        ["300403"] = self.OnSubFinish300403,
        ["300404"] = self.OnSubFinish300404,
        ["300405"] = self.OnSubFinish300405,
        ["300406"] = self.OnSubFinish300406,
        ["300407"] = self.OnSubFinish300407,
        ["300408"] = self.OnSubFinish300408,
        ["300409"] = self.OnSubFinish300409,
        ["300421"] = self.OnSubFinish300421,
        ["300410"] = self.OnSubFinish300410,
        ["300411"] = self.OnSubFinish300411,
        ["300412"] = self.OnSubFinish300412,
        ["300413"] = self.OnSubFinish300413,
        ["300414"] = self.OnSubFinish300414,
        ["300415"] = self.OnSubFinish300415,
        ["300416"] = self.OnSubFinish300416,
        ["300417"] = self.OnSubFinish300417,
        ["300418"] = self.OnSubFinish300418,
        ["300419"] = self.OnSubFinish300419,
        ["300420"] = self.OnSubFinish300420
    }
end

function Quest3004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3004:Start()
    print("Start")
end

function Quest3004:OnDestroy()
    print("OnDestroy")
end

function Quest3004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3004:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3004:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3004:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest3004:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest3004:SetPostEffectLoop()
    print("SetPostEffectLoop")
    if datas.Loop == 1 then
        actorUtils.SetPostEffect("PostEffect_Scene_Akasha_Sight_01", true)
        self:CallDelay(1, function(arg1)
            actorUtils.SetPostEffect("PostEffect_Scene_Akasha_Sight_01", false)
            arg1:CallDelay(1.3, function(arg1)
                arg1:SetPostEffectLoop()
            end)
        end)
    end
end

function Quest3004:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 30040101 then
        print("\230\140\130\232\153\154\231\169\186\231\172\172\228\184\128\232\167\134\232\167\146\230\137\171\230\143\143loop\231\137\185\230\149\136")
        datas.Loop = 1
        self:SetPostEffectLoop()
    elseif arg1 == 30040102 then
        print("\230\160\135\232\175\134\230\137\171\230\143\143loop\231\137\185\230\149\136\231\187\147\230\157\159")
        datas.Loop = 0
        actorUtils.SetPostEffect("PostEffect_Scene_Akasha_Sight_01", false)
    elseif arg1 == 30040103 then
        print("\231\187\153\228\184\187\232\167\146\229\136\183\228\184\128\228\184\139\232\153\154\231\169\186\231\156\188\231\157\155\233\129\174\231\189\169")
        globalActor:SpawnAttach("Eff_Stages_Common_Akasha_EyeEff_01", 10000005)
        globalActor:SpawnAttach("Eff_Stages_Common_Akasha_EyeEff_02", 10000007)
        globalActor:SpawnAttachHeroEntity("Eff_Stages_Common_Akasha_EyeEff_01", 10000005)
        globalActor:SpawnAttachHeroEntity("Eff_Stages_Common_Akasha_EyeEff_02", 10000007)
        self:CallDelay(3, function(arg1)
            globalActor:UnSpawnAttach("Eff_Stages_Common_Akasha_EyeEff_01", 10000005)
            globalActor:UnSpawnAttach("Eff_Stages_Common_Akasha_EyeEff_02", 10000007)
            globalActor:UnSpawnAttachHeroEntity("Eff_Stages_Common_Akasha_EyeEff_01", 10000005)
            globalActor:UnSpawnAttachHeroEntity("Eff_Stages_Common_Akasha_EyeEff_02", 10000007)
        end)
    elseif arg1 == 30040104 then
        print("\229\188\128\229\167\139\230\140\130\228\184\138\232\153\154\231\169\186\229\164\150\232\174\190")
        globalActor:SpawnAttach("NPC_Item_VoidDevice01_PlayerBoy", 10000005)
        globalActor:SpawnAttach("NPC_Item_VoidDevice01_PlayerGirl", 10000007)
        globalActor:SpawnAttachHeroEntity("NPC_Item_VoidDevice01_PlayerBoy", 10000005)
        globalActor:SpawnAttachHeroEntity("NPC_Item_VoidDevice01_PlayerGirl", 10000007)
    elseif arg1 == 30040105 then
        print("\229\141\184\232\189\189\232\153\154\231\169\186\229\164\150\232\174\190")
        globalActor:UnSpawnAttach("NPC_Item_VoidDevice01_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("NPC_Item_VoidDevice01_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("NPC_Item_VoidDevice01_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("NPC_Item_VoidDevice01_PlayerGirl", 10000007)
    elseif arg1 == 30040901 then
        actorUtils.FinishQuestID(false, 300421)
    elseif arg1 == 30040106 then
        print("\231\187\153\230\180\190\232\146\153\229\136\183\228\184\128\228\184\139\232\153\154\231\169\186\231\156\188\231\157\155\233\129\174\231\189\169")
        self:GetQuestNpcActor(npcs.PaimonData.alias):SpawnAttach("Eff_Stages_Common_Akasha_EyeEff_01_paimonData")
        self:CallDelay(3, function(arg1)
            arg1:GetQuestNpcActor(npcs.PaimonData.alias):UnSpawnAttach("Eff_Stages_Common_Akasha_EyeEff_01_paimonData")
        end)
    elseif arg1 == 30040107 then
        print("\231\187\153\228\184\187\232\167\146\230\140\130\232\153\154\231\169\186")
        local v = globalActor
        local v2 = v
        local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
        local str = "Q300401"
        local str2 = "VoidAttach_PlayerBoy"
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
        local str3 = "Q300402"
        local str4 = "VoidAttach_PlayerGirl"
        local n3 = 10000007
        local v6
        local tbl2 = {}
        local n4 = 2412
        tbl2[1] = 2103
        tbl2[2] = n4
        func(v5, str3, str4, n3, v6, tbl2, nil, true)
    elseif arg1 == 30040201 then
        print("\231\187\153\233\178\129\229\147\136\231\187\180\229\136\183\228\184\128\228\184\139\232\153\154\231\169\186\231\156\188\231\157\155\233\129\174\231\189\169")
        self:GetQuestNpcActor(npcs.Npc12562Data.alias):SpawnAttach("Eff_Stages_Common_Akasha_EyeEff_NPC_Male")
    elseif arg1 == 30042201 then
        actorUtils.FinishQuestID(false, 300422)
    end
end

function Quest3004:OnSubStart300401(arg1)
    print("OnSubStart300401")
    self:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 3)
    self:NpcCreateWithTriggerBlack(npcs.Npc4313Data.id, 300401, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc4011Data.alias, 1, true)
    print("\229\155\158\230\187\154\230\151\182\229\141\184\232\189\189\228\184\128\229\164\167\229\160\134\229\175\185\232\175\157\228\184\173\229\136\155\229\187\186\231\154\132\229\134\133\229\174\185")
    datas.Loop = 0
    actorUtils.SetPostEffect("PostEffect_Scene_Akasha_Sight_01", false)
    globalActor:UnSpawnAttach("Eff_Stages_Common_Akasha_EyeEff_01", 10000005)
    globalActor:UnSpawnAttach("Eff_Stages_Common_Akasha_EyeEff_02", 10000007)
    globalActor:UnSpawnAttachHeroEntity("Eff_Stages_Common_Akasha_EyeEff_01", 10000005)
    globalActor:UnSpawnAttachHeroEntity("Eff_Stages_Common_Akasha_EyeEff_02", 10000007)
    globalActor:UnSpawnAttach("NPC_Item_VoidDevice01_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("NPC_Item_VoidDevice01_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("NPC_Item_VoidDevice01_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("NPC_Item_VoidDevice01_PlayerGirl", 10000007)
    local v = globalActor
    local v2 = v
    local unSpawnAttachInFixedArea = v.UnSpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttach_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
    self:GetQuestNpcActor(npcs.PaimonData.alias):UnSpawnAttach("Eff_Stages_Common_Akasha_EyeEff_01_paimonData")
end

function Quest3004:OnSubFinish300401(arg1)
    print("OnSubFinish300401")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300401)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4313Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4011Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12902Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12904Data.alias, 3)
end

function Quest3004:OnSubStart300422(arg1)
    print("OnSubStart300422")
    self:DailyNpcSafeHideSelf(npcs.Npc4313Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4011Data.alias, 1, true)
end

function Quest3004:OnSubFinish300422(arg1)
    print("OnSubFinish300422")
end

function Quest3004:OnSubStart300402(arg1)
    print("OnSubStart300402")
    self:NpcCreateWithTriggerBlack(npcs.Npc12562Data.id, 300402, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4313Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4011Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
    self:GetQuestNpcActor(npcs.Npc12562Data.alias):UnSpawnAttach("Eff_Stages_Common_Akasha_EyeEff_NPC_Male")
end

function Quest3004:OnSubFinish300402(arg1)
    print("OnSubFinish300402")
    self:ClearNarratorTask()
end

function Quest3004:OnSubStart300403(arg1)
    print("OnSubStart300403")
    self:LightNotifyTo(npcs.Npc4313Data.alias, 0, true)
    self:NpcCreateWithTrigger(npcs.Npc4019Data.id, 300403, 3)
    self:LightNotifyTo(npcs.Npc4011Data.alias, 0, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3004:OnSubFinish300403(arg1)
    print("OnSubFinish300403")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300402)
    self:SafeDestroyQuestNpc(npcs.Npc4019Data.alias, 3)
end

function Quest3004:OnSubStart300404(arg1)
    print("OnSubStart300404")
    self:CreateQuestNpc(arg1, npcs.Npc4314Data.id, 3)
    actorMgr:CreateActorWithPos("Q300404Trigger", "Actor/Gadget/Q300404Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300404_N4314").pos, sceneData:GetDummyPoint(3, "Q300404_N4314").rot, true, false, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3004:OnSubFinish300404(arg1)
    print("OnSubFinish300404")
    self:TransmitPlayerWithTextById(arg1, 300404, datas.TextmapId300404, 2)
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4314Data.alias, 3)
end

function Quest3004:OnSubStart300405(arg1)
    print("OnSubStart300405")
    self:NpcCreateWithTriggerBlack(npcs.Npc12555Data.id, 300405, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3004:OnSubFinish300405(arg1)
    print("OnSubFinish300405")
    self:SafeDestroyQuestNpc(npcs.Npc12555Data.alias, 3)
end

function Quest3004:OnSubStart300406(arg1)
    print("OnSubStart300406")
    self:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300406Trigger", "Actor/Gadget/Q300406Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300405_N12565").pos, sceneData:GetDummyPoint(3, "Q300405_N12565").rot, true, false, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3004:OnSubFinish300406(arg1)
    print("OnSubFinish300406")
end

function Quest3004:OnSubStart300407(arg1)
    print("OnSubStart300407")
    self:NpcCreateWithTrigger(npcs.Npc12555Data.id, 300407, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12565Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12566Data.id, 5)
    self:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3004:OnSubFinish300407(arg1)
    print("OnSubFinish300407")
    self:SafeDestroyQuestNpc(npcs.Npc12555Data.alias, 3)
end

function Quest3004:OnSubStart300408(arg1)
    print("OnSubStart300408")
    self:CreateQuestNpc(arg1, npcs.Npc12563Data.id, 4)
    self:LightNotifyTo(npcs.Npc4044Data.alias, 0, true)
    self:CreateQuestNpc(arg1, npcs.Npc12733Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12734Data.id, 6)
    self:CreateQuestNpcWithTriggerBlack("Q300408TriggerWithBlack", 300408, npcs.Npc12555Data.id, 1, 15, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12563Data.alias)
    questNpcActor:SitOnChair(0)
    local v = self:GetQuestNpcActor(npcs.Npc12733Data.alias)
    v:SitOnChair(0)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12734Data.alias)
    questNpcActor2:SitOnChair(0)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
    questNpcActor2:EnableHeadCtrl(false)
    local v2 = globalActor
    local v3 = v2
    local spawnAttachInFixedArea = v2.SpawnAttachInFixedArea
    local str = "Q300401"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v4
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v3, str, str2, n, v4, tbl, nil, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedArea
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v7
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v6, str3, str4, n3, v7, tbl2, nil, true)
end

function Quest3004:OnSubFinish300408(arg1)
    print("OnSubFinish300408")
    self:SafeDestroyQuestNpc(npcs.Npc12555Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest3004:OnSubStart300409(arg1)
    print("OnSubStart300409")
    self:NpcCreateWithTriggerBlack(npcs.Npc12555Data.id, 300409, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12563Data.alias)
    questNpcActor:SitOnChair(0)
    local v = self:GetQuestNpcActor(npcs.Npc12733Data.alias)
    v:SitOnChair(0)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12734Data.alias)
    questNpcActor2:SitOnChair(0)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
    questNpcActor2:EnableHeadCtrl(false)
    local v2 = globalActor
    local v3 = v2
    local spawnAttachInFixedArea = v2.SpawnAttachInFixedArea
    local str = "Q300401"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v4
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v3, str, str2, n, v4, tbl, nil, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedArea
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v7
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v6, str3, str4, n3, v7, tbl2, nil, true)
end

function Quest3004:OnSubFinish300409(arg1)
    print("OnSubFinish300409")
    self:SafeDestroyQuestNpc(npcs.Npc12555Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12565Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12566Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12567Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4098Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4030Data.alias, 1072)
end

function Quest3004:OnSubStart300421(arg1)
    print("OnSubStart300421")
end

function Quest3004:OnSubFinish300421(arg1)
    print("OnSubFinish300421")
end

function Quest3004:OnSubStart300410(arg1)
    print("OnSubStart300410")
    self:NpcCreateWithTriggerBlack(npcs.Npc12555Data.id, 300410, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12563Data.alias)
    questNpcActor:SitOnChair(0)
    local v = self:GetQuestNpcActor(npcs.Npc12733Data.alias)
    v:SitOnChair(0)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12734Data.alias)
    questNpcActor2:SitOnChair(0)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
    questNpcActor2:EnableHeadCtrl(false)
    local v2 = globalActor
    local v3 = v2
    local spawnAttachInFixedArea = v2.SpawnAttachInFixedArea
    local str = "Q300401"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v4
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    spawnAttachInFixedArea(v3, str, str2, n, v4, tbl, nil, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedArea
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v7
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v6, str3, str4, n3, v7, tbl2, nil, true)
end

function Quest3004:OnSubFinish300410(arg1)
    print("OnSubFinish300410")
    self:GetQuestNpcActor(npcs.Npc12563Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12733Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12734Data.alias):EnableHeadCtrl(true)
    self:SafeDestroyQuestNpc(npcs.Npc12555Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12563Data.alias, 1072)
    self:SafeDestroyQuestNpc(npcs.Npc12733Data.alias, 1072)
    self:SafeDestroyQuestNpc(npcs.Npc12734Data.alias, 1072)
    self:SafeDestroyQuestNpc(npcs.Npc4055Data.alias, 3)
end

function Quest3004:OnSubStart300411(arg1)
    print("OnSubStart300411")
    self:NpcCreateWithTriggerBlack(npcs.Npc1054Data.id, 300411, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3004:OnSubFinish300411(arg1)
    print("OnSubFinish300411")
end

function Quest3004:OnSubStart300412(arg1)
    print("OnSubStart300412")
end

function Quest3004:OnSubFinish300412(arg1)
    print("OnSubFinish300412")
end

function Quest3004:OnSubStart300413(arg1)
    print("OnSubStart300413")
end

function Quest3004:OnSubFinish300413(arg1)
    print("OnSubFinish300413")
end

function Quest3004:OnSubStart300414(arg1)
    print("OnSubStart300414")
end

function Quest3004:OnSubFinish300414(arg1)
    print("OnSubFinish300414")
end

function Quest3004:OnSubStart300415(arg1)
    print("OnSubStart300415")
end

function Quest3004:OnSubFinish300415(arg1)
    print("OnSubFinish300415")
end

function Quest3004:OnSubStart300416(arg1)
    print("OnSubStart300416")
end

function Quest3004:OnSubFinish300416(arg1)
    print("OnSubFinish300416")
end

function Quest3004:OnSubStart300417(arg1)
    print("OnSubStart300417")
end

function Quest3004:OnSubFinish300417(arg1)
    print("OnSubFinish300417")
end

function Quest3004:OnSubStart300418(arg1)
    print("OnSubStart300418")
    self:CreateQuestNpc(arg1, npcs.Npc12555Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc4315Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc4316Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 6)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3004:OnSubFinish300418(arg1)
    print("OnSubFinish300418")
    self:SafeDestroyQuestNpc(npcs.Npc12555Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4315Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4316Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4059Data.alias, 3)
end

function Quest3004:OnSubStart300419(arg1)
    print("OnSubStart300419")
    self:DailyNpcSafeHideSelf(npcs.Npc4066Data.alias, 1, true)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12913Data.id, 2, npcs.Npc12913Data.alias)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3004:OnSubFinish300419(arg1)
    print("OnSubFinish300419")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300403)
    self:SafeDestroyQuestNpc(npcs.Npc12562Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12913Data.alias, 3)
end

function Quest3004:OnSubStart300420(arg1)
    print("OnSubStart300420")
    self:NpcCreateWithTriggerBlack(npcs.Npc1052Data.id, 300420, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4066Data.alias, 1, true)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
    local str = "Q300401"
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
    local str3 = "Q300402"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n3 = 10000007
    local v6
    local tbl2 = {}
    local n4 = 2412
    tbl2[1] = 2103
    tbl2[2] = n4
    func(v5, str3, str4, n3, v6, tbl2, nil, true)
end

function Quest3004:OnSubFinish300420(arg1)
    print("OnSubFinish300420")
    self:ClearNarratorTask()
end

return Quest3004
