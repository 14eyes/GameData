require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20001 = class("Quest20001", QuestActorProxy)
Quest20001.defaultAlias = "Quest20001"
local clientData
local npcData
local n

function Quest20001:OnDataLoaded()
    clientData = self.clientData
    n = 20001
    npcData = clientData.NPCData
end

function Quest20001:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2000101"] = self.OnSubStart2000101
    self.subStartHandlers["2000102"] = self.OnSubStart2000102
    self.subStartHandlers["2000103"] = self.OnSubStart2000103
    self.subStartHandlers["2000104"] = self.OnSubStart2000104
end

function Quest20001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2000101"] = self.OnSubFinish2000101
    self.subFinishHandlers["2000102"] = self.OnSubFinish2000102
    self.subFinishHandlers["2000103"] = self.OnSubFinish2000103
    self.subFinishHandlers["2000104"] = self.OnSubFinish2000104
end

function Quest20001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2000101"] = self.OnSubFailed2000101
    self.subFailedHandlers["2000102"] = self.OnSubFailed2000102
    self.subFailedHandlers["2000103"] = self.OnSubFailed2000103
    self.subFailedHandlers["2000104"] = self.OnSubFailed2000105
end

function Quest20001:PaimonVanish() end

function Quest20001:OnSubStart2000101(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
    print("01 start")
end

function Quest20001:OnSubFinish2000101(arg1)
    print("01 finish")
end

function Quest20001:OnSubFailed2000101(arg1)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
end

function Quest20001:OnSubStart2000102(arg1)
    print("02 start")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
end

function Quest20001:OnSubFinish2000102(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1300)
    self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20001:OnSubFailed2000102(arg1)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    questNpcActor:DestroyWithDither(false, 1)
end

function Quest20001:OnSubStart2000103(arg1)
    print("03 start")
end

function Quest20001:OnSubFinish2000103(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1300)
    print("03 finish")
end

function Quest20001:OnSubFailed2000103(arg1)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    questNpcActor:DestroyWithDither(false, 1)
end

function Quest20001:OnSubStart2000104(arg1)
    print("04 start")
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20001:OnSubFinish2000104(arg1)
    local questNpcActor = self.GetQuestNpcActor(self, npcData.Npc)
    questNpcActor.Standby(questNpcActor, true)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.WalkToRouteTask(questNpcActor, clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
        self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    end, function(arg1, arg2)
        questNpcActor:Standby(true)
    end)

    print("04 finish")
end

function Quest20001:OnSubFailed2000104(arg1)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    questNpcActor:DestroyWithDither(false, 1)
end

function Quest20001:Start() end

function Quest20001:OnDestroy()
    print("\229\142\159\230\157\165\232\191\153\228\184\170\230\151\182\229\128\153\229\136\176\232\191\153\228\184\170\230\168\161\229\157\151\239\188\14020001destroy\228\186\134")
end

function Quest20001:OnMainFinished(arg1) end
function Quest20001:OnMainFailed(arg1) end

function Quest20001:OnMainCanceled(arg1)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    self:SafeDestroyQuestNpc(npcData.Npc, 3)
end

return Quest20001
