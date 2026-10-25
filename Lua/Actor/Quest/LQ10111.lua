require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10111 = class("Quest10111", QuestActorProxy)
Quest10111.defaultAlias = "Quest10111"
local NPCUtil = require("Actor/Npc/NPCUtil")

local clientData
local shareData
local playerData
local npc
local v
local npc2
local narratorData

function Quest10111:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    playerData = clientData.PlayerData
    npc = shareData.QuestData["1011101"].npcs[1]
    v = shareData.QuestData["1011102"].npcs[1]
    npc2 = shareData.QuestData["1011102"].npcs[2]
    narratorData = clientData.NarratorData
end

function Quest10111:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1011101"] = self.OnSubStart1011101
    self.subStartHandlers["1011102"] = self.OnSubStart1011102
    self.subStartHandlers["1011103"] = self.OnSubStart1011103
    self.subStartHandlers["1011104"] = self.OnSubStart1011104
    self.subStartHandlers["1011105"] = self.OnSubStart1011105
    self.subStartHandlers["1011106"] = self.OnSubStart1011106
    self.subStartHandlers["1011107"] = self.OnSubStart1011107
end

function Quest10111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1011101"] = self.OnSubFinish1011101
    self.subFinishHandlers["1011102"] = self.OnSubFinish1011102
    self.subFinishHandlers["1011103"] = self.OnSubFinish1011103
    self.subFinishHandlers["1011104"] = self.OnSubFinish1011104
    self.subFinishHandlers["1011105"] = self.OnSubFinish1011105
    self.subFinishHandlers["1011106"] = self.OnSubFinish1011106
    self.subFinishHandlers["1011107"] = self.OnSubFinish1011107
end

function Quest10111:DestoryAllNPC()
    local questNpcActor = self:GetQuestNpcActor(npc.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(v.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    local questNpcActor3 = self:GetQuestNpcActor(npc2.alias)
    if questNpcActor3 ~= nil then
        questNpcActor3:Destroy(false)
    end

    local questNpcActor4 = self:GetQuestNpcActor("Paimon")
    if questNpcActor4 ~= nil then
        questNpcActor4:DestroyWithDisappear(false)
    end
end

function Quest10111:OnSubStart1011101(arg1)
    self:NotifyTo("Npc1411", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1605", NPCUtil.NpcEventType.STARTDAILY, true)
    self:ClearNarratorTask()
end

function Quest10111:OnSubFinish1011101(arg1) end

function Quest10111:OnSubStart1011102(arg1)
    self:CreateQuestNpc(arg1, v.id, 1)
    self:CreateQuestNpc(arg1, npc2.id, 2)
    local questNpcActor = self:GetQuestNpcActor(v.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(4190)
    end

    local questNpcActor2 = self:GetQuestNpcActor(npc2.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:DoFreeStyle(4050)
    end

    self:NarratorOnlyTaskLegacy(narratorData.Story3, nil, "Talk")
end

function Quest10111:OnSubFinish1011107(arg1)
    print("1011107 Finish:Shwo UI Guide")
    self:CallDelay(2, function()
        globalActor:StartGuide("GuideWendyQuestSkilliOS")
    end)
end

function Quest10111:OnSubFinish1011102(arg1)
    self:NarratorOnlyTaskLegacy(narratorData.Story1, nil, "Talk")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(20032, "Q1011102Stanly").pos, 0, 3, true)
    self:CreateSpeechBubbleTask(v.id, 101110202, 3, true, 4, 5)
    self:CreateSpeechBubbleTask(npc2.id, 101110203, 3, true, 4, 5)
end

function Quest10111:OnSubFinish1011103(arg1)
    self:ClearSpeechBubbleTask()
    local questNpcActor = self:GetQuestNpcActor(v.alias)
    if questNpcActor ~= nil then
        questNpcActor.DoFreeStyle(questNpcActor, 1270)
    end

    self:CallDelay(5, function()
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(1120)
        end
    end)

    local questNpcActor2 = self:GetQuestNpcActor(npc2.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2.DoFreeStateTrigger(questNpcActor2)
        self:CallDelay(1, function()
            questNpcActor2:DoFreeStyle(1230)
        end)
    end
end

function Quest10111:OnSubFinish1011104(arg1)
    print("1011104 Finish:Play Narrator")
    self.ActionSafeCall(self, function()
        self:DestoryAllNPC()
        self:NarratorOnlyTaskLegacy(narratorData.Story2, nil, "Talk")
    end)
end

function Quest10111:OnSubStart1011106(arg1)
    self.ClearNarratorTask(self)
    self.CallDelay(self, 2, function()
        local questNpcCreateTask = self.CreateQuestNpcCreateTask({npc.alias, v.alias, npc2.alias})
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:CreateQuestNpc(arg1, npc.id, 1)
            self:CreateQuestNpc(arg1, v.id, 2)
            self:CreateQuestNpc(arg1, npc2.id, 3)
            self:RequestInteraction(npc.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest10111:OnSubFinish1011106(arg1)
    self:ActionSafeCall(self.DestoryAllNPC)
    self:NotifyTo("Npc1411", NPCUtil.NpcEventType.STARTDAILY, true)
end

function Quest10111:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk Invork:Quest finish")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1011111)
        end
    end
end

function Quest10111:Start() end
function Quest10111:OnDestroy() end
return Quest10111
