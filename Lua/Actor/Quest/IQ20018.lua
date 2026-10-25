require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20018 = class("Quest20018", QuestActorProxy)
Quest20018.defaultAlias = "Quest20018"
local npcData

function Quest20018:OnDataLoaded()
    q20018Cfg = self.clientData
    npcData = q20018Cfg.NPCData
end

function Quest20018:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2001801"] = self.OnSubStart2001801
    self.subStartHandlers["2001802"] = self.OnSubStart2001802
    self.subStartHandlers["2001803"] = self.OnSubStart2001803
    self.subStartHandlers["2001804"] = self.OnSubStart2001804
    self.subStartHandlers["2001805"] = self.OnSubStart2001805
    self.subStartHandlers["2001806"] = self.OnSubStart2001806
    self.subStartHandlers["2001807"] = self.OnSubStart2001807
    self.subStartHandlers["2001808"] = self.OnSubStart2001808
    self.subStartHandlers["2001809"] = self.OnSubStart2001809
end

function Quest20018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2001801"] = self.OnSubFinish2001801
    self.subFinishHandlers["2001802"] = self.OnSubFinish2001802
    self.subFinishHandlers["2001803"] = self.OnSubFinish2001803
    self.subFinishHandlers["2001804"] = self.OnSubFinish2001804
    self.subFinishHandlers["2001805"] = self.OnSubFinish2001805
    self.subFinishHandlers["2001806"] = self.OnSubFinish2001806
    self.subFinishHandlers["2001807"] = self.OnSubFinish2001807
    self.subFinishHandlers["2001808"] = self.OnSubFinish2001808
    self.subFinishHandlers["2001809"] = self.OnSubFinish2001809
end

function Quest20018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2001801"] = self.OnSubFailed2001801
    self.subFailedHandlers["2001802"] = self.OnSubFailed2001802
    self.subFailedHandlers["2001803"] = self.OnSubFailed2001803
    self.subFailedHandlers["2001804"] = self.OnSubFailed2001804
    self.subFailedHandlers["2001805"] = self.OnSubFailed2001805
    self.subFailedHandlers["2001806"] = self.OnSubFailed2001806
    self.subFailedHandlers["2001807"] = self.OnSubFailed2001807
    self.subFailedHandlers["2001808"] = self.OnSubFailed2001808
    self.subFailedHandlers["2001809"] = self.OnSubFailed2001809
end

function Quest20018:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
end

function Quest20018:NPCDisappear(arg1) end

function Quest20018:OnSubStart2001809(arg1)
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
end

function Quest20018:OnSubFinish2001809(arg1) end
function Quest20018:OnSubFailed2001809(arg1) end

function Quest20018:OnSubStart2001801(arg1)
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.HIDESELF, true)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:CallDelay(2, self.DoFreeStyle)
    print("2001801 start")
end

function Quest20018:OnSubFinish2001801(arg1) end
function Quest20018:OnSubFailed2001801(arg1) end

function Quest20018:OnSubStart2001802(arg1)
    print("2001802 start back to standby")
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:EnableInteraction(true)
    self:ClearSpeechBubbleTask()
end

function Quest20018:OnSubFinish2001802(arg1) end
function Quest20018:OnSubFailed2001802(arg1) end

function Quest20018:OnSubStart2001803(arg1)
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20018:OnSubFinish2001803(arg1) end
function Quest20018:OnSubFailed2001803(arg1) end

function Quest20018:OnSubStart2001804(arg1)
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20018:OnSubFinish2001804(arg1) end
function Quest20018:OnSubFailed2001804(arg1) end

function Quest20018:OnSubStart2001805(arg1)
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc)
        questNpcActor:Standby()
        questNpcActor:DoFreeStyle(4190)
        questNpcActor:EnableInteraction(false)
        arg1:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    end)

    print("2001805 start")
end

function Quest20018:OnSubFinish2001805(arg1) end

function Quest20018:OnSubStart2001806(arg1)
    print("2001806 start back to standby")
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:EnableInteraction(true)
    self:ClearSpeechBubbleTask()
end

function Quest20018:OnSubStart2001807(arg1)
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20018:OnSubFinish2001807(arg1) end
function Quest20018:OnSubFailed2001807(arg1) end

function Quest20018:OnSubStart2001808(arg1)
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20018:OnSubFinish2001808(arg1)
    self.GetQuestNpcActor(self, npcData.Npc):WalkToRouteTask(q20018Cfg.RoutePoints, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
        self:NotifyTo("Npc1571", NpcUtil.NpcEventType.STARTDAILY, true)
    end)

    print("2001808 NPC leave")
end

function Quest20018:OnMainCanceled(arg1)
    self:NotifyTo("Npc1571", NpcUtil.NpcEventType.STARTDAILY, true)
    self:GetQuestNpcActor(npcData.Npc):Destroy(false)
end

return Quest20018
