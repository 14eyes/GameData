require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20011 = class("Quest20011", QuestActorProxy)
Quest20011.defaultAlias = "Quest20011"
local clientData
local npcData
local n

function Quest20011:OnDataLoaded()
    clientData = self.clientData
    n = 20011
    npcData = clientData.NPCData
end

function Quest20011:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2001101"] = self.OnSubStart2001101
    self.subStartHandlers["2001102"] = self.OnSubStart2001102
    self.subStartHandlers["2001103"] = self.OnSubStart2001103
    self.subStartHandlers["2001104"] = self.OnSubStart2001104
end

function Quest20011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2001101"] = self.OnSubFinish2001101
    self.subFinishHandlers["2001102"] = self.OnSubFinish2001102
    self.subFinishHandlers["2001103"] = self.OnSubFinish2001103
    self.subFinishHandlers["2001104"] = self.OnSubFinish2001104
end

function Quest20011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2001101"] = self.OnSubFailed2001101
    self.subFailedHandlers["2001102"] = self.OnSubFailed2001102
    self.subFailedHandlers["2001103"] = self.OnSubFailed2001103
    self.subFailedHandlers["2001104"] = self.OnSubFailed2001105
end

function Quest20011:PaimonVanish() end

function Quest20011:OnSubStart2001101(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190, true)
    questNpcActor:EnableInteraction(false)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    self:NotifyTo("Npc1408", NpcUtil.NpcEventType.HIDESELF, true)
    print("01 start")
end

function Quest20011:OnSubFinish2001101(arg1)
    print("01 finish")
end

function Quest20011:OnSubFailed2001101(arg1) end

function Quest20011:OnSubStart2001102(arg1)
    print("02 start")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190, true)
    questNpcActor:EnableInteraction(false)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    self:NotifyTo("Npc1408", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20011:OnSubFinish2001102(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1300, true)
    self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20011:OnSubFailed2001102(arg1)
    self:NotifyTo("Npc1408", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20011:OnSubStart2001103(arg1)
    print("03 start")
    self:NotifyTo("Npc1408", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20011:OnSubFinish2001103(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1300)
    print("03 finish")
end

function Quest20011:OnSubFailed2001103(arg1)
    self:NotifyTo("Npc1408", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20011:OnSubStart2001104(arg1)
    print("04 start")
    self:NotifyTo("Npc1408", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20011:OnSubFinish2001104(arg1)
    local questNpcActor = self.GetQuestNpcActor(self, npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:WalkToRouteTask(clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
        self:NotifyTo("Npc1408", NpcUtil.NpcEventType.STARTDAILY, true)
    end, function(arg1, arg2)
        self:GetQuestNpcActor(npcData.Npc):Standby(true)
    end)

    print("04 finish")
end

function Quest20011:OnSubFailed2001104(arg1)
    self:NotifyTo("Npc1408", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20011:Start() end
function Quest20011:OnDestroy() end
function Quest20011:OnMainFinished(arg1) end
function Quest20011:OnMainFailed(arg1) end

function Quest20011:OnMainCanceled(arg1)
    print("MainQuest2011 Canceled")
    self:NotifyTo("Npc1408", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    self:SafeDestroyQuestNpc(npcData.Npc, 3)
end

return Quest20011
