require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3007 = class("Quest3007", QuestActorProxy)
Quest3007.defaultAlias = "Quest3007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["300701"] = self.OnSubStart300701,
        ["300702"] = self.OnSubStart300702,
        ["300714"] = self.OnSubStart300714,
        ["300717"] = self.OnSubStart300717,
        ["300703"] = self.OnSubStart300703,
        ["300718"] = self.OnSubStart300718,
        ["300704"] = self.OnSubStart300704,
        ["300705"] = self.OnSubStart300705,
        ["300730"] = self.OnSubStart300730,
        ["300720"] = self.OnSubStart300720,
        ["300706"] = self.OnSubStart300706,
        ["300721"] = self.OnSubStart300721,
        ["300722"] = self.OnSubStart300722,
        ["300723"] = self.OnSubStart300723,
        ["300724"] = self.OnSubStart300724,
        ["300725"] = self.OnSubStart300725,
        ["300726"] = self.OnSubStart300726,
        ["300727"] = self.OnSubStart300727,
        ["300728"] = self.OnSubStart300728,
        ["300729"] = self.OnSubStart300729,
        ["300707"] = self.OnSubStart300707,
        ["300708"] = self.OnSubStart300708,
        ["300709"] = self.OnSubStart300709,
        ["300710"] = self.OnSubStart300710,
        ["300711"] = self.OnSubStart300711,
        ["300715"] = self.OnSubStart300715,
        ["300712"] = self.OnSubStart300712,
        ["300713"] = self.OnSubStart300713,
        ["300716"] = self.OnSubStart300716
    }
end

function Quest3007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["300701"] = self.OnSubFinish300701,
        ["300702"] = self.OnSubFinish300702,
        ["300714"] = self.OnSubFinish300714,
        ["300717"] = self.OnSubFinish300717,
        ["300703"] = self.OnSubFinish300703,
        ["300718"] = self.OnSubFinish300718,
        ["300704"] = self.OnSubFinish300704,
        ["300705"] = self.OnSubFinish300705,
        ["300730"] = self.OnSubFinish300730,
        ["300720"] = self.OnSubFinish300720,
        ["300706"] = self.OnSubFinish300706,
        ["300721"] = self.OnSubFinish300721,
        ["300722"] = self.OnSubFinish300722,
        ["300723"] = self.OnSubFinish300723,
        ["300724"] = self.OnSubFinish300724,
        ["300725"] = self.OnSubFinish300725,
        ["300726"] = self.OnSubFinish300726,
        ["300727"] = self.OnSubFinish300727,
        ["300728"] = self.OnSubFinish300728,
        ["300729"] = self.OnSubFinish300729,
        ["300707"] = self.OnSubFinish300707,
        ["300708"] = self.OnSubFinish300708,
        ["300709"] = self.OnSubFinish300709,
        ["300710"] = self.OnSubFinish300710,
        ["300711"] = self.OnSubFinish300711,
        ["300715"] = self.OnSubFinish300715,
        ["300712"] = self.OnSubFinish300712,
        ["300713"] = self.OnSubFinish300713,
        ["300716"] = self.OnSubFinish300716
    }
end

function Quest3007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["300709"] = self.OnSubFailed300709}
end

function Quest3007:Start()
    print("Start")
end

function Quest3007:OnDestroy()
    print("OnDestroy")
end

function Quest3007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3007:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest3007:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest3007:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest3007:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest3007:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3007:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("Dialogue refresh candybox")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 300721)
    elseif arg1 == 2 then
        print("Param2222222222")
        actor:FinishQuestID(false, 300722)
    elseif arg1 == 3 then
        actor:FinishQuestID(false, 300723)
    elseif arg1 == 4 then
        actor:FinishQuestID(false, 300724)
    elseif arg1 == 5 then
        actor:FinishQuestID(false, 300725)
    elseif arg1 == 11 then
        actor:FinishQuestID(false, 300726)
    elseif arg1 == 12 then
        print("Param2222222222")
        actor:FinishQuestID(false, 300727)
    elseif arg1 == 13 then
        actor:FinishQuestID(false, 300728)
    elseif arg1 == 15 then
        actor:FinishQuestID(false, 300729)
    elseif arg1 == 16 then
        actor:FinishQuestID(false, 300704)
    end
end

function Quest3007:OnSubStart300701(arg1)
    print("OnSubStart300701")
    self:NpcCreate(arg1, npcs.Npc12555Data.id, 0)
    actorMgr:CreateActorWithPos("Q3007CityEntranceTrigger", "Actor/Gadget/Q3007CityEntranceTrigger", 70900002, 0, {x = -385.884, y = 245.931, z = 2804.143}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
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
end

function Quest3007:OnSubFinish300701(arg1)
    print("OnSubFinish300701")
    self:NarratorOnlyTaskByData(datas.NarratorWithIdPreLoopReachCity)
end

function Quest3007:OnSubStart300702(arg1)
    print("OnSubStart300702")
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
    actorMgr:CreateActorWithPos("Q3007TriggerPreLoopStage", "Actor/Gadget/Q3007TriggerPreLoopStage", 70900002, 0, {x = -393.481, y = 234.383, z = 2779.168}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3007:OnSubFinish300702(arg1)
    print("OnSubFinish300702")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12555Data.alias)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest3007:OnSubStart300714(arg1)
    print("OnSubStart300714")
    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("300714Trigger", 300714, 12555, 0, 8, 2)
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
        arg1:NotifyTo(npcs.Npc4020Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4021Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4054Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4044Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4069Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4068Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4067Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4066Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4314Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4070Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4049Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4315Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4065Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4060Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4062Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4056Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4077Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4080Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4098Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4079Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4074Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4073Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4072Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4076Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4075Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4071Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4078Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    end)
end

function Quest3007:OnSubFinish300714(arg1)
    print("OnSubFinish300714")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12555Data.alias)
end

function Quest3007:OnSubStart300717(arg1)
    print("OnSubStart300717")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTriggerBlack("300717Trigger", 300717, 1005, 0, 15, 2)
        arg1_2:NpcCreate(arg1, npcs.Npc12652Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc4018Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12653Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12657Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12658Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12666Data.id, 0)
        actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
        arg1_2:NpcCreate(arg1, npcs.Npc12654Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12655Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12656Data.id, 0)
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
    end)
end

function Quest3007:OnSubFinish300717(arg1)
    print("OnSubFinish300717")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest3007:OnSubStart300703(arg1)
    print("OnSubStart300703")
    self:NpcCreate(arg1, npcs.Npc12555Data.id, 0)
    actorMgr:CreateActorWithPos("Q3007TriggerMorningMet", "Actor/Gadget/Q3007TriggerMorningMet", 70900002, 0, {x = -419.615, y = 241.386, z = 2720.283}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
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
end

function Quest3007:OnSubFinish300703(arg1)
    print("OnSubFinish300703")
end

function Quest3007:OnSubStart300718(arg1)
    print("OnSubStart300718")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithIdFesWalkTalk1)
        end)
    end)

    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12555Data.alias)
    questNpcActor:Standby()
    questNpcActor:DisableInteeHeadCtrl(true)
    self:NpcForceAvatarWalkByDist(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3007), 2.5, 4.5)
    questNpcActor:SetWalkSpeedRatio(0.8)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3007), datas.RoutePointsData, 4, 2, -1, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q3007Day1MerchantADina").rot))
        arg1:ClearSteerToAutonomyTask()
        actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 300718)
    end, nil, nil, function(arg1)
        arg1:TryPauseCurAutoNarrator()
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        local actor = actorMgr:GetActor("3007")
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
    end, function(arg1)
        print("OnMoveResume")
        arg1:ClearSteerToAutonomyTask()
        arg1:TryResumeCurAutoNarrator()
        arg1:DisableInteeHeadCtrl(true)
        arg1:ResumeMove()
    end, nil, true)

    questNpcActor:EnableInteraction(false)
end

function Quest3007:OnSubFinish300718(arg1)
    print("OnSubFinish300718")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12555Data.alias)
    questNpcActor:Standby()
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:EnableInteraction(true)
    self:NpcResetForceAvatarWalk(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3007))
end

function Quest3007:OnSubStart300704(arg1)
    print("OnSubStart300704")
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
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007TriggerMerchantA", "Actor/Gadget/Q3007TriggerMerchantA", 70900002, 0, {x = -429.528, y = 236.326, z = 2737.96}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3007:OnSubFinish300704(arg1)
    print("OnSubFinish300704")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest3007:OnSubStart300705(arg1)
    print("OnSubStart300705")
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
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
end

function Quest3007:OnSubFinish300705(arg1)
    print("OnSubFinish300705")
end

function Quest3007:OnSubStart300730(arg1)
    print("OnSubStart300730")
    actorMgr:CreateActorWithPos("Q3007TriggerMerchantB", "Actor/Gadget/Q3007TriggerMerchantB", 70900002, 0, {x = -428.925, y = 236.699, z = 2745.658}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
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
end

function Quest3007:OnSubFinish300730(arg1)
    print("OnSubFinish300730")
end

function Quest3007:OnSubStart300720(arg1)
    print("OnSubStart300720")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(0.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithIdFesWalkTalk2)
        end)
    end)

    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12555Data.alias)
    questNpcActor:Standby()
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:EnableInteraction(false)
    self:NpcForceAvatarWalkByDist(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3007), 2.5, 4.5)
    questNpcActor:SetWalkSpeedRatio(0.7)
    self:CallDelay(1, function(arg1)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(arg1:GetQuestNpcActor(npcs.Npc12555Data.alias, 3007), datas.RoutePointsData2, 4, 2, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q3007Day1MerchantCDina").rot))
            arg1:ClearSteerToAutonomyTask()
            actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 300720)
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
            local avatarPos = actorUtils.GetAvatarPos()
            local pos = arg1:GetPos()
            local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
            local actor = actorMgr:GetActor("3007")
            arg1:SteerToAutonomyTask(tbl, 1, true, true)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:TryResumeCurAutoNarrator()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, true)
    end)
end

function Quest3007:OnSubFinish300720(arg1)
    print("OnSubFinish300720")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12555Data.alias)
    questNpcActor:Standby()
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:EnableInteraction(true)
    self:NpcResetForceAvatarWalk(self:GetQuestNpcActor(npcs.Npc12555Data.alias, 3007))
end

function Quest3007:OnSubStart300706(arg1)
    print("OnSubStart300706")
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
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
    actorMgr:CreateActorWithPos("Q3007TriggerMerchantC", "Actor/Gadget/Q3007TriggerMerchantC", 70900002, 0, {x = -429.986, y = 235.92, z = 2771.17}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3007:OnSubFinish300706(arg1)
    print("OnSubFinish300706")
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:StopNarrator()
    self:ClearNarratorTask()
    self:NpcDestroy(npcs.Npc12654Data.alias, 3)
    self:NpcDestroy(npcs.Npc12655Data.alias, 3)
    self:NpcDestroy(npcs.Npc12656Data.alias, 3)
end

function Quest3007:OnSubStart300721(arg1)
    print("OnSubStart300721")
end

function Quest3007:OnSubFinish300721(arg1)
    print("OnSubFinish300721")
end

function Quest3007:OnSubStart300722(arg1)
    print("OnSubStart300722")
end

function Quest3007:OnSubFinish300722(arg1)
    print("OnSubFinish300722")
end

function Quest3007:OnSubStart300723(arg1)
    print("OnSubStart300723")
end

function Quest3007:OnSubFinish300723(arg1)
    print("OnSubFinish300723")
end

function Quest3007:OnSubStart300724(arg1)
    print("OnSubStart300724")
end

function Quest3007:OnSubFinish300724(arg1)
    print("OnSubFinish300724")
end

function Quest3007:OnSubStart300725(arg1)
    print("OnSubStart300725")
end

function Quest3007:OnSubFinish300725(arg1)
    print("OnSubFinish300725")
end

function Quest3007:OnSubStart300726(arg1)
    print("OnSubStart300726")
end

function Quest3007:OnSubFinish300726(arg1)
    print("OnSubFinish300726")
end

function Quest3007:OnSubStart300727(arg1)
    print("OnSubStart300727")
end

function Quest3007:OnSubFinish300727(arg1)
    print("OnSubFinish300727")
end

function Quest3007:OnSubStart300728(arg1)
    print("OnSubStart300728")
end

function Quest3007:OnSubFinish300728(arg1)
    print("OnSubFinish300728")
end

function Quest3007:OnSubStart300729(arg1)
    print("OnSubStart300729")
end

function Quest3007:OnSubFinish300729(arg1)
    print("OnSubFinish300729")
end

function Quest3007:OnSubStart300707(arg1)
    print("OnSubStart300707")
    self:NpcCreate(arg1, npcs.Npc12661Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12662Data.id, 0)
    actorMgr:CreateActorWithPos("Q3007TrapTrigger", "Actor/Gadget/Q3007TrapTrigger", 70900002, 0, {x = -346.977, y = 249.601, z = 2753.778}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    self:NpcCreate(arg1, npcs.Npc12684Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12685Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12728Data.id, 0)
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
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
end

function Quest3007:OnSubFinish300707(arg1)
    print("OnSubFinish300707")
end

function Quest3007:OnSubStart300708(arg1)
    print("OnSubStart300708")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12555Data.id, 0, npcs.Npc12555Data.alias)
end

function Quest3007:OnSubFinish300708(arg1)
    print("OnSubFinish300708")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12555Data.alias)
end

function Quest3007:OnSubStart300709(arg1)
    print("OnSubStart300709")
    actorMgr:CreateActorWithPos("Q3007TrapRunTrigger", "Actor/Gadget/Q3007TrapRunTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q3007Day1EscapePlayer").pos, sceneData:GetDummyPoint(3, "Q3007Day1EscapePlayer").rot, true, false, 3)
    self:CountDownUIStart(60, 15, 3)
    self:CallDelay(63, function(arg1)
        actorUtils.FinishQuestID(true, 300709)
    end)
end

function Quest3007:OnSubFinish300709(arg1)
    print("OnSubFinish300709")
    self:NpcDestroy(npcs.Npc1052Data.alias, 3)
    self:NpcDestroy(npcs.Npc12661Data.alias, 3)
    self:NpcDestroy(npcs.Npc12662Data.alias, 3)
    self:NpcDestroy(npcs.Npc12684Data.alias, 3)
    self:NpcDestroy(npcs.Npc12685Data.alias, 3)
    self:NpcDestroy(npcs.Npc12728Data.alias, 3)
    self:CountDownUITerminate()
end

function Quest3007:OnSubFailed300709(arg1)
    print("OnSubFailed300709")
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        arg1:CountDownUITerminate()
        arg1:ActorDestroy("Q3007TrapRunTrigger")
        arg1:NpcDestroy(npcs.Npc1052Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest3007:OnSubStart300710(arg1)
    print("OnSubStart300710")
    self:CreateQuestNpcWithTriggerBlack(npcs.Npc12555Data.alias, 300710, npcs.Npc12555Data.id, 0, 10, 2)
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
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
end

function Quest3007:OnSubFinish300710(arg1)
    print("OnSubFinish300710")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12555Data.alias)
end

function Quest3007:OnSubStart300711(arg1)
    print("OnSubStart300711")
    actorMgr:CreateActorWithPos("Q3007ChairTalkTrigger", "Actor/Gadget/Q3007ChairTalkTrigger", 70900002, 0, {x = -501.833, y = 222.725, z = 2792.602}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
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
end

function Quest3007:OnSubFinish300711(arg1)
    print("OnSubFinish300711")
end

function Quest3007:OnSubStart300715(arg1)
    print("OnSubStart300715")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12555Data.id, 0, npcs.Npc12555Data.alias)
end

function Quest3007:OnSubFinish300715(arg1)
    print("OnSubFinish300715")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12555Data.alias)
end

function Quest3007:OnSubStart300712(arg1)
    print("OnSubStart300712")
    self:NpcCreate(arg1, npcs.Npc1054Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12659Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12660Data.id, 0)
    actorMgr:CreateActorWithPos("Q3007StageTrigger", "Actor/Gadget/Q3007StageTrigger", 70900002, 0, {x = -406.04, y = 234.383, z = 2808.859}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
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
end

function Quest3007:OnSubFinish300712(arg1)
    print("OnSubFinish300712")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1054Data.alias)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12653Data.alias, 3)
    self:NpcDestroy(npcs.Npc12659Data.alias, 3)
    self:NpcDestroy(npcs.Npc12660Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:TransmitPlayerWithTextByQuestId(300712, 1, datas.TextmapEnd, 3.5)
    end)
end

function Quest3007:OnSubStart300713(arg1)
    print("OnSubStart300713")
    actorMgr:CreateActorWithPos("Q3007Dorm2Trigger", "Actor/Gadget/Q3007Dorm2Trigger", 70900002, 0, {x = -323.727, y = 249.601, z = 2747.128}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007EastGateTrigger", "Actor/Gadget/Q3007EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3007FrontGateTrigger", "Actor/Gadget/Q3007FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.329, z = 0.0}, true, false, 3)
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
end

function Quest3007:OnSubFinish300713(arg1)
    print("OnSubFinish300713")
end

function Quest3007:OnSubStart300716(arg1)
    print("OnSubStart300716")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 0, npcs.PaimonData.alias)
end

function Quest3007:OnSubFinish300716(arg1)
    print("OnSubFinish300716")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc12657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12658Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12666Data.alias, 3)
    self:ActorDestroy("Q3007FrontGateTrigger")
    self:ActorDestroy("Q3007EastGateTrigger")
end

return Quest3007
