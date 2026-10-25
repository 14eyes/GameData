require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20008 = class("Quest20008", QuestActorProxy)
Quest20008.defaultAlias = "Quest20008"
local clientData
local npcData
local n

function Quest20008:OnDataLoaded()
    clientData = self.clientData
    n = 20008
    npcData = clientData.NPCData
end

function Quest20008:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2000801"] = self.OnSubStart2000801
    self.subStartHandlers["2000802"] = self.OnSubStart2000802
    self.subStartHandlers["2000803"] = self.OnSubStart2000803
    self.subStartHandlers["2000804"] = self.OnSubStart2000804
    self.subStartHandlers["2000805"] = self.OnSubStart2000805
    self.subStartHandlers["2000806"] = self.OnSubStart2000806
end

function Quest20008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2000801"] = self.OnSubFinish2000801
    self.subFinishHandlers["2000802"] = self.OnSubFinish2000802
    self.subFinishHandlers["2000803"] = self.OnSubFinish2000803
    self.subFinishHandlers["2000804"] = self.OnSubFinish2000804
    self.subFinishHandlers["2000805"] = self.OnSubFinish2000805
    self.subFinishHandlers["2000806"] = self.OnSubFinish2000806
end

function Quest20008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2000801"] = self.OnSubFailed2000801
    self.subFailedHandlers["2000802"] = self.OnSubFailed2000802
    self.subFailedHandlers["2000803"] = self.OnSubFailed2000803
    self.subFailedHandlers["2000804"] = self.OnSubFailed2000804
    self.subFailedHandlers["2000805"] = self.OnSubFailed2000805
    self.subFailedHandlers["2000806"] = self.OnSubFailed2000806
end

function Quest20008:PaimonVanish() end

function Quest20008:OnSubStart2000801(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    questNpcActor:Standby()
    self:CallDelay(2, self.DoFreeStyle)
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
    print("01 start")
end

function Quest20008:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    self:GetQuestNpcActor(npcData.Npc):DoFreeStyle(1070)
end

function Quest20008:OnSubFinish2000801(arg1)
    print("01 finish")
end

function Quest20008:OnSubFailed2000801(arg1)
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20008:OnSubStart2000802(arg1)
    print("02 start")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    questNpcActor:Standby()
    self:CallDelay(2, self.DoFreeStyle)
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000802(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(5010)
    self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20008:OnSubFailed2000802(arg1)
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20008:OnSubStart2000803(arg1)
    print("03 start")
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000803(arg1)
    local questNpcActor = self.GetQuestNpcActor(self, npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:WalkToRouteTask(clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end, function(arg1, arg2)
        self:GetQuestNpcActor(npcData.Npc):Standby(true)
    end)

    print("03 finish")
end

function Quest20008:OnSubFailed2000803(arg1)
    print("03 fail")
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20008:OnSubStart2000804(arg1)
    print("04 start")
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000804(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    print("04 finish")
end

function Quest20008:OnSubFailed2000804(arg1)
    print("04 fail")
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20008:OnSubStart2000805(arg1)
    print("05 start")
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000805(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story2)
    print("05 finish")
end

function Quest20008:OnSubFailed2000805(arg1)
    print("05 fail")
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20008:OnSubStart2000806(arg1)
    print("05 start")
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000806(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story3)
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true)
    print("05 finish")
end

function Quest20008:OnSubFailed2000806(arg1)
    print("05 fail")
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20008:Start() end
function Quest20008:OnDestroy() end
function Quest20008:OnMainFinished(arg1) end
function Quest20008:OnMainFailed(arg1) end

function Quest20008:OnMainCanceled(arg1)
    print("MainQuest2008 Canceled")
    self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    self:SafeDestroyQuestNpc(npcData.Npc, 3)
end

return Quest20008
