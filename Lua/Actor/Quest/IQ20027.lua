require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20027 = class("Quest20027", QuestActorProxy)
Quest20027.defaultAlias = "Quest20027"
local clientData
local npcData
local n

function Quest20027:OnDataLoaded()
    clientData = self.clientData
    n = 20027
    npcData = clientData.NPCData
end

function Quest20027:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2002701"] = self.OnSubStart2002701
    self.subStartHandlers["2002702"] = self.OnSubStart2002702
    self.subStartHandlers["2002703"] = self.OnSubStart2002703
    self.subStartHandlers["2002704"] = self.OnSubStart2002704
    self.subStartHandlers["2002705"] = self.OnSubStart2002705
    self.subStartHandlers["2002706"] = self.OnSubStart2002706
end

function Quest20027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2002701"] = self.OnSubFinish2002701
    self.subFinishHandlers["2002702"] = self.OnSubFinish2002702
    self.subFinishHandlers["2002703"] = self.OnSubFinish2002703
    self.subFinishHandlers["2002704"] = self.OnSubFinish2002704
    self.subFinishHandlers["2002705"] = self.OnSubFinish2002705
    self.subFinishHandlers["2002706"] = self.OnSubFinish2002706
end

function Quest20027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2002701"] = self.OnSubFailed2002701
    self.subFailedHandlers["2002702"] = self.OnSubFailed2002702
    self.subFailedHandlers["2002703"] = self.OnSubFailed2002703
    self.subFailedHandlers["2002704"] = self.OnSubFailed2002704
    self.subFailedHandlers["2002705"] = self.OnSubFailed2002705
    self.subFinishHandlers["2002706"] = self.OnSubFinish2002706
end

function Quest20027:PaimonVanish() end

function Quest20027:OnSubStart2002701(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1070, true)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.HIDESELF, true)
    print("01 start")
end

function Quest20027:OnSubFinish2002701(arg1)
    print("01 finish")
end

function Quest20027:OnSubFailed2002701(arg1)
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20027:OnSubStart2002702(arg1)
    print("02 start")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1070, true)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20027:OnSubFinish2002702(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(5010, true)
    self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20027:OnSubFailed2002702(arg1)
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20027:OnSubStart2002703(arg1)
    print("03 start")
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20027:OnSubFinish2002703(arg1)
    local questNpcActor = self.GetQuestNpcActor(self, npcData.Npc)
    questNpcActor.Standby(questNpcActor, true)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.WalkToRouteTask(questNpcActor, clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
        self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true)
    end, function(arg1, arg2)
        questNpcActor:Standby(true)
    end)

    print("03 finish")
end

function Quest20027:OnSubFailed2002703(arg1)
    print("03 fail")
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20027:OnSubStart2002704(arg1)
    print("04 start")
end

function Quest20027:OnSubFinish2002704(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true)
    print("04 finish")
end

function Quest20027:OnSubFailed2002704(arg1)
    print("04 fail")
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20027:OnSubStart2002705(arg1)
    print("05 start")
end

function Quest20027:OnSubFinish2002705(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story2)
    print("05 finish")
end

function Quest20027:OnSubFailed2002705(arg1)
    print("05 fail")
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20027:OnSubStart2002706(arg1)
    print("06 start")
end

function Quest20027:OnSubFinish2002706(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story3)
    print("06 finish")
end

function Quest20027:OnSubFailed2002706(arg1)
    print("06 fail")
end

function Quest20027:Start() end
function Quest20027:OnDestroy() end
function Quest20027:OnMainFinished(arg1) end
function Quest20027:OnMainFailed(arg1) end

function Quest20027:OnMainCanceled(arg1)
    print("MainQuest2027 Canceled")
    self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    self:SafeDestroyQuestNpc(npcData.Npc, 3)
end

return Quest20027
