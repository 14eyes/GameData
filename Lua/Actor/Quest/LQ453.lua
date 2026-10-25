require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest453 = class("Quest453", QuestActorProxy)
Quest453.defaultAlias = "Quest453"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local n = 453
local paimonData
local amborData
local farmerOldData
local farmerAngryData
local farmerWound1Data
local pawHintData
local toothHintData
local hairHintData

function Quest453:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 453
    paimonData = clientData.PaimonData
    amborData = clientData.AmborData
    farmerOldData = clientData.FarmerOldData
    farmerAngryData = clientData.FarmerAngryData
    farmerWound1Data = clientData.FarmerWound1Data
    pawHintData = clientData.PawHintData
    toothHintData = clientData.ToothHintData
    hairHintData = clientData.HairHintData
end

function Quest453:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["45301"] = self.OnSubStart45301
    self.subStartHandlers["45302"] = self.OnSubStart45302
    self.subStartHandlers["45307"] = self.OnSubStart45307
    self.subStartHandlers["45303"] = self.OnSubStart45303
    self.subStartHandlers["45308"] = self.OnSubStart45308
    self.subStartHandlers["45304"] = self.OnSubStart45304
    self.subStartHandlers["45305"] = self.OnSubStart45305
    self.subStartHandlers["45306"] = self.OnSubStart45306
end

function Quest453:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["45301"] = self.OnSubFinish45301
    self.subFinishHandlers["45302"] = self.OnSubFinish45302
    self.subFinishHandlers["45307"] = self.OnSubFinish45307
    self.subFinishHandlers["45303"] = self.OnSubFinish45303
    self.subFinishHandlers["45308"] = self.OnSubFinish45308
    self.subFinishHandlers["45304"] = self.OnSubFinish45304
    self.subFinishHandlers["45305"] = self.OnSubFinish45305
    self.subFinishHandlers["45306"] = self.OnSubFinish45306
end

function Quest453:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest453:PaimonDelay()
    self:PaimonDis()
end

function Quest453:OnSubStart45301(arg1)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, amborData.ID)
        arg1_2:GetQuestNpcActor(amborData.Alias):DoFreeStyle(1230)
        arg1_2:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1632", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1543", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1608", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:CreateQuestNpc(arg1, farmerOldData.ID)
        arg1_2:CreateQuestNpc(arg1, farmerAngryData.ID)
        arg1_2:CreateQuestNpc(arg1, farmerWound1Data.ID)
        arg1_2:CallDelay(1, function(arg1)
            arg1:GetQuestNpcActor(farmerOldData.Alias):DoFreeStyle(1120)
            arg1:GetQuestNpcActor(farmerAngryData.Alias):DoFreeStyle(1190)
            arg1:GetQuestNpcActor(farmerWound1Data.Alias):DoFreeStyle(4120)
        end)
    end)

    globalActor:UnSpawn("PawHint")
    globalActor:UnSpawn("ToothHint")
    globalActor:UnSpawn("HairHint")
end

function Quest453:OnSubStart45302(arg1)
    print("45302 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({farmerAngryData.Alias, farmerOldData.Alias, farmerWound1Data.Alias})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        local actor = actorMgr:GetActor("Npc163101_452")
        if actor ~= nil then
            arg1_2:ActionSafeCall(function(arg1)
                actor:Destroy(false)
            end)
        end

        if arg1_2:GetQuestNpcActor(amborData.Alias) ~= nil then
            arg1_2:ActionSafeCall(function(arg1)
                print("452\229\188\128\229\167\139\229\136\160\233\153\164\229\174\137\230\159\143")
                arg1:DestroyQuestNpcActorByAlias(amborData.Alias, false)
            end)
        end

        arg1_2:ActionSafeCall(function(arg1_2)
            arg1_2:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
            arg1_2:NotifyTo("Npc1632", DailyNPCManager.NpcEventType.HIDESELF, true)
            arg1_2:NotifyTo("Npc1543", DailyNPCManager.NpcEventType.HIDESELF, true)
            arg1_2:NotifyTo("Npc1608", DailyNPCManager.NpcEventType.HIDESELF, true)
            arg1_2:CreateQuestNpc(arg1, farmerOldData.ID)
            arg1_2:GetQuestNpcActor(farmerOldData.Alias):DoFreeStyle(1120)
            arg1_2:CreateQuestNpc(arg1, farmerAngryData.ID)
            arg1_2:GetQuestNpcActor(farmerAngryData.Alias):DoFreeStyle(1190)
            arg1_2:CreateQuestNpc(arg1, farmerWound1Data.ID)
            arg1_2:GetQuestNpcActor(farmerWound1Data.Alias):DoFreeStyle(4120)
        end)

        arg1_2:SpawnGadget(arg1, pawHintData.ID)
        print("SHOW BLACK SCREEN 453")
    end, nil, entityCreateTask)
end

function Quest453:OnSubStart45307(arg1)
    print("45307 start:...")
    self:SpawnGadget(arg1, pawHintData.ID)
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, paimonData.ID)
    end)
end

function Quest453:OnSubStart45303(arg1)
    print("45303 start:...")
    self:SpawnGadget(arg1, toothHintData.ID)
end

function Quest453:OnSubStart45308(arg1)
    print("45308 start:...")
    self:SpawnGadget(arg1, toothHintData.ID)
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, paimonData.ID)
    end)
end

function Quest453:OnSubStart45304(arg1)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, amborData.ID)
        arg1_2:GetQuestNpcActor(amborData.Alias):DoFreeStyle(1280)
        arg1_2:SpawnGadget(arg1, hairHintData.ID)
        arg1_2:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1632", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1543", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1608", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:CreateQuestNpc(arg1, farmerOldData.ID)
        arg1_2:GetQuestNpcActor(farmerOldData.Alias):DoFreeStyle(1120)
        arg1_2:CreateQuestNpc(arg1, farmerAngryData.ID)
        arg1_2:GetQuestNpcActor(farmerAngryData.Alias):DoFreeStyle(1190)
        arg1_2:CreateQuestNpc(arg1, farmerWound1Data.ID)
        arg1_2:GetQuestNpcActor(farmerWound1Data.Alias):DoFreeStyle(4120)
    end)
end

function Quest453:OnSubStart45305(arg1)
    self:SpawnGadget(arg1, hairHintData.ID)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1632", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1543", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1608", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:RequestInteraction(amborData.Alias)
        arg1_2:CreateQuestNpc(arg1, farmerOldData.ID)
        arg1_2:GetQuestNpcActor(farmerOldData.Alias):DoFreeStyle(1240)
        arg1_2:CreateQuestNpc(arg1, farmerAngryData.ID)
        arg1_2:GetQuestNpcActor(farmerAngryData.Alias):DoFreeStyle(1120)
        arg1_2:CreateQuestNpc(arg1, farmerWound1Data.ID)
        arg1_2:GetQuestNpcActor(farmerWound1Data.Alias):DoFreeStyle(1230)
    end)
end

function Quest453:OnSubStart45306(arg1)
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

function Quest453:OnSubFinish45301(arg1)
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest453:OnSubFinish45302(arg1)
    self:TransmitPlayerById(arg1, 1)
end

function Quest453:OnSubFinish45307(arg1)
    self:ActionSafeCall(self.PaimonDelay)
    globalActor:UnSpawn("PawHint")
end

function Quest453:OnSubFinish45303(arg1)
    self:TransmitPlayerById(arg1, 1)
end

function Quest453:OnSubFinish45308(arg1)
    self:ActionSafeCall(self.PaimonDelay)
    globalActor:UnSpawn("ToothHint")
end

function Quest453:OnSubFinish45304(arg1) end

function Quest453:OnSubFinish45305(arg1)
    self:ActionSafeCall(self.PaimonDelay)
    globalActor:UnSpawn("HairHint")
end

function Quest453:OnSubFinish45306(arg1)
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1632", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1543", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1608", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(self.PaimonDelay)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(farmerAngryData.Alias)
        local v = arg1:GetQuestNpcActor(farmerWound1Data.Alias)
        local questNpcActor2 = arg1:GetQuestNpcActor(farmerOldData.Alias)
        local questNpcActor3 = arg1:GetQuestNpcActor(amborData.Alias)
        if questNpcActor ~= nil then
            arg1:DestroyQuestNpcActorByAlias(farmerAngryData.Alias, false)
        end

        if v ~= nil then
            arg1:DestroyQuestNpcActorByAlias(farmerWound1Data.Alias, false)
        end

        if questNpcActor2 ~= nil then
            arg1:DestroyQuestNpcActorByAlias(farmerOldData.Alias, false)
        end

        if questNpcActor3 ~= nil then
            arg1:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end
    end)
end

function Quest453:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("45307:DIALOG 45307")
        globalActor:UnSpawn("PawHint")
    end

    if arg1 == 2 then
        print("45308:DIALOG 45308")
        globalActor:UnSpawn("ToothHint")
    end

    if arg1 == 3 then
        print("45305:DIALOG 45305")
        globalActor:UnSpawn("HairHint")
    end
end

function Quest453:Start() end
function Quest453:OnDestroy() end
return Quest453
