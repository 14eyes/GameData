require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")
local DailyNPCManager = require("Actor/DailyNPCManager")

local Quest372 = class("Quest372", QuestActorProxy)
Quest372.defaultAlias = "Quest372"
local clientData
local subIDs
local paimonData
local wendyData
local npcData

function Quest372:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    wendyData = clientData.WendyData
    npcData = clientData.NPCData
end

function Quest372:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37201"] = self.OnSubStart37201
    self.subStartHandlers["37202"] = self.OnSubStart37202
    self.subStartHandlers["37203"] = self.OnSubStart37203
end

function Quest372:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37201"] = self.OnSubFinish37201
    self.subFinishHandlers["37202"] = self.OnSubFinish37202
    self.subFinishHandlers["37203"] = self.OnSubFinish37203
end

function Quest372:OnSubStart37201(arg1)
    print("37201 start ")
    self:NotifyTo("Npc1429", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1453", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1451", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1601", DailyNPCManager.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q372Trigger", "Actor/Gadget/Q372Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q372WendyShow").pos, sceneData:GetDummyPoint(3, "Q372WendyShow").rot, true, false)
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    self:CallDelay(2, function(arg1)
        arg1:GetQuestNpcActor(wendyData.Wendy):DoFreeStyle(1120)
    end)

    self:CreateQuestNpc(arg1, npcData.Npc1ID)
    self:CreateQuestNpc(arg1, npcData.Npc2ID)
    self:CreateQuestNpc(arg1, npcData.Npc3ID)
    self:CreateQuestNpc(arg1, npcData.Npc4ID)
    self:CreateQuestNpc(arg1, npcData.Npc5ID)
end

function Quest372:OnSubStart37202(arg1)
    print("37202 start:...")
    self:NotifyTo("Npc1525", DailyNPCManager.NpcEventType.HIDESELF, true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest372:OnSubStart37203(arg1)
    print("37203 start:...")
    self:NotifyTo("Npc1525", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(self.RequestWendy)
    self:NotifyTo("Npc1429", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1451", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1453", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1601", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest372:RequestPaimon(arg1)
    self:RequestInteraction(paimonData.Paimon)
end

function Quest372:VideoNow(arg1)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc1)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor(npcData.Npc2)
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = arg1:GetQuestNpcActor(npcData.Npc3)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = arg1:GetQuestNpcActor(npcData.Npc4)
        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end

        local questNpcActor4 = arg1:GetQuestNpcActor(npcData.Npc5)
        if questNpcActor4 ~= nil then
            questNpcActor4:Destroy(false)
        end

        arg1:TryPlayVideo("MDAQ041.usm", 300001, true, arg1.AdvanceQuest)
    end)
end

function Quest372:AdvanceQuest(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest372:RequestWendy(arg1)
    self:RequestInteraction(wendyData.Wendy)
end

function Quest372:OnSubFinish37201(arg1)
    print("OnFinished 37201")
end

function Quest372:OnSubFinish37202(arg1)
    print("OnFinished 37202")
end

function Quest372:OnSubFinish37203(arg1)
    print("OnFinished 37203")
    self:ActionSafeCall(self.DestroyNPC)
    self:ActionSafeCall(self.TellStory)
end

function Quest372:DestroyNPC(arg1)
    print("Destory NPC ")
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    local v = self:GetQuestNpcActor(wendyData.Wendy)
    if v ~= nil then
        v:Destroy(false)
    end

    self:NotifyTo("Npc1525", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest372:TellStory(arg1)
    self:CallDelay(1.5, function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorFlow, nil, "Story")
        local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc1)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor(npcData.Npc2)
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = arg1:GetQuestNpcActor(npcData.Npc3)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = arg1:GetQuestNpcActor(npcData.Npc4)
        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end

        local questNpcActor4 = arg1:GetQuestNpcActor(npcData.Npc5)
        if questNpcActor4 ~= nil then
            questNpcActor4:Destroy(false)
        end
    end)
end

function Quest372:BlackDoSth(arg1)
    print("OnFinished 37203")
    self:ShowBlackScreen(1.0, 1.0, 1.0, self.DestroyNPC)
end

function Quest372:InvokeOnInteraction(arg1)
    if arg1 == 3 then
        print("Now Spawn Tears")
        self:SpawnGadgetById(37203, 70300042)
    elseif arg1 == 4 then
        print("Now Destroy Tears")
        self:UnSpawn("Tears")
    elseif arg1 == 6 then
        local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(wendyData.desPos, Quest372.wendyVanish)
        end
    end
end

function Quest372:wendyVanish()
    local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
    if questNpcActor ~= nil then
        questNpcActor:SetVisible(false)
    end
end

function Quest372:Start() end
function Quest372:OnDestroy() end
return Quest372
