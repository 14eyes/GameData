require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20013 = class("Quest20013", QuestActorProxy)
Quest20013.defaultAlias = "Quest20013"
local clientData
local npcData
local n

function Quest20013:OnDataLoaded()
    clientData = self.clientData
    n = 20013
    npcData = clientData.NPCData
end

function Quest20013:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2001301"] = self.OnSubStart2001301
    self.subStartHandlers["2001302"] = self.OnSubStart2001302
    self.subStartHandlers["2001303"] = self.OnSubStart2001303
    self.subStartHandlers["2001304"] = self.OnSubStart2001304
end

function Quest20013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2001301"] = self.OnSubFinish2001301
    self.subFinishHandlers["2001302"] = self.OnSubFinish2001302
    self.subFinishHandlers["2001303"] = self.OnSubFinish2001303
    self.subFinishHandlers["2001304"] = self.OnSubFinish2001304
end

function Quest20013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2001301"] = self.OnSubFailed2001301
    self.subFailedHandlers["2001302"] = self.OnSubFailed2001302
    self.subFailedHandlers["2001303"] = self.OnSubFailed2001303
    self.subFailedHandlers["2001304"] = self.OnSubFailed2001305
end

function Quest20013:PaimonVanish() end

function Quest20013:OnSubStart2001301(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:CallDelay(2, self.DoFreeStyle)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)
    print("01 start")
end

function Quest20013:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
end

function Quest20013:OnSubFinish2001301(arg1)
    print("01 finish")
end

function Quest20013:OnSubFailed2001301(arg1)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20013:OnSubStart2001302(arg1)
    print("02 start")
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:CallDelay(2, self.DoFreeStyle)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20013:OnSubFinish2001302(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300)
    self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20013:OnSubFailed2001302(arg1)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20013:OnSubStart2001303(arg1)
    print("03 start")
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20013:OnSubFinish2001303(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300)
    print("03 finish")
end

function Quest20013:OnSubFailed2001303(arg1)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20013:OnSubStart2001304(arg1)
    print("04 start")
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20013:OnSubFinish2001304(arg1)
    local questNpcActor = self.GetQuestNpcActor(self, npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:Standby()
    questNpcActor:WalkToRouteTask(clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
        self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
    end, function(arg1, arg2)
        self:GetQuestNpcActor(npcData.Npc):Standby(true)
    end)

    print("04 finish")
end

function Quest20013:OnSubFailed2001304(arg1)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20013:Start() end
function Quest20013:OnDestroy() end
function Quest20013:OnMainFinished(arg1) end
function Quest20013:OnMainFailed(arg1) end

function Quest20013:OnMainCanceled(arg1)
    print("MainQuest2013 Canceled")
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    self:SafeDestroyQuestNpc(npcData.Npc, 3)
end

return Quest20013
