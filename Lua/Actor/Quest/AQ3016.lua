require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3016 = class("Quest3016", QuestActorProxy)
Quest3016.defaultAlias = "Quest3016"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["301601"] = self.OnSubStart301601,
        ["301617"] = self.OnSubStart301617,
        ["301602"] = self.OnSubStart301602,
        ["301603"] = self.OnSubStart301603,
        ["301604"] = self.OnSubStart301604,
        ["301605"] = self.OnSubStart301605,
        ["301606"] = self.OnSubStart301606,
        ["301607"] = self.OnSubStart301607,
        ["301608"] = self.OnSubStart301608,
        ["301609"] = self.OnSubStart301609,
        ["301610"] = self.OnSubStart301610,
        ["301611"] = self.OnSubStart301611,
        ["301612"] = self.OnSubStart301612,
        ["301613"] = self.OnSubStart301613,
        ["301614"] = self.OnSubStart301614,
        ["301615"] = self.OnSubStart301615,
        ["301616"] = self.OnSubStart301616
    }
end

function Quest3016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["301601"] = self.OnSubFinish301601,
        ["301617"] = self.OnSubFinish301617,
        ["301602"] = self.OnSubFinish301602,
        ["301603"] = self.OnSubFinish301603,
        ["301604"] = self.OnSubFinish301604,
        ["301605"] = self.OnSubFinish301605,
        ["301606"] = self.OnSubFinish301606,
        ["301607"] = self.OnSubFinish301607,
        ["301608"] = self.OnSubFinish301608,
        ["301609"] = self.OnSubFinish301609,
        ["301610"] = self.OnSubFinish301610,
        ["301611"] = self.OnSubFinish301611,
        ["301612"] = self.OnSubFinish301612,
        ["301613"] = self.OnSubFinish301613,
        ["301614"] = self.OnSubFinish301614,
        ["301615"] = self.OnSubFinish301615,
        ["301616"] = self.OnSubFinish301616
    }
end

function Quest3016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["301615"] = self.OnSubFailed301615}
end

function Quest3016:Start()
    print("Start")
end

function Quest3016:OnDestroy()
    print("OnDestroy")
end

function Quest3016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3016:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3016:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest3016:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3016:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        local v = globalActor
        local v2 = v
        local spawnAttachInFixedArea = v.SpawnAttachInFixedArea
        local str = "Q301601"
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
        local str3 = "Q301602"
        local str4 = "VoidAttach_PlayerGirl"
        local n3 = 10000007
        local v6
        local tbl2 = {}
        local n4 = 2412
        tbl2[1] = 2103
        tbl2[2] = n4
        func(v5, str3, str4, n3, v6, tbl2, nil, true)
    elseif arg1 == 1 then
        globalActor:UnSpawnAttachInFixedArea("Q301601")
        globalActor:UnSpawnAttachInFixedArea("Q301602")
    end
end

function Quest3016:OnSubStart301601(arg1)
    print("OnSubStart301601")
    self.NpcCreateWithTrigger(self, npcs.Npc4019Data.id, 301601, 1)
    self.DailyNpcSafeHideSelf(self, npcs.Npc4016Data.alias, 1, true)
    self.DailyNpcSafeHideSelf(self, npcs.Npc4022Data.alias, 1, true)
    self.DailyNpcSafeHideSelf(self, npcs.Npc4017Data.alias, 1, true)
    self.DailyNpcSafeHideSelf(self, npcs.Npc4010Data.alias, 1, true)
    if self.GetQuestVar(self, 301601, 4) == 0 then
        self.NarratorOnlyTaskByData(self, datas.NarratorWithId1, function()
            self:SetQuestVar(301601, 4, 1)
        end)
    end
end

function Quest3016:OnSubFinish301601(arg1)
    print("OnSubFinish301601")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4019Data.alias, 3)
end

function Quest3016:OnSubStart301617(arg1)
    print("OnSubStart301617")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4022Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack(npcs.Npc1056Data.alias, 301617, 1056, 4, 6, 1)
end

function Quest3016:OnSubFinish301617(arg1)
    print("OnSubFinish301617")
    self:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 3)
end

function Quest3016:OnSubStart301602(arg1)
    print("OnSubStart301602")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:NpcCreateWithTrigger(npcs.Npc4009Data.id, 301602, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4022Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
end

function Quest3016:OnSubFinish301602(arg1)
    print("OnSubFinish301602")
end

function Quest3016:OnSubStart301603(arg1)
    print("OnSubStart301603")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:NpcCreateWithTrigger(npcs.Npc4016Data.id, 301603, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4022Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
end

function Quest3016:OnSubFinish301603(arg1)
    print("OnSubFinish301603")
end

function Quest3016:OnSubStart301604(arg1)
    print("OnSubStart301604")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:NpcCreateWithTrigger(npcs.Npc4031Data.id, 301604, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4022Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
end

function Quest3016:OnSubFinish301604(arg1)
    print("OnSubFinish301604")
end

function Quest3016:OnSubStart301605(arg1)
    print("OnSubStart301605")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4022Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("301605trigger", 301605, 1056, 1, 6, 1)
end

function Quest3016:OnSubFinish301605(arg1)
    print("OnSubFinish301605")
    self:SafeDestroyQuestNpc(npcs.Npc4009Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 3)
end

function Quest3016:OnSubStart301606(arg1)
    print("OnSubStart301606")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4022Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
end

function Quest3016:OnSubFinish301606(arg1)
    print("OnSubFinish301606")
end

function Quest3016:OnSubStart301607(arg1)
    print("OnSubStart301607")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc4009Data.id, 1)
    self:NpcCreateWithTriggerBlack(npcs.Npc12659Data.id, 301607, 4)
    self:LightNotifyTo(npcs.Npc4022Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
end

function Quest3016:OnSubFinish301607(arg1)
    print("OnSubFinish301607")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
    end)
end

function Quest3016:OnSubStart301608(arg1)
    print("OnSubStart301608")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
end

function Quest3016:OnSubFinish301608(arg1)
    print("OnSubFinish301608")
end

function Quest3016:OnSubStart301609(arg1)
    print("OnSubStart301609")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc4016Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12659Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q3016Trigger1", "Actor/Gadget/Q3016Trigger1", 70900002, 1, sceneData:GetDummyPoint(3, "Q301608trigger").pos, sceneData:GetDummyPoint(3, "Q301608trigger").rot, true, false, 3)
end

function Quest3016:OnSubFinish301609(arg1)
    print("OnSubFinish301609")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId3)
        end)
    end)
end

function Quest3016:OnSubStart301610(arg1)
    print("OnSubStart301610")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc4031Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12659Data.alias, 3016)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 0, 0, 0, function(arg1)
        if arg1.BeFollowState == BeFollowState.SUCCESS then
            actorUtils.FinishQuestID(false, 301610)
        end
    end, nil, nil, nil, nil, nil, false)
end

function Quest3016:OnSubFinish301610(arg1)
    print("OnSubFinish301610")
end

function Quest3016:OnSubStart301611(arg1)
    print("OnSubStart301611")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12659Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q3016Trigger2", "Actor/Gadget/Q3016Trigger2", 70900002, 1, sceneData:GetDummyPoint(3, "Q301610trigge").pos, sceneData:GetDummyPoint(3, "Q301610trigge").rot, true, false)
end

function Quest3016:OnSubFinish301611(arg1)
    print("OnSubFinish301611")
    self:SafeDestroyQuestNpc(npcs.Npc12659Data.alias, 3)
end

function Quest3016:OnSubStart301612(arg1)
    print("OnSubStart301612")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
end

function Quest3016:OnSubFinish301612(arg1)
    print("OnSubFinish301612")
    self:SafeDestroyQuestNpc(npcs.Npc4009Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4031Data.alias, 3)
end

function Quest3016:OnSubStart301613(arg1)
    print("OnSubStart301613")
    self:CreateQuestNpc(arg1, npcs.Npc4019Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4009Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4016Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4031Data.alias, 1, true)
    self:NpcCreateWithTriggerBlack(npcs.Npc1056Data.id, 301613, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4022Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4021Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4020Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4029Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4042Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4043Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4045Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4046Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4047Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4049Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4055Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4061Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4062Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4081Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4082Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4083Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4315Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4337Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4285Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4034Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4379Data.alias, 1, true)
end

function Quest3016:OnSubFinish301613(arg1)
    print("OnSubFinish301613")
    self:SafeDestroyQuestNpc(npcs.Npc4019Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 3)
end

function Quest3016:OnSubStart301614(arg1)
    print("OnSubStart301614")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:NpcCreateWithTriggerBlack(npcs.Npc1056Data.id, 301614, 1)
end

function Quest3016:OnSubFinish301614(arg1)
    print("OnSubFinish301614")
    self:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 3)
end

function Quest3016:OnSubStart301615(arg1)
    print("OnSubStart301615")
    self:DailyNpcSafeHideSelf(npcs.Npc4019Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4009Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4016Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4031Data.alias, 1, true)
    self:NpcCreateWithTriggerBlack(npcs.Npc1056Data.id, 301615, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4022Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4017Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4010Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4021Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4020Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4029Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4042Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4043Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4044Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4045Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4046Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4047Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4049Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4055Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4060Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4061Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4062Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4081Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4082Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4083Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4315Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4337Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4285Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4034Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4379Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q3016Trigger3", "Actor/Gadget/Q3016Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q301615_T301615_N12695").pos, sceneData:GetDummyPoint(3, "Q301615_T301615_N12695").rot, true, false)
    local this = self
    local questLimitRegionTask = self.QuestLimitRegionTask
    local n = 301615
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
    actorMgr:CreateActorWithPos("Q3016Trigger", "Actor/Gadget/Q3016Trigger", 70900002, 1, sceneData:GetDummyPoint(3, "Q301614_T301614_N10000005").pos, sceneData:GetDummyPoint(3, "Q301614_T301614_N10000005").rot, true, false, 3)
end

function Quest3016:OnSubFinish301615(arg1)
    print("OnSubFinish301615")
    self:TransmitPlayerByQuestId(301615, 1)
    local actor = actorMgr:GetActor(actorAlias)
    actorMgr:DestroyEntityActor("Q3016Trigger", 3, false)
    self:ClearQuestLimitRegionTask()
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:ShowBlackScreen(0, 5, 0, nil, nil, nil, "", false, true)
    end)

    local v = actorMgr:GetActor(actorAlias)
    actorMgr:DestroyEntityActor("Q3016Trigger3", 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 3)
end

function Quest3016:OnSubFailed301615(arg1)
    print("OnSubFailed301615")
    local actor = actorMgr:GetActor(actorAlias)
    actorMgr:DestroyEntityActor("Q3016Trigger", 3, false)
    self:LightNotifyTo(npcs.Npc4019Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4009Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4016Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4031Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4022Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4017Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4010Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4021Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4020Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4029Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4042Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4043Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4044Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4045Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4046Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4047Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4049Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4055Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4057Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4058Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4060Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4061Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4062Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4081Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4082Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4083Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4084Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4315Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4337Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4285Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4034Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4379Data.alias, 0, true)
    self:ClearQuestLimitRegionTask()
    actor:ClearNpcTriggerByQuestId(301615)
    local v = actorMgr:GetActor(actorAlias)
    actorMgr:DestroyEntityActor("Q3016Trigger3", 3, false)
end

function Quest3016:OnSubStart301616(arg1)
    print("OnSubStart301616")
    self:LightNotifyTo(npcs.Npc4019Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4009Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4016Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4031Data.alias, 0, true)
    self:NpcCreateWithTriggerBlack(npcs.Npc12694Data.id, 301616, 1)
    self:LightNotifyTo(npcs.Npc4022Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4017Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4010Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4021Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4020Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4029Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4042Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4043Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4044Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4045Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4046Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4047Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4049Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4055Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4057Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4058Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4060Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4061Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4062Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4081Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4082Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4083Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4084Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4315Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4337Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4285Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4034Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4379Data.alias, 0, true)
end

function Quest3016:OnSubFinish301616(arg1)
    print("OnSubFinish301616")
    self:SafeDestroyQuestNpc(npcs.Npc12694Data.alias, 3)
end

return Quest3016
