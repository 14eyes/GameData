require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1011 = class("Quest1011", QuestActorProxy)
Quest1011.defaultAlias = "Quest1011"
local clientData
local subIDs
local zhongliData
local shitouData
local paimonData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1011:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    zhongliData = clientData.ZhongliData
    shitouData = clientData.ShitouData
    paimonData = clientData.PaimonData
end

function Quest1011:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["101101"] = self.OnSubStart101101
    self.subStartHandlers["101116"] = self.OnSubStart101116
    self.subStartHandlers["101102"] = self.OnSubStart101102
    self.subStartHandlers["101103"] = self.OnSubStart101103
    self.subStartHandlers["101112"] = self.OnSubStart101112
    self.subStartHandlers["101104"] = self.OnSubStart101104
    self.subStartHandlers["101127"] = self.OnSubStart101127
    self.subStartHandlers["101105"] = self.OnSubStart101105
    self.subStartHandlers["101113"] = self.OnSubStart101113
    self.subStartHandlers["101114"] = self.OnSubStart101114
    self.subStartHandlers["101115"] = self.OnSubStart101115
    self.subStartHandlers["101106"] = self.OnSubStart101106
    self.subStartHandlers["101107"] = self.OnSubStart101107
    self.subStartHandlers["101108"] = self.OnSubStart101108
    self.subStartHandlers["101109"] = self.OnSubStart101109
end

function Quest1011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["101101"] = self.OnSubFinish101101
    self.subFinishHandlers["101116"] = self.OnSubFinish101116
    self.subFinishHandlers["101102"] = self.OnSubFinish101102
    self.subFinishHandlers["101103"] = self.OnSubFinish101103
    self.subFinishHandlers["101112"] = self.OnSubFinish101112
    self.subFinishHandlers["101104"] = self.OnSubFinish101104
    self.subFinishHandlers["101105"] = self.OnSubFinish101105
    self.subFinishHandlers["101114"] = self.OnSubFinish101114
    self.subFinishHandlers["101106"] = self.OnSubFinish101106
    self.subFinishHandlers["101107"] = self.OnSubFinish101107
    self.subFinishHandlers["101108"] = self.OnSubFinish101108
    self.subFinishHandlers["101109"] = self.OnSubFinish101109
end

function Quest1011:OnSubStart101101(arg1)
    print("101101 start:...")
    self:NotifyTo("Npc2054", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2047", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, shitouData.ID)
end

function Quest1011:OnSubStart101116(arg1)
    print("101116 start:...")
    actorMgr:CreateActorWithPos("Q101102Trigger2", "Actor/Gadget/Q101102Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q101102Pot").pos, sceneData:GetDummyPoint(3, "Q101102Pot").rot, true, false)
end

function Quest1011:OnSubStart101102(arg1)
    print("101102 start:...")
    actorMgr:CreateActorWithPos("Q101102Trigger", "Actor/Gadget/Q101102Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101102Pot").pos, sceneData:GetDummyPoint(3, "Q101102Pot").rot, true, false)
end

function Quest1011:OnSubStart101103(arg1)
    print("101103 start:...")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:CallDelay(0.2, function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorData1)
    end)
end

function Quest1011:OnSubStart101112(arg1)
    print("101112 start:...")
    actorMgr:CreateActorWithPos("Q101112Trigger", "Actor/Gadget/Q101112Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101102Pot").pos, sceneData:GetDummyPoint(3, "Q101102Pot").rot, true, false)
end

function Quest1011:OnSubStart101104(arg1)
    print("101104 start:...")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 101128)
        end

        arg1_2:CreateQuestNpc(arg1, paimonData.ID)
        arg1_2:RequestInteraction(paimonData.Alias)
    end)
end

function Quest1011:InvokeOnInteraction(arg1)
    if arg1 == 11 then
        print("Now Change Pot")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 101104)
        end
    end
end

function Quest1011:OnSubStart101127(arg1)
    print("101127 start:...")
    actorMgr:CreateActorWithPos("Q101127Trigger", "Actor/Gadget/Q101127Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q101102Pot").pos, sceneData:GetDummyPoint(3, "Q101102Pot").rot, true, false)
end

function Quest1011:OnSubStart101105(arg1)
    print("101105 start:...")
end

function Quest1011:OnSubStart101106(arg1)
    print("101106 start:...")
end

function Quest1011:OnSubStart101107(arg1)
    print("101107 start:...")
    self:NotifyTo("Npc2054", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2047", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, shitouData.ID)
end

function Quest1011:OnSubStart101108(arg1)
    print("101108 start:...")
    self:SpawnGadget(arg1, 71700094)
end

function Quest1011:OnSubStart101109(arg1)
    print("101109 start:...")
    self:NotifyTo("Npc2054", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2047", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:DestroyQuestNpcActor(shitouData.Alias, 3)
    self:CallDelay(1.5, self.EnterDialog)
end

function Quest1011:EnterDialog()
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({zhongliData.Alias})
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.CreateNPC, nil, questNpcCreateTask)
end

function Quest1011:CreateNPC()
    self:CreateQuestNpcById(101109, zhongliData.ID)
    self:RequestInteraction(zhongliData.Alias)
end

function Quest1011:OnSubFinish101101(arg1)
    print("OnFinished 101101")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(zhongliData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor("Paimon")
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest1011:OnSubFinish101116(arg1)
    print("OnFinished 101116")
    self:NarratorOnlyTaskLegacy(clientData.NarratorData2)
end

function Quest1011:OnSubFinish101102(arg1)
    print("OnFinished 101102")
    self:NotifyTo("Npc2054", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2047", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:DestroyQuestNpcActor(shitouData.Alias, 3)
end

function Quest1011:OnSubFinish101103(arg1)
    print("OnFinished 101103")
end

function Quest1011:OnSubFinish101104(arg1)
    print("OnFinished 101104")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1011:OnSubFinish101105(arg1)
    print("OnFinished 101105")
    self:CallDelay(1, function(arg1)
        if arg1:GetSubQuestState(101114) ~= 3 then
            arg1:ClearNarratorTask()
            arg1:StopNarrator()
            arg1:CallDelay(0.2, function(arg1)
                arg1:NarratorOnlyTaskLegacy(clientData.NarratorCheck01)
            end)
        end
    end)
end

function Quest1011:OnSubFinish101114(arg1)
    print("OnFinished 101105")
    self:CallDelay(1, function(arg1)
        if arg1:GetSubQuestState(101106) ~= 3 then
            arg1:ClearNarratorTask()
            arg1:StopNarrator()
            arg1:CallDelay(0.2, function(arg1)
                arg1:NarratorOnlyTaskLegacy(clientData.NarratorCheck02)
            end)
        end
    end)
end

function Quest1011:OnSubFinish101106(arg1)
    print("OnFinished 101106")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorCheck03)
    end)
end

function Quest1011:OnSubFinish101107(arg1)
    print("OnFinished 101107")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(zhongliData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor("Paimon")
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest1011:OnSubFinish101109(arg1)
    print("OnFinished 101109")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end

        local v = arg1:GetQuestNpcActor(zhongliData.Alias)
        if v ~= nil then
            v:Destroy(false)
        end
    end)
end

function Quest1011:Start() end
function Quest1011:OnDestroy() end
return Quest1011
