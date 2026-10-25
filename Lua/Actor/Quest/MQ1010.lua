require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1010 = class("Quest1010", QuestActorProxy)
Quest1010.defaultAlias = "Quest1010"
local clientData
local subIDs
local yurenGuardData
local waiterData
local zhongliData
local gongziData
local licaiData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1010:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    yurenGuardData = clientData.YurenGuardData
    waiterData = clientData.WaiterData
    zhongliData = clientData.ZhongliData
    gongziData = clientData.GongziData
    licaiData = clientData.LicaiData
end

function Quest1010:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["101001"] = self.OnSubStart101001
    self.subStartHandlers["101002"] = self.OnSubStart101002
    self.subStartHandlers["101003"] = self.OnSubStart101003
    self.subStartHandlers["101004"] = self.OnSubStart101004
    self.subStartHandlers["101007"] = self.OnSubStart101007
    self.subStartHandlers["101008"] = self.OnSubStart101008
    self.subStartHandlers["101005"] = self.OnSubStart101005
    self.subStartHandlers["101006"] = self.OnSubStart101006
end

function Quest1010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["101001"] = self.OnSubFinish101001
    self.subFinishHandlers["101002"] = self.OnSubFinish101002
    self.subFinishHandlers["101003"] = self.OnSubFinish101003
    self.subFinishHandlers["101004"] = self.OnSubFinish101004
    self.subFinishHandlers["101007"] = self.OnSubFinish101007
    self.subFinishHandlers["101008"] = self.OnSubFinish101008
    self.subFinishHandlers["101005"] = self.OnSubFinish101005
    self.subFinishHandlers["101006"] = self.OnSubFinish101006
end

function Quest1010:OnSubStart101001(arg1)
    print("101001 start:...")
end

function Quest1010:OnSubStart101002(arg1)
    print("101002 start:...")
    self:CreateQuestNpc(arg1, yurenGuardData.ID)
    self:NotifyTo("Npc2145", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1010:OnSubStart101003(arg1)
    print("101003 start:...")
    self:CreateQuestNpc(arg1, waiterData.ID)
    self:CreateQuestNpc(arg1, gongziData.ID)
    self:CreateQuestNpc(arg1, licaiData.ID)
    self:NotifyTo("Npc2022", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2096", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1010:OnSubStart101004(arg1)
    print("101004 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest1010:OnSubStart101007(arg1)
    print("101007 start:...")
    self:TransmitPlayerById(arg1, 1)
end

function Quest1010:OnSubStart101008(arg1)
    print("101008 start:...")
    self:NotifyTo("Npc2063", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2146", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:PlayCutsceneIndex(10100402, function(arg1)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

function Quest1010:OnSubStart101005(arg1)
    print("101005 start:...")
    self:NotifyTo("Npc2063", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2146", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:TransmitPlayerById(arg1, 1)
    self:ShowBlackScreen(0.0, 3, 0.5)
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, zhongliData.ID)
        arg1_2:GetQuestNpcActor(zhongliData.Alias):SitOnChair()
        arg1_2:CreateQuestNpc(arg1, gongziData.ID)
        arg1_2:GetQuestNpcActor(gongziData.Alias):SitOnChair()
    end)

    self:CallDelay(1, function(arg1)
        arg1:PlayerSitOnChair()
    end)
end

function Quest1010:OnSubStart101006(arg1)
    print("101006 start:...")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, zhongliData.ID)
    end)

    self:NotifyTo("Npc2096", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1010:OnSubFinish101001(arg1)
    print("OnFinished 101001")
end

function Quest1010:OnSubFinish101002(arg1)
    print("OnFinished 101002")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1010:OnSubFinish101003(arg1)
    print("OnFinished 101003")
    self:NotifyTo("Npc2145", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:DestroyQuestNpcActor(yurenGuardData.Alias, 1033)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1010:OnSubFinish101004(arg1)
    print("OnFinished 101004")
    local questNpcActor = self:GetQuestNpcActor(gongziData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    self:NotifyTo("Npc2022", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest1010:OnSubFinish101007(arg1)
    print("OnFinished 101007")
end

function Quest1010:OnSubFinish101008(arg1)
    print("OnFinished 101008")
end

function Quest1010:OnSubFinish101005(arg1)
    print("OnFinished 101005")
    self:ActionSafeCall(function(arg1_2)
        local questNpcActor = arg1_2:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end

        arg1_2:TransmitPlayerById(arg1, 2)
    end)
end

function Quest1010:OnSubFinish101006(arg1)
    print("OnFinished 101006")
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

    self:NotifyTo("Npc2063", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2146", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2096", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest1010:Start() end
function Quest1010:OnDestroy() end
return Quest1010
