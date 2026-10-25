require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest461 = class("Quest461", QuestActorProxy)
Quest461.defaultAlias = "Quest461"
local Q461ClientConfig = require("Quest/Client/Q461ClientConfig")
local DailyNPCManager = require("Actor/DailyNPCManager")

local n = 0
local kaeyaData = Q461ClientConfig.KaeyaData
local paimonData = Q461ClientConfig.PaimonData
local kaeyaNPCBossData = Q461ClientConfig.KaeyaNPCBossData
local npcData = Q461ClientConfig.NPCData

function Quest461:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest461:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46101"] = self.OnSubStart46101
    self.subStartHandlers["46102"] = self.OnSubStart46102
    self.subStartHandlers["46103"] = self.OnSubStart46103
    self.subStartHandlers["46104"] = self.OnSubStart46104
    self.subStartHandlers["46105"] = self.OnSubStart46105
    self.subStartHandlers["46106"] = self.OnSubStart46106
    self.subStartHandlers["46107"] = self.OnSubStart46107
    self.subStartHandlers["46109"] = self.OnSubStart46109
    self.subStartHandlers["46110"] = self.OnSubStart46110
end

function Quest461:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46101"] = self.OnSubFinish46101
    self.subFinishHandlers["46102"] = self.OnSubFinish46102
    self.subFinishHandlers["46103"] = self.OnSubFinish46103
    self.subFinishHandlers["46104"] = self.OnSubFinish46104
    self.subFinishHandlers["46105"] = self.OnSubFinish46105
    self.subFinishHandlers["46106"] = self.OnSubFinish46106
    self.subFinishHandlers["46107"] = self.OnSubFinish46107
    self.subFinishHandlers["46109"] = self.OnSubFinish46109
    self.subFinishHandlers["46110"] = self.OnSubFinish46110
end

function Quest461:DestroyNpc()
    local questNpcActor = actorMgr:GetActor(Q461ClientConfig.ActorAlias):GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest461:MoveKaeya()
    local actor = actorMgr:GetActor(Q461ClientConfig.ActorAlias)
    local questNpcActor = actor:GetQuestNpcActor(kaeyaData.Kaeya)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    questNpcActor:Destroy(false)
    actor:CreateQuestNpcById(46102, kaeyaData.KaeyaID)
end

function Quest461:DestroyKaeya()
    local questNpcActor = actorMgr:GetActor(Q461ClientConfig.ActorAlias):GetQuestNpcActor(kaeyaData.Kaeya)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest461:InvokeOnInteraction(arg1)
    print("461 Invoke : ")
    if arg1 == 0 then
        print("Invoke 0")
        self:KaeyaTask2()
    elseif arg1 == 1 then
        print("Invoke 1")
        self:NPCTask()
    elseif arg1 == 2 then
        print("Invoke 1")
        self:KaeyaTask()
    end
end

function Quest461:KaeyaTask()
    local questNpcActor = self.GetQuestNpcActor(self, kaeyaData.Kaeya)
    questNpcActor:EnableInteraction(false)
    print("46101 RunToStart")
    questNpcActor:RunToTask(kaeyaData.InPos2, function(arg1, arg2)
        print("46101 RunToEnd")
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, self.MoveKaeya)
    end)
end

function Quest461:KaeyaTask2()
    local questNpcActor = self:GetQuestNpcActor(kaeyaData.Kaeya)
    print("46102 RunToStart")
    questNpcActor:WalkToTask(kaeyaData.LeavePos, function(arg1, arg2)
        print("46102 RunToEnd")
        arg1:ClearFollowTask()
        arg1:SetVisible(false)
    end)
end

function Quest461:KaeyaTask3()
    local questNpcActor = self.GetQuestNpcActor(self, kaeyaData.Kaeya)
    questNpcActor:EnableInteraction(false)
    print("46107 RunToStart")
    questNpcActor:WalkToTask(kaeyaData.LeavePos2, function(arg1, arg2)
        print("46102 RunToEnd")
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, self.DestroyKaeya)
    end)
end

function Quest461:NPCTask()
    local questNpcActor = self:GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
    questNpcActor:EnableInteraction(false)
    print("46102 RunToStart")
    questNpcActor:RunToTask(kaeyaNPCBossData.ToPos, function(arg1, arg2)
        print("46104 RunToEnd")
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 2, arg1.HideSelf)
    end)
end

function Quest461:OnSubStart46101(arg1)
    print("46101 Start : Creat Kaeya")
    self:CreateQuestNpc(arg1, kaeyaData.KaeyaID)
end

function Quest461:OnSubFinish46101(arg1)
    print("46101 Finish : Kaeya Leave")
    self:PaimonVanish()
end

function Quest461:OnSubStart46102(arg1)
    print("46102 Start : ")
    self:NotifyTo("Npc1606", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest461:OnSubFinish46102(arg1)
    print("46102 Finish : ")
    self:PaimonVanish()
end

function Quest461:OnSubStart46109(arg1)
    print("46109 Start : ")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk)
end

function Quest461:OnSubStart46110(arg1)
    print("46109 Start : ")
end

function Quest461:OnSubFinish46110(arg1)
    print("46102 Finish : ")
    self:MoveKaeya()
end

function Quest461:StartTalk()
    print("46302 Start : ")
    self:CreateQuestNpcById(46109, kaeyaData.KaeyaID)
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteraction(kaeyaData.Kaeya)
    end)
end

function Quest461:OnSubFinish46109(arg1)
    print("46109 Finish : ")
    local questNpcActor = self:GetQuestNpcActor(kaeyaData.Kaeya)
    local v = self:GetQuestNpcActor(paimonData.Alias)
    self:NotifyTo("Npc1606", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(function(arg1)
        arg1:DestroyKaeya()
        arg1:PaimonVanish()
    end)
end

function Quest461:OnSubStart46103(arg1)
    print("46103 Start : ")
    n = 0
    self:CreateQuestNpc(arg1, 1409)
    self:CreateQuestNpc(arg1, 1413)
end

function Quest461:OnSubFinish46103(arg1)
    print("46103 Finish : ")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story1, self.OnNarratorFinish)
end

function Quest461:OnSubStart46104(arg1)
    print("46104 Start : ")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, kaeyaData.KaeyaID)
    end)
end

function Quest461:CountTalk()
    n = n + 1
    if n == 3 then
        if self:GetQuestNpcActor(Q461ClientConfig.ActorAlias) ~= nil then
            print("46103 finish quest ")
        end
    end
end

function Quest461:OnSubFinish46104(arg1)
    print("46104 Finish : ")
    local questNpcActor = self:GetQuestNpcActor(kaeyaNPCBossData.NpcBoss)
    self:PaimonVanish()
    self:CountTalk()
    self:ActionSafeCall(self.DestroyNpc())
end

function Quest461:OnSubFinish46105(arg1)
    print("46105 Finish : ")
    self:PaimonVanish()
    self:CountTalk()
end

function Quest461:OnSubFinish46106(arg1)
    print("46106 Finish : ")
    self:PaimonVanish()
    self:CountTalk()
end

function Quest461:OnSubFinish46107(arg1)
    print("46107 Finish : ")
    self:PaimonVanish()
    self:KaeyaTask3()
    self:DestroyQuestNpcActor("Npc1409", 3)
    self:DestroyQuestNpcActor("Npc1413", 3)
end

function Quest461:OnSubStart46107(arg1)
    print("46107 Start : ")
    self:CreateQuestNpc(arg1, kaeyaData.KaeyaID)
end

function Quest461:Start() end
function Quest461:OnDestroy() end
return Quest461
