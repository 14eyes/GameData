require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3014 = class("Quest3014", QuestActorProxy)
Quest3014.defaultAlias = "Quest3014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["301401"] = self.OnSubStart301401,
        ["301402"] = self.OnSubStart301402,
        ["301403"] = self.OnSubStart301403,
        ["301406"] = self.OnSubStart301406,
        ["301407"] = self.OnSubStart301407,
        ["301408"] = self.OnSubStart301408,
        ["301409"] = self.OnSubStart301409,
        ["301410"] = self.OnSubStart301410,
        ["301411"] = self.OnSubStart301411,
        ["301404"] = self.OnSubStart301404,
        ["301405"] = self.OnSubStart301405
    }
end

function Quest3014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["301401"] = self.OnSubFinish301401,
        ["301402"] = self.OnSubFinish301402,
        ["301403"] = self.OnSubFinish301403,
        ["301406"] = self.OnSubFinish301406,
        ["301407"] = self.OnSubFinish301407,
        ["301408"] = self.OnSubFinish301408,
        ["301409"] = self.OnSubFinish301409,
        ["301410"] = self.OnSubFinish301410,
        ["301411"] = self.OnSubFinish301411,
        ["301404"] = self.OnSubFinish301404,
        ["301405"] = self.OnSubFinish301405
    }
end

function Quest3014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["301410"] = self.OnSubFailed301410}
end

function Quest3014:Start()
    print("Start")
end

function Quest3014:OnDestroy()
    print("OnDestroy")
end

function Quest3014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3014:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest3014:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest3014:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest3014:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3014:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        if actor.GetSubQuestState(actor, 301411) == 2 then
            actor.FinishQuestID(actor, false, 301411)
        end

        print("Day6 FinalTalk Start ChangeTime")
    elseif arg1 == 2 then
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect01", true, 3, true)
    elseif arg1 == 3 then
        globalActor:ChangeDay24TimeClock(20, 0, 0.38, true)
    elseif arg1 == 4 then
        globalActor:ChangeDay24TimeClock(17, 0, 0.5, true)
    elseif arg1 == 6 then
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

function Quest3014:OnSubStart301401(arg1)
    print("OnSubStart301401")
    actorMgr:CreateActorWithPos("Q3014CityEntrance", "Actor/Gadget/Q3014CityEntrance", 70900002, 0, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").pos, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").rot, true, false, 3)
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect01", false, 0, false)
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

function Quest3014:OnSubFinish301401(arg1)
    print("OnSubFinish301401")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 4)
end

function Quest3014:OnSubStart301402(arg1)
    print("OnSubStart301402")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTrigger("301402Trigger", 301402, npcs.Npc1056Data.id, 0, 6)
        arg1_2:NpcCreate(arg1, npcs.Npc12657Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12658Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12666Data.id, 0)
        actorMgr:CreateActorWithPos("Q3014FrontGateTrigger", "Actor/Gadget/Q3014FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3014EastGateTrigger", "Actor/Gadget/Q3014EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
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

function Quest3014:OnSubFinish301402(arg1)
    print("OnSubFinish301402")
end

function Quest3014:OnSubStart301403(arg1)
    print("OnSubStart301403")
    actorMgr:CreateActorWithPos("Q3014GuardMerchantTrigger", "Actor/Gadget/Q3014GuardMerchantTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q3011Escape1Pos").pos, sceneData:GetDummyPoint(3, "Q3011Escape1Pos").rot, true, false, 3)
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect01", true, 3, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12664Data.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    self:ActorDestroy("Q3014EastGateTrigger")
    self:ActorDestroy("Q3014FrontGateTrigger")
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

function Quest3014:OnSubFinish301403(arg1)
    print("OnSubFinish301403")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 4)
        arg1_2:NpcDestroy(npcs.Npc12657Data.alias, 3)
        arg1_2:NpcDestroy(npcs.Npc12658Data.alias, 3)
    end)
end

function Quest3014:OnSubStart301406(arg1)
    print("OnSubStart301406")
    self:NpcCreate(arg1, npcs.Npc1056Data.id, 0)
    self:ActionSafeCall(function(arg1_2)
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect01", true, 3, true)
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
        arg1_2:NpcCreate(arg1, npcs.Npc12657Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12658Data.id, 0)
    end)
end

function Quest3014:OnSubFinish301406(arg1)
    print("OnSubFinish301406")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 4, nil, function(arg1)
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect01", false, 0, false)
    end)
end

function Quest3014:OnSubStart301407(arg1)
    print("OnSubStart301407")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc1056Data.id, 0)
        actorMgr:CreateActorWithPos("Q3014EastGateTrigger", "Actor/Gadget/Q3014EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3014FrontGateTrigger", "Actor/Gadget/Q3014FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
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

function Quest3014:OnSubFinish301407(arg1)
    print("OnSubFinish301407")
    self:NpcDestroy("Npc4214", 3)
    self:NpcDestroy("Npc12896", 3)
    self:NpcDestroy("Npc12897", 3)
    self:NpcDestroy("Npc12895", 3)
end

function Quest3014:OnSubStart301408(arg1)
    print("OnSubStart301408")
    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("301408Trigger", 301408, 1005, 0, 8, 2)
        actorMgr:CreateActorWithPos("Q3014EastGateTrigger", "Actor/Gadget/Q3014EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3014FrontGateTrigger", "Actor/Gadget/Q3014FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
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

function Quest3014:OnSubFinish301408(arg1)
    print("OnSubFinish301408")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest3014:OnSubStart301409(arg1)
    print("OnSubStart301409")
    actorMgr:CreateActorWithPos("Q3014EastGateTrigger", "Actor/Gadget/Q3014EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3014FrontGateTrigger", "Actor/Gadget/Q3014FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
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

function Quest3014:OnSubFinish301409(arg1)
    print("OnSubFinish301409")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:ActorDestroy("Q3014FrontGateTrigger")
    self:ActorDestroy("Q3014EastGateTrigger")
    self:NpcDestroy(npcs.Npc12664Data.alias, 3)
end

function Quest3014:OnSubStart301410(arg1)
    print("OnSubStart301410")
    local this = self
    local questLimitRegionTask = self.QuestLimitRegionTask
    local n = 301410
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

function Quest3014:OnSubFinish301410(arg1)
    print("OnSubFinish301410")
    self:ClearQuestLimitRegionTask()
end

function Quest3014:OnSubFailed301410(arg1)
    print("OnSubFailed301410")
    self:ClearQuestLimitRegionTask()
    self:NpcDestroy(npcs.Npc1056Data.alias, 3)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:NpcDestroy(npcs.Npc12664Data.alias, 3)
    self:ActorDestroy("Q3014EastGateTrigger")
    self:ActorDestroy("Q3014FrontGateTrigger")
    self:ActorDestroy("Q3014GuardMerchantTrigger")
    self:ActorDestroy("Q3014LeaveCityTrigger")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:ActorDestroy("301402Trigger")
    self:ActorDestroy("301406Trigger")
    self:ActorDestroy("301407Trigger")
    self:ActorDestroy("301408Trigger")
    self:ActorDestroy("Q3014HospitalTrigger")
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect01", false, 0, false)
end

function Quest3014:OnSubStart301411(arg1)
    print("OnSubStart301411")
end

function Quest3014:OnSubFinish301411(arg1)
    print("OnSubFinish301411")
end

function Quest3014:OnSubStart301404(arg1)
    print("OnSubStart301404")
end

function Quest3014:OnSubFinish301404(arg1)
    print("OnSubFinish301404")
end

function Quest3014:OnSubStart301405(arg1)
    print("OnSubStart301405")
    actorMgr:CreateActorWithPos("Q3014LeaveCityTrigger", "Actor/Gadget/Q3014LeaveCityTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q3014EscapePoint").pos, sceneData:GetDummyPoint(3, "Q3014EscapePoint").rot, true, false, 3)
end

function Quest3014:OnSubFinish301405(arg1)
    print("OnSubFinish301405")
    self:TransmitPlayerByQuestId(301405, 1)
end

return Quest3014
