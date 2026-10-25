require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3010 = class("Quest3010", QuestActorProxy)
Quest3010.defaultAlias = "Quest3010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["301005"] = self.OnSubStart301005,
        ["301001"] = self.OnSubStart301001,
        ["301002"] = self.OnSubStart301002,
        ["301003"] = self.OnSubStart301003,
        ["301006"] = self.OnSubStart301006
    }
end

function Quest3010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["301005"] = self.OnSubFinish301005,
        ["301001"] = self.OnSubFinish301001,
        ["301002"] = self.OnSubFinish301002,
        ["301003"] = self.OnSubFinish301003,
        ["301006"] = self.OnSubFinish301006
    }
end

function Quest3010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["301006"] = self.OnSubFailed301006}
end

function Quest3010:Start()
    print("Start")
end

function Quest3010:OnDestroy()
    print("OnDestroy")
end

function Quest3010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3010:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest3010:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest3010:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest3010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3010:OnSubStart301005(arg1)
    print("OnSubStart301005")
    actorMgr:CreateActorWithPos("Q3010CityEntrance", "Actor/Gadget/Q3010CityEntrance", 70900002, 0, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").pos, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").rot, true, false, 3)
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

function Quest3010:OnSubFinish301005(arg1)
    print("OnSubFinish301005")
    self:TransmitPlayerByQuestId(301005, 1)
end

function Quest3010:OnSubStart301001(arg1)
    print("OnSubStart301001")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTrigger("301001Trigger", 301001, npcs.Npc1056Data.id, 0, 8)
        arg1_2:NpcCreate(arg1, npcs.Npc12657Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12658Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12666Data.id, 0)
        actorMgr:CreateActorWithPos("Q3010FrontGateTrigger", "Actor/Gadget/Q3010FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3010EastGateTrigger", "Actor/Gadget/Q3010EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
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

function Quest3010:OnSubFinish301001(arg1)
    print("OnSubFinish301001")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
    end)

    self:NpcDestroy("Npc12661", 3)
    self:NpcDestroy("Npc12662", 3)
    self:NpcDestroy("Npc12684", 3)
    self:NpcDestroy("Npc12685", 3)
    self:NpcDestroy("Npc12728", 3)
end

function Quest3010:OnSubStart301002(arg1)
    print("OnSubStart301002")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTriggerBlack("301002Trigger", 301002, npcs.Npc1052Data.id, 0, 15, 3)
        arg1_2:NpcCreate(arg1, npcs.Npc12652Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc4018Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12653Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12664Data.alias)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        end

        actorMgr:CreateActorWithPos("Q3010EastGateTrigger", "Actor/Gadget/Q3010EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q3010FrontGateTrigger", "Actor/Gadget/Q3010FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false)
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

function Quest3010:OnSubFinish301002(arg1)
    print("OnSubFinish301002")
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1052Data.alias)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12653Data.alias, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3.5)
    end)
end

function Quest3010:OnSubStart301003(arg1)
    print("OnSubStart301003")
    actorMgr:CreateActorWithPos("Q3010EndGodTalk", "Actor/Gadget/Q3010EndGodTalk", 70900002, 0, sceneData:GetDummyPoint(3, "Q3009Day3RealBeginDinaDown").pos, sceneData:GetDummyPoint(3, "Q3009Day3RealBeginDinaDown").rot, true, false, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12664Data.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    actorMgr:CreateActorWithPos("Q3010EastGateTrigger", "Actor/Gadget/Q3010EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3010FrontGateTrigger", "Actor/Gadget/Q3010FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false)
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

function Quest3010:OnSubFinish301003(arg1)
    print("OnSubFinish301003")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:ActorDestroy("Q3010FrontGateTrigger")
    self:ActorDestroy("Q3010EastGateTrigger")
    self:NpcDestroy(npcs.Npc12664Data.alias, 3)
end

function Quest3010:OnSubStart301006(arg1)
    print("OnSubStart301006")
    local this = self
    local questLimitRegionTask = self.QuestLimitRegionTask
    local n = 301006
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

function Quest3010:OnSubFinish301006(arg1)
    print("OnSubFinish301006")
    self:ClearQuestLimitRegionTask()
end

function Quest3010:OnSubFailed301006(arg1)
    print("OnSubFailed301006")
    self:ClearQuestLimitRegionTask()
    self:NpcDestroy(npcs.Npc1056Data.alias, 3)
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroy(npcs.Npc1052Data.alias, 3)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12653Data.alias, 3)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:NpcDestroy(npcs.Npc12664Data.alias, 3)
    self:ActorDestroy("Q3010EastGateTrigger")
    self:ActorDestroy("Q3010EndGodTalk")
    self:ActorDestroy("Q3010EsacpeTrigger")
    self:ActorDestroy("Q3010FrontGateTrigger")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:ActorDestroy("301001Trigger")
    self:ActorDestroy("301002Trigger")
end

return Quest3010
