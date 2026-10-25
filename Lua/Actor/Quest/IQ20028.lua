require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20028 = class("Quest20028", QuestActorProxy)
Quest20028.defaultAlias = "Quest20028"
local clientData
local npcData
local n

function Quest20028:OnDataLoaded()
    clientData = self.clientData
    n = 20028
    npcData = clientData.NPCData
end

function Quest20028:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2002801"] = self.OnSubStart2002801
    self.subStartHandlers["2002802"] = self.OnSubStart2002802
    self.subStartHandlers["2002803"] = self.OnSubStart2002803
    self.subStartHandlers["2002804"] = self.OnSubStart2002804
    self.subStartHandlers["2002805"] = self.OnSubStart2002805
    self.subStartHandlers["2002806"] = self.OnSubStart2002806
end

function Quest20028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2002801"] = self.OnSubFinish2002801
    self.subFinishHandlers["2002802"] = self.OnSubFinish2002802
    self.subFinishHandlers["2002803"] = self.OnSubFinish2002803
    self.subFinishHandlers["2002804"] = self.OnSubFinish2002804
    self.subFinishHandlers["2002805"] = self.OnSubFinish2002805
    self.subFinishHandlers["2002806"] = self.OnSubFinish2002806
end

function Quest20028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2002801"] = self.OnSubFailed2002801
    self.subFailedHandlers["2002802"] = self.OnSubFailed2002802
    self.subFailedHandlers["2002803"] = self.OnSubFailed2002803
    self.subFailedHandlers["2002804"] = self.OnSubFailed2002804
    self.subFailedHandlers["2002805"] = self.OnSubFailed2002805
    self.subFailedHandlers["2002806"] = self.OnSubFailed2002806
end

function Quest20028:PaimonVanish() end

function Quest20028:OnSubStart2002801(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190, true)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
    print("01 start")
end

function Quest20028:OnSubFinish2002801(arg1)
    print("01 finish")
end

function Quest20028:OnSubFailed2002801(arg1) end

function Quest20028:OnSubStart2002802(arg1)
    print("02 start")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190, true)
    self:CreateSpeechBubbleTask(npcData.NpcID, 200080501, 2, true, 1, 2)
end

function Quest20028:OnSubFinish2002802(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1300)
    self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20028:OnSubFailed2002802(arg1) end

function Quest20028:OnSubStart2002803(arg1)
    print("03 start")
end

function Quest20028:OnSubFinish2002803(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.Standby(questNpcActor, true)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.WalkToRouteTask(questNpcActor, clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end, function(arg1, arg2)
        questNpcActor:Standby(true)
    end)

    print("03 finish")
end

function Quest20028:OnSubFailed2002803(arg1)
    print("03 fail")
end

function Quest20028:OnSubStart2002804(arg1)
    print("04 start")
end

function Quest20028:OnSubFinish2002804(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    print("04 finish")
end

function Quest20028:OnSubFailed2002804(arg1)
    print("04 fail")
end

function Quest20028:OnSubStart2002805(arg1)
    print("05 start")
end

function Quest20028:OnSubFinish2002805(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story2)
    print("05 finish")
end

function Quest20028:OnSubFailed2002805(arg1)
    print("05 fail")
end

function Quest20028:OnSubStart2002806(arg1)
    print("06 start")
end

function Quest20028:OnSubFinish2002806(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story3)
    print("06 finish")
end

function Quest20028:OnSubFailed2002806(arg1)
    print("06 fail")
end

function Quest20028:Start() end
function Quest20028:OnDestroy() end
function Quest20028:OnMainFinished(arg1) end
function Quest20028:OnMainFailed(arg1) end

function Quest20028:OnMainCanceled(arg1)
    print("MainQuest2028 Canceled")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    self:SafeDestroyQuestNpc(npcData.Npc, 3)
end

return Quest20028
