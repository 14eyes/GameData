require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest452 = class("Quest452", QuestActorProxy)
Quest452.defaultAlias = "Quest452"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local n = 452
local paimonData
local amborData
local farmerData

function Quest452:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 452
    paimonData = clientData.PaimonData
    amborData = clientData.AmborData
    farmerData = clientData.FarmerData
end

function Quest452:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["45201"] = self.OnSubStart45201
    self.subStartHandlers["45202"] = self.OnSubStart45202
    self.subStartHandlers["45203"] = self.OnSubStart45203
    self.subStartHandlers["45206"] = self.OnSubStart45206
    self.subStartHandlers["45204"] = self.OnSubStart45204
    self.subStartHandlers["45205"] = self.OnSubStart45205
end

function Quest452:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["45201"] = self.OnSubFinish45201
    self.subFinishHandlers["45202"] = self.OnSubFinish45202
    self.subFinishHandlers["45203"] = self.OnSubFinish45203
    self.subFinishHandlers["45206"] = self.OnSubFinish45206
    self.subFinishHandlers["45204"] = self.OnSubFinish45204
    self.subFinishHandlers["45205"] = self.OnSubFinish45205
end

function Quest452:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest452:PaimonDelay()
    self:PaimonDis()
end

function Quest452:OnSubStart45201(arg1)
    print("45201 start:...")
    self:CreateQuestNpc(arg1, amborData.ID)
    self:GetQuestNpcActor(amborData.Alias):DoFreeStyle(1190)
end

function Quest452:OnSubStart45202(arg1)
    print("45202 start:...")
    actorMgr:CreateActorWithPos("Q45202Trigger", "Actor/Gadget/Q45202Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q452AmborFight").pos, sceneData:GetDummyPoint(3, "Q452AmborFight").rot, true, false)
    self:ActionSafeCall(function(arg1_2)
        if arg1_2:GetQuestNpcActor(amborData.Alias) ~= nil then
            arg1_2:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end

        arg1_2:CallDelay(0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, amborData.ID)
            arg1_2:GetQuestNpcActor(amborData.Alias):DoFreeStyle(1220)
        end)
    end)
end

function Quest452:OnSubStart45203(arg1)
    print("45203 start:...")
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, farmerData.ID)
    self:GetQuestNpcActor(farmerData.Alias):DoFreeStyle(4190)
end

function Quest452:OnSubStart45206(arg1)
    print("45206 start:...")
end

function Quest452:OnSubStart45204(arg1)
    self:GetQuestNpcActor(farmerData.Alias):DoFreeStyle(4190)
end

function Quest452:OnSubStart45205(arg1)
    print("45205 start:...")
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, farmerData.ID)
end

function Quest452:OnSubFinish45201(arg1)
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest452:OnSubFinish45202(arg1) end

function Quest452:OnSubFinish45203(arg1)
    self:ActionSafeCall(self.PaimonDelay)
    if self:GetQuestNpcActor(amborData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end)
    end
end

function Quest452:OnSubFinish45206(arg1)
    print("45206 finish:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({amborData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        arg1_2:ActionSafeCall(function(arg1_2)
            actor:TransmitPlayerByQuestId(45206, 1, nil, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, amborData.ID)
                arg1_2:GetQuestNpcActor(amborData.Alias):DoFreeStyle(1190)
                arg1_2:RequestInteraction(farmerData.Alias)
                print("SHOW BLACK SCREEN 452")
            end, entityCreateTask)

            local questNpcActor = arg1_2:GetQuestNpcActor(farmerData.Alias)
            if questNpcActor ~= nil then
                questNpcActor:DoFreeStateTrigger()
            end
        end)
    end)
end

function Quest452:OnSubFinish45204(arg1) end

function Quest452:OnSubFinish45205(arg1)
    self:ActionSafeCall(self.PaimonDelay)
    self:NotifyTo("Npc1631", DailyNPCManager.NpcEventType.STARTDAILY, true)
    if self:GetQuestNpcActor(amborData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end)
    end
end

function Quest452:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("45201:*******Quest 45201")
        local questNpcActor = self:GetQuestNpcActor(amborData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:RunToTask(amborData.LeavePos201)
        end
    end

    if arg1 == 2 then
        print("45203:*******Quest 45203")
        local questNpcActor = self:GetQuestNpcActor(amborData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:RunToTask(amborData.LeavePos203)
        end
    end
end

function Quest452:Start() end
function Quest452:OnDestroy() end
return Quest452
