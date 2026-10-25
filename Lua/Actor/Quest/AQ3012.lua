require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3012 = class("Quest3012", QuestActorProxy)
Quest3012.defaultAlias = "Quest3012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["301211"] = self.OnSubStart301211,
        ["301201"] = self.OnSubStart301201,
        ["301202"] = self.OnSubStart301202,
        ["301203"] = self.OnSubStart301203,
        ["301204"] = self.OnSubStart301204,
        ["301205"] = self.OnSubStart301205,
        ["301207"] = self.OnSubStart301207,
        ["301209"] = self.OnSubStart301209,
        ["301213"] = self.OnSubStart301213,
        ["301212"] = self.OnSubStart301212,
        ["301210"] = self.OnSubStart301210
    }
end

function Quest3012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["301211"] = self.OnSubFinish301211,
        ["301201"] = self.OnSubFinish301201,
        ["301202"] = self.OnSubFinish301202,
        ["301203"] = self.OnSubFinish301203,
        ["301204"] = self.OnSubFinish301204,
        ["301205"] = self.OnSubFinish301205,
        ["301207"] = self.OnSubFinish301207,
        ["301209"] = self.OnSubFinish301209,
        ["301213"] = self.OnSubFinish301213,
        ["301212"] = self.OnSubFinish301212,
        ["301210"] = self.OnSubFinish301210
    }
end

function Quest3012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["301213"] = self.OnSubFailed301213}
end

function Quest3012:Start()
    print("Start")
end

function Quest3012:OnDestroy()
    print("OnDestroy")
end

function Quest3012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3012:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest3012:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest3012:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest3012:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3012:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:ShowReadingDialog(120059)
    end
end

function Quest3012:OnSubStart301211(arg1)
    print("OnSubStart301211")
    actorMgr:CreateActorWithPos("Q3012CityEntrance", "Actor/Gadget/Q3012CityEntrance", 70900002, 0, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").pos, sceneData:GetDummyPoint(3, "Q3007CityCenterPos").rot, true, false, 3)
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

function Quest3012:OnSubFinish301211(arg1)
    print("OnSubFinish301211")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3.5)
end

function Quest3012:OnSubStart301201(arg1)
    print("OnSubStart301201")
    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcWithTrigger("301201Trigger", 301201, npcs.Npc1056Data.id, 0, 6)
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

function Quest3012:OnSubFinish301201(arg1)
    print("OnSubFinish301201")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

function Quest3012:OnSubStart301202(arg1)
    print("OnSubStart301202")
    self:NpcCreate(arg1, npcs.Npc12652Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc4018Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12653Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12657Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12658Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12666Data.id, 0)
    actorMgr:CreateActorWithPos("Q3012FrontGateTrigger", "Actor/Gadget/Q3012FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3012EastGateTrigger", "Actor/Gadget/Q3012EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
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
    actorMgr:CreateActorWithPos("Q3012TriggerMerchantC", "Actor/Gadget/Q3012TriggerMerchantC", 70900002, 0, {x = -429.986, y = 235.92, z = 2771.17}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
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

function Quest3012:OnSubFinish301202(arg1)
    print("OnSubFinish301202")
end

function Quest3012:OnSubStart301203(arg1)
    print("OnSubStart301203")
    self:NpcCreate(arg1, npcs.Npc12661Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12662Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc1052Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12555Data.id, 0)
    actorMgr:CreateActorWithPos("Q3012TrapTalkTrigger", "Actor/Gadget/Q3012TrapTalkTrigger", 70900002, 0, {x = -347.186, y = 249.601, z = 2748.888}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    self:NpcCreate(arg1, npcs.Npc12684Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12685Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12728Data.id, 0)
    actorMgr:CreateActorWithPos("Q3012EastGateTrigger", "Actor/Gadget/Q3012EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3012FrontGateTrigger", "Actor/Gadget/Q3012FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
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

function Quest3012:OnSubFinish301203(arg1)
    print("OnSubFinish301203")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12555Data.alias)
    self:NpcDestroy(npcs.Npc12661Data.alias, 3)
    self:NpcDestroy(npcs.Npc12662Data.alias, 3)
    self:NpcDestroy(npcs.Npc1052Data.alias, 3)
    self:NpcDestroy(npcs.Npc12684Data.alias, 3)
    self:NpcDestroy(npcs.Npc12685Data.alias, 3)
    self:NpcDestroy(npcs.Npc12728Data.alias, 3)
end

function Quest3012:OnSubStart301204(arg1)
    print("OnSubStart301204")
end

function Quest3012:OnSubFinish301204(arg1)
    print("OnSubFinish301204")
end

function Quest3012:OnSubStart301205(arg1)
    print("OnSubStart301205")
    self:CreateQuestNpcWithTriggerBlack("301205Trigger", 301205, npcs.PaimonData.id, 0, 20, 2)
    actorMgr:CreateActorWithPos("Q3012EastGateTrigger", "Actor/Gadget/Q3012EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3012FrontGateTrigger", "Actor/Gadget/Q3012FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
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

function Quest3012:OnSubFinish301205(arg1)
    print("OnSubFinish301205")
    self:NpcDestroy(npcs.PaimonData.alias, 3)
end

function Quest3012:OnSubStart301207(arg1)
    print("OnSubStart301207")
    self:NpcCreate(arg1, npcs.Npc12555Data.id, 0)
    actorMgr:CreateActorWithPos("Q3012ChairTalkTrigger", "Actor/Gadget/Q3012ChairTalkTrigger", 70900002, 0, {x = -502.364, y = 222.725, z = 2789.385}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3012EastGateTrigger", "Actor/Gadget/Q3012EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3012FrontGateTrigger", "Actor/Gadget/Q3012FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
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

function Quest3012:OnSubFinish301207(arg1)
    print("OnSubFinish301207")
end

function Quest3012:OnSubStart301209(arg1)
    print("OnSubStart301209")
    self:NpcCreate(arg1, npcs.Npc1054Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12659Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12660Data.id, 0)
    actorMgr:CreateActorWithPos("Q3012StageFinTrigger", "Actor/Gadget/Q3012StageFinTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q3007Day1StageNeru").pos, sceneData:GetDummyPoint(3, "Q3007Day1StageNeru").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q3012EastGateTrigger", "Actor/Gadget/Q3012EastGateTrigger", 70900002, 0, {x = -283.789, y = 243.735, z = 2890.74}, {x = 0.0, y = 25.721, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q3012FrontGateTrigger", "Actor/Gadget/Q3012FrontGateTrigger", 70900002, 0, {x = -512.809, y = 233.287, z = 2696.328}, {x = 0.0, y = 49.3, z = 0.0}, true, false, 3)
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

function Quest3012:OnSubFinish301209(arg1)
    print("OnSubFinish301209")
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1054Data.alias)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12653Data.alias, 3)
    self:NpcDestroy(npcs.Npc12659Data.alias, 3)
    self:NpcDestroy(npcs.Npc12660Data.alias, 3)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 5)
    end)

    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:ActorDestroy("Q3012FrontGateTrigger")
    self:ActorDestroy("Q3012EastGateTrigger")
    self:NpcDestroy(npcs.Npc12654Data.alias, 3)
end

function Quest3012:OnSubStart301213(arg1)
    print("OnSubStart301213")
    local this = self
    local questLimitRegionTask = self.QuestLimitRegionTask
    local n = 301213
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

function Quest3012:OnSubFinish301213(arg1)
    print("OnSubFinish301213")
    self:ClearQuestLimitRegionTask()
end

function Quest3012:OnSubFailed301213(arg1)
    print("OnSubFailed301213")
    self:ClearQuestLimitRegionTask()
    self:NpcDestroy(npcs.Npc1056Data.alias, 3)
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroy(npcs.Npc1054Data.alias, 3)
    self:NpcDestroy(npcs.Npc12652Data.alias, 3)
    self:NpcDestroy(npcs.Npc4018Data.alias, 3)
    self:NpcDestroy(npcs.Npc12653Data.alias, 3)
    self:NpcDestroy(npcs.Npc12661Data.alias, 3)
    self:NpcDestroy(npcs.Npc12662Data.alias, 3)
    self:NpcDestroy(npcs.Npc12659Data.alias, 3)
    self:NpcDestroy(npcs.Npc12660Data.alias, 3)
    self:NpcDestroy(npcs.Npc12913Data.alias, 3)
    self:NpcDestroy(npcs.Npc12657Data.alias, 3)
    self:NpcDestroy(npcs.Npc12658Data.alias, 3)
    self:NpcDestroy(npcs.Npc1052Data.alias, 3)
    self:NpcDestroy(npcs.Npc12666Data.alias, 3)
    self:NpcDestroy(npcs.Npc12654Data.alias, 3)
    self:NpcDestroy(npcs.Npc12684Data.alias, 3)
    self:NpcDestroy(npcs.Npc12685Data.alias, 3)
    self:NpcDestroy(npcs.Npc12728Data.alias, 3)
    self:ActorDestroy("Q3012ChairTalkTrigger")
    self:ActorDestroy("Q3012EastGateTrigger")
    self:ActorDestroy("Q3012FrontGateTrigger")
    self:ActorDestroy("Q3012StageFinTrigger")
    self:ActorDestroy("Q3012TrapTalkTrigger")
    self:ActorDestroy("Q3012TriggerHospital")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:ActorDestroy("301201Trigger")
    self:ActorDestroy("301205Trigger")
    self:ActorDestroy("Q3012TriggerMerchantC")
end

function Quest3012:OnSubStart301212(arg1)
    print("OnSubStart301212")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTriggerBlack("301212Trigger", 301212, 1005, 0, 16, 2)
        arg1_2:NpcCreate(arg1, npcs.Npc12913Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12555Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12555Data.alias):DoFreeStyle(4120, true, nil, true, true, true, false)
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
        arg1_2:NotifyTo(npcs.Npc4019Data.alias, 1, true)
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

function Quest3012:OnSubFinish301212(arg1)
    print("OnSubFinish301212")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    globalActor:UnSpawnAttachInFixedArea("Q300701B")
    globalActor:UnSpawnAttachInFixedArea("Q300701G")
end

function Quest3012:OnSubStart301210(arg1)
    print("OnSubStart301210")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12555Data.alias):DoFreeStyle(4120, true, nil, true, true, true, false)
        actorMgr:CreateActorWithPos("Q3012TriggerHospital", "Actor/Gadget/Q3012TriggerHospital", 70900002, 0, {x = -315.647, y = 248.539, z = 2825.462}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
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
        arg1:NotifyTo(npcs.Npc4019Data.alias, 1, true)
    end)
end

function Quest3012:OnSubFinish301210(arg1)
    print("OnSubFinish301210")
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12913Data.alias)
end

return Quest3012
