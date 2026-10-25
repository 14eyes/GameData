require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3011 = class("Quest3011", QuestActorProxy)
Quest3011.defaultAlias = "Quest3011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["301118"] = self.OnSubStart301118,
        ["301101"] = self.OnSubStart301101,
        ["301102"] = self.OnSubStart301102,
        ["301103"] = self.OnSubStart301103,
        ["301104"] = self.OnSubStart301104,
        ["301105"] = self.OnSubStart301105
    }
end

function Quest3011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["301118"] = self.OnSubFinish301118,
        ["301101"] = self.OnSubFinish301101,
        ["301102"] = self.OnSubFinish301102,
        ["301103"] = self.OnSubFinish301103,
        ["301104"] = self.OnSubFinish301104,
        ["301105"] = self.OnSubFinish301105
    }
end

function Quest3011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["301105"] = self.OnSubFailed301105}
end

function Quest3011:Start()
    print("Start")
end

function Quest3011:OnDestroy()
    print("OnDestroy")
end

function Quest3011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3011:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest3011:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest3011:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest3011:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor.ActionSafeCall(actor, function()
            local questNpcActor = actor:GetQuestNpcActor("Npc12664")
            if questNpcActor ~= nil then
                questNpcActor:DoFreeStyle(4121, true, nil, true, true, true, true)
                questNpcActor:DisableInteeHeadCtrl(true)
                questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
            end
        end)
    end
end

function Quest3011:OnSubStart301118(arg1)
    print("OnSubStart301118")
    actorMgr:CreateActorWithPos("Q3011CityEntrance", "Actor/Gadget/Q3011CityEntrance", 70900002, 0, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").pos, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").rot, true, false, 3)
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

function Quest3011:OnSubFinish301118(arg1)
    print("OnSubFinish301118")
    self:TransmitPlayerByQuestId(301118, 1)
end

function Quest3011:OnSubStart301101(arg1)
    print("OnSubStart301101")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTrigger("301101Trigger", 301101, npcs.Npc1056Data.id, 0, 8)
        arg1_2:NpcCreate(arg1, npcs.Npc12657Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12658Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12666Data.id, 0)
        actorMgr:CreateActorWithPos("Q3011FrontGateTrigger", "Actor/Gadget/Q3011FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3011EastGateTrigger", "Actor/Gadget/Q3011EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
        arg1_2:NpcCreate(arg1, npcs.Npc12664Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12664Data.alias)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        end

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

function Quest3011:OnSubFinish301101(arg1)
    print("OnSubFinish301101")
end

function Quest3011:OnSubStart301102(arg1)
    print("OnSubStart301102")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTriggerBlack("301102Trigger", 301102, npcs.Npc1052Data.id, 0, 6, 2)
        arg1_2:NpcCreate(arg1, npcs.Npc12652Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc4018Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12653Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12654Data.id, 0)
        actorMgr:CreateActorWithPos("Q3011EastGateTrigger", "Actor/Gadget/Q3011EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3011FrontGateTrigger", "Actor/Gadget/Q3011FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12664Data.alias)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        end

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

function Quest3011:OnSubFinish301102(arg1)
    print("OnSubFinish301102")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1052Data.alias)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(2.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
        end)
    end)
end

function Quest3011:OnSubStart301103(arg1)
    print("OnSubStart301103")
    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("301103Trigger", 301103, 1052, 0, 6, 2)
        actorMgr:CreateActorWithPos("Q3011EastGateTrigger", "Actor/Gadget/Q3011EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3011FrontGateTrigger", "Actor/Gadget/Q3011FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12664Data.alias)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        end

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

function Quest3011:OnSubFinish301103(arg1)
    print("OnSubFinish301103")
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1052Data.alias)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12653Data.alias, 3)
    self:NpcDestroy(npcs.Npc12654Data.alias, 3)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest3011:OnSubStart301104(arg1)
    print("OnSubStart301104")
    actorMgr:CreateActorWithPos("Q3011EastGateTrigger", "Actor/Gadget/Q3011EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3011FrontGateTrigger", "Actor/Gadget/Q3011FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12664Data.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

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

function Quest3011:OnSubFinish301104(arg1)
    print("OnSubFinish301104")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:ActorDestroy("Q3011FrontGateTrigger")
    self:ActorDestroy("Q3011EastGateTrigger")
    self:NpcDestroy(npcs.Npc12664Data.alias, 3)
end

function Quest3011:OnSubStart301105(arg1)
    print("OnSubStart301105")
    local this = self
    local questLimitRegionTask = self.QuestLimitRegionTask
    local n = 301105
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

function Quest3011:OnSubFinish301105(arg1)
    print("OnSubFinish301105")
    self:ClearQuestLimitRegionTask()
end

function Quest3011:OnSubFailed301105(arg1)
    print("OnSubFailed301105")
    self:ClearQuestLimitRegionTask()
    self:NpcDestroy(npcs.Npc1056Data.alias, 3)
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroy(npcs.Npc1052Data.alias, 3)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12653Data.alias, 3)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:NpcDestroy(npcs.Npc12654Data.alias, 3)
    self:NpcDestroy(npcs.Npc12664Data.alias, 3)
    self:ActorDestroy("Q3011EastGateTrigger")
    self:ActorDestroy("Q3011FrontGateTrigger")
    self:ActorDestroy("Q3011LeaveTest1Trigger")
    self:ActorDestroy("Q3011LeaveTest2Trigger")
    self:ActorDestroy("Q3011TrapRunTrigger")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:ActorDestroy("301101Trigger")
    self:ActorDestroy("301102Trigger")
    self:ActorDestroy("301103Trigger")
end

return Quest3011
