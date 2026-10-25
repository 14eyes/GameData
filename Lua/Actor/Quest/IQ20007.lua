require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20007 = class("Quest20007", QuestActorProxy)
Quest20007.defaultAlias = "Quest20007"
local npcData

function Quest20007:OnDataLoaded()
    q20007Cfg = self.clientData
    npcData = q20007Cfg.NPCData
end

function Quest20007:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2000701"] = self.OnSubStart2000701
    self.subStartHandlers["2000702"] = self.OnSubStart2000702
    self.subStartHandlers["2000703"] = self.OnSubStart2000703
    self.subStartHandlers["2000704"] = self.OnSubStart2000704
    self.subStartHandlers["2000705"] = self.OnSubStart2000705
    self.subStartHandlers["2000706"] = self.OnSubStart2000706
    self.subStartHandlers["2000707"] = self.OnSubStart2000707
    self.subStartHandlers["2000708"] = self.OnSubStart2000708
    self.subStartHandlers["2000709"] = self.OnSubStart2000709
end

function Quest20007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2000701"] = self.OnSubFinish2000701
    self.subFinishHandlers["2000702"] = self.OnSubFinish2000702
    self.subFinishHandlers["2000703"] = self.OnSubFinish2000703
    self.subFinishHandlers["2000704"] = self.OnSubFinish2000704
    self.subFinishHandlers["2000705"] = self.OnSubFinish2000705
    self.subFinishHandlers["2000706"] = self.OnSubFinish2000706
    self.subFinishHandlers["2000707"] = self.OnSubFinish2000707
    self.subFinishHandlers["2000708"] = self.OnSubFinish2000708
    self.subFinishHandlers["2000709"] = self.OnSubFinish2000709
end

function Quest20007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2000701"] = self.OnSubFailed2000701
    self.subFailedHandlers["2000702"] = self.OnSubFailed2000702
    self.subFailedHandlers["2000703"] = self.OnSubFailed2000703
    self.subFailedHandlers["2000704"] = self.OnSubFailed2000704
    self.subFailedHandlers["2000705"] = self.OnSubFailed2000705
    self.subFailedHandlers["2000706"] = self.OnSubFailed2000706
    self.subFailedHandlers["2000707"] = self.OnSubFailed2000707
    self.subFailedHandlers["2000708"] = self.OnSubFailed2000708
    self.subFailedHandlers["2000709"] = self.OnSubFailed2000709
end

function Quest20007:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
end

function Quest20007:NPCDisappear(arg1) end

function Quest20007:OnSubStart2000709(arg1)
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
end

function Quest20007:OnSubFinish2000709(arg1) end
function Quest20007:OnSubFailed2000709(arg1) end

function Quest20007:OnSubStart2000701(arg1)
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.HIDESELF, true)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:CallDelay(2, self.DoFreeStyle)
    print("2000701 start")
end

function Quest20007:OnSubFinish2000701(arg1) end
function Quest20007:OnSubFailed2000701(arg1) end

function Quest20007:OnSubStart2000702(arg1)
    print("2000702 start back to standby")
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:EnableInteraction(true)
    self:ClearSpeechBubbleTask()
end

function Quest20007:OnSubFinish2000702(arg1) end
function Quest20007:OnSubFailed2000702(arg1) end

function Quest20007:OnSubStart2000703(arg1)
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20007:OnSubFinish2000703(arg1) end
function Quest20007:OnSubFailed2000703(arg1) end

function Quest20007:OnSubStart2000704(arg1)
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20007:OnSubFinish2000704(arg1) end
function Quest20007:OnSubFailed2000704(arg1) end

function Quest20007:OnSubStart2000705(arg1)
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc)
        questNpcActor:Standby()
        questNpcActor:DoFreeStyle(4190)
        questNpcActor:EnableInteraction(false)
        arg1:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    end)

    print("2000705 start")
end

function Quest20007:OnSubFinish2000705(arg1) end

function Quest20007:OnSubStart2000706(arg1)
    print("2000706 start back to standby")
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:EnableInteraction(true)
    self:ClearSpeechBubbleTask()
end

function Quest20007:OnSubStart2000707(arg1)
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20007:OnSubFinish2000707(arg1) end
function Quest20007:OnSubFailed2000707(arg1) end

function Quest20007:OnSubStart2000708(arg1)
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20007:OnSubFinish2000708(arg1)
    self.GetQuestNpcActor(self, npcData.Npc):WalkToRouteTask(q20007Cfg.RoutePoints, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
        self:NotifyTo("Npc1539", NpcUtil.NpcEventType.STARTDAILY, true)
    end)

    print("2000708 NPC leave")
end

function Quest20007:OnMainCanceled(arg1)
    self:NotifyTo("Npc1539", NpcUtil.NpcEventType.STARTDAILY, true)
    self:GetQuestNpcActor(npcData.Npc):Destroy(false)
end

function Quest20007:OnDestroy() end
return Quest20007
