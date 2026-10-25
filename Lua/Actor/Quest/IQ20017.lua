require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20017 = class("Quest20017", QuestActorProxy)
Quest20017.defaultAlias = "Quest20017"
local npcData

function Quest20017:OnDataLoaded()
    q20017Cfg = self.clientData
    npcData = q20017Cfg.NPCData
end

function Quest20017:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2001701"] = self.OnSubStart2001701
    self.subStartHandlers["2001702"] = self.OnSubStart2001702
    self.subStartHandlers["2001703"] = self.OnSubStart2001703
    self.subStartHandlers["2001704"] = self.OnSubStart2001704
    self.subStartHandlers["2001705"] = self.OnSubStart2001705
    self.subStartHandlers["2001706"] = self.OnSubStart2001706
    self.subStartHandlers["2001707"] = self.OnSubStart2001707
    self.subStartHandlers["2001708"] = self.OnSubStart2001708
    self.subStartHandlers["2001709"] = self.OnSubStart2001709
end

function Quest20017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2001701"] = self.OnSubFinish2001701
    self.subFinishHandlers["2001702"] = self.OnSubFinish2001702
    self.subFinishHandlers["2001703"] = self.OnSubFinish2001703
    self.subFinishHandlers["2001704"] = self.OnSubFinish2001704
    self.subFinishHandlers["2001705"] = self.OnSubFinish2001705
    self.subFinishHandlers["2001706"] = self.OnSubFinish2001706
    self.subFinishHandlers["2001707"] = self.OnSubFinish2001707
    self.subFinishHandlers["2001708"] = self.OnSubFinish2001708
    self.subFinishHandlers["2001709"] = self.OnSubFinish2001709
end

function Quest20017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2001701"] = self.OnSubFailed2001701
    self.subFailedHandlers["2001702"] = self.OnSubFailed2001702
    self.subFailedHandlers["2001703"] = self.OnSubFailed2001703
    self.subFailedHandlers["2001704"] = self.OnSubFailed2001704
    self.subFailedHandlers["2001705"] = self.OnSubFailed2001705
    self.subFailedHandlers["2001706"] = self.OnSubFailed2001706
    self.subFailedHandlers["2001707"] = self.OnSubFailed2001707
    self.subFailedHandlers["2001708"] = self.OnSubFailed2001708
    self.subFailedHandlers["2001709"] = self.OnSubFailed2001709
end

function Quest20017:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
end

function Quest20017:NPCDisappear(arg1) end

function Quest20017:OnSubStart2001709(arg1)
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
end

function Quest20017:OnSubFinish2001709(arg1) end
function Quest20017:OnSubFailed2001709(arg1) end

function Quest20017:OnSubStart2001701(arg1)
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.HIDESELF, true)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:CallDelay(2, self.DoFreeStyle)
    print("2001701 start")
end

function Quest20017:OnSubFinish2001701(arg1) end
function Quest20017:OnSubFailed2001701(arg1) end

function Quest20017:OnSubStart2001702(arg1)
    print("2001702 start back to standby")
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:EnableInteraction(true)
    self:ClearSpeechBubbleTask()
end

function Quest20017:OnSubFinish2001702(arg1) end
function Quest20017:OnSubFailed2001702(arg1) end

function Quest20017:OnSubStart2001703(arg1)
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20017:OnSubFinish2001703(arg1) end
function Quest20017:OnSubFailed2001703(arg1) end

function Quest20017:OnSubStart2001704(arg1)
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20017:OnSubFinish2001704(arg1) end
function Quest20017:OnSubFailed2001704(arg1) end

function Quest20017:OnSubStart2001705(arg1)
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc)
        questNpcActor:Standby()
        questNpcActor:DoFreeStyle(4190)
        questNpcActor:EnableInteraction(false)
        arg1:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    end)

    print("2001705 start")
end

function Quest20017:OnSubFinish2001705(arg1) end

function Quest20017:OnSubStart2001706(arg1)
    print("2001706 start back to standby")
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:EnableInteraction(true)
    self:ClearSpeechBubbleTask()
end

function Quest20017:OnSubStart2001707(arg1)
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20017:OnSubFinish2001707(arg1) end
function Quest20017:OnSubFailed2001707(arg1) end

function Quest20017:OnSubStart2001708(arg1)
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20017:OnSubFinish2001708(arg1)
    self.GetQuestNpcActor(self, npcData.Npc):WalkToRouteTask(q20017Cfg.RoutePoints, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
        self:NotifyTo("Npc1549", NpcUtil.NpcEventType.STARTDAILY, true)
    end)

    print("2001708 NPC leave")
end

function Quest20017:OnMainCanceled(arg1)
    self:NotifyTo("Npc1549", NpcUtil.NpcEventType.STARTDAILY, true)
    self:GetQuestNpcActor(npcData.Npc):Destroy(false)
end

return Quest20017
