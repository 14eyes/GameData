require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20012 = class("Quest20012", QuestActorProxy)
Quest20012.defaultAlias = "Quest20012"
local clientData
local npcData
local n

function Quest20012:OnDataLoaded()
    clientData = self.clientData
    n = 20012
    npcData = clientData.NPCData
end

function Quest20012:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2001201"] = self.OnSubStart2001201
    self.subStartHandlers["2001202"] = self.OnSubStart2001202
    self.subStartHandlers["2001203"] = self.OnSubStart2001203
    self.subStartHandlers["2001204"] = self.OnSubStart2001204
end

function Quest20012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2001201"] = self.OnSubFinish2001201
    self.subFinishHandlers["2001202"] = self.OnSubFinish2001202
    self.subFinishHandlers["2001203"] = self.OnSubFinish2001203
    self.subFinishHandlers["2001204"] = self.OnSubFinish2001204
end

function Quest20012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2001201"] = self.OnSubFailed2001201
    self.subFailedHandlers["2001202"] = self.OnSubFailed2001202
    self.subFailedHandlers["2001203"] = self.OnSubFailed2001203
    self.subFailedHandlers["2001204"] = self.OnSubFailed2001205
end

function Quest20012:PaimonVanish() end

function Quest20012:OnSubStart2001201(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    self:NotifyTo("Npc1570", NpcUtil.NpcEventType.HIDESELF, true)
    print("01 start")
end

function Quest20012:OnSubFinish2001201(arg1)
    print("01 finish")
end

function Quest20012:OnSubFailed2001201(arg1)
    self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20012:OnSubStart2001202(arg1)
    print("02 start")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    self:NotifyTo("Npc1570", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20012:OnSubFinish2001202(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    self:ClearSpeechBubbleTask()
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1300)
    print("02 finish")
end

function Quest20012:OnSubFailed2001202(arg1)
    self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20012:OnSubStart2001203(arg1)
    print("03 start")
    self:NotifyTo("Npc1570", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20012:OnSubFinish2001203(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1300)
    print("03 finish")
end

function Quest20012:OnSubFailed2001203(arg1)
    self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20012:OnSubStart2001204(arg1)
    print("04 start")
    self:NotifyTo("Npc1570", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20012:OnSubFinish2001204(arg1)
    local questNpcActor = self.GetQuestNpcActor(self, npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:WalkToRouteTask(clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
        self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true)
    end, function(arg1, arg2)
        self:GetQuestNpcActor(npcData.Npc):Standby(true)
    end)

    print("04 finish")
end

function Quest20012:OnSubFailed2001204(arg1)
    self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20012:Start() end
function Quest20012:OnDestroy() end
function Quest20012:OnMainFinished(arg1) end
function Quest20012:OnMainFailed(arg1) end

function Quest20012:OnMainCanceled(arg1)
    print("MainQuest2012 Canceled")
    self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    self:SafeDestroyQuestNpc(npcData.Npc, 3)
end

return Quest20012
