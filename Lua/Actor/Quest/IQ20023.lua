require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20023 = class("Quest20023", QuestActorProxy)
Quest20023.defaultAlias = "Quest20023"
local clientData
local subIDs
local nPC1Data
local nPC2Data
local nPC3Data

function Quest20023:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    nPC1Data = clientData.NPC1Data
    nPC2Data = clientData.NPC2Data
    nPC3Data = clientData.NPC3Data
end

function Quest20023:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2002301"] = self.OnSubStart2002301
    self.subStartHandlers["2002302"] = self.OnSubStart2002302
    self.subStartHandlers["2002303"] = self.OnSubStart2002303
    self.subStartHandlers["2002304"] = self.OnSubStart2002304
    self.subStartHandlers["2002305"] = self.OnSubStart2002305
    self.subStartHandlers["2002306"] = self.OnSubStart2002306
    self.subStartHandlers["2002307"] = self.OnSubStart2002307
    self.subStartHandlers["2002308"] = self.OnSubStart2002308
end

function Quest20023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2002301"] = self.OnSubFinish2002301
    self.subFinishHandlers["2002302"] = self.OnSubFinish2002302
    self.subFinishHandlers["2002303"] = self.OnSubFinish2002303
    self.subFinishHandlers["2002304"] = self.OnSubFinish2002304
    self.subFinishHandlers["2002305"] = self.OnSubFinish2002305
    self.subFinishHandlers["2002306"] = self.OnSubFinish2002306
    self.subFinishHandlers["2002307"] = self.OnSubFinish2002307
    self.subFinishHandlers["2002308"] = self.OnSubFinish2002308
end

function Quest20023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2002301"] = self.OnSubFailed2002301
    self.subFailedHandlers["2002302"] = self.OnSubFailed2002302
    self.subFailedHandlers["2002303"] = self.OnSubFailed2002303
    self.subFailedHandlers["2002304"] = self.OnSubFailed2002304
    self.subFailedHandlers["2002305"] = self.OnSubFailed2002305
    self.subFailedHandlers["2002306"] = self.OnSubFailed2002306
    self.subFailedHandlers["2002307"] = self.OnSubFailed2002307
    self.subFailedHandlers["2002308"] = self.OnSubFailed2002308
end

function Quest20023:OnSubStart2002301(arg1)
    self:CreateQuestNpc(arg1, nPC3Data.NpcID, 1)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    print("2002301\229\133\168\229\177\128\229\143\152\233\135\143\228\184\186", questVar)
    self:SetQuestVarWithInterval(arg1.QuestConfigId, 1, 1, 2)
    local v = self:GetQuestVar(arg1.QuestConfigId, 1)
    print("2002301\229\133\168\229\177\128\229\143\152\233\135\143\228\184\186", v)
    print("2002301 start")
end

function Quest20023:OnSubFinish2002301(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    print("2002301\229\133\168\229\177\128\229\143\152\233\135\143\228\184\186", questVar)
    print("2002301 finish")
    if questVar == 1 then
        self:CreateQuestNpc(arg1, nPC1Data.NpcID, 2)
        self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
    elseif questVar == 2 then
        self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
        self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
        self:CreateQuestNpc(arg1, nPC1Data.NpcID, 3)
        self:CreateQuestNpc(arg1, nPC2Data.NpcID, 4)
    end
end

function Quest20023:OnSubFailed2002301(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20023:OnSubStart2002302(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    print("2002302\229\133\168\229\177\128\229\143\152\233\135\143\228\184\186", questVar)
    print("2002302 start")
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
    globalActor:UnSpawn("Q20023WinebowlShell")
    self:SpawnGadget(arg1, 70710037, 1)
    self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
end

function Quest20023:OnSubFinish2002302(arg1)
    print("2002302 finish")
end

function Quest20023:OnSubFailed2002302(arg1) end

function Quest20023:OnSubStart2002303(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    print("2002302\229\133\168\229\177\128\229\143\152\233\135\143\228\184\186", questVar)
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
    globalActor:UnSpawn("Q20023WinebowlShell")
    self:SpawnGadget(arg1, 70710037, 1)
    globalActor:UnSpawn("Q20023Winebowl")
    self:SpawnGadget(arg1, 70710028, 2)
    print("2002303 start")
    self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
end

function Quest20023:OnSubFinish2002303(arg1)
    print("2002303 finished")
    self:NarratorOnlyTask(clientData.NarratorData.Story2)
end

function Quest20023:OnSubFailed2002303(arg1)
    print("2002303 fail")
end

function Quest20023:OnSubStart2002304(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    print("2002302\229\133\168\229\177\128\229\143\152\233\135\143\228\184\186", questVar)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
    print("2002304 start")
    self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
end

function Quest20023:OnSubFinish2002304(arg1)
    print("2002304 finish")
    self:NarratorOnlyTask(clientData.NarratorData.Story3)
end

function Quest20023:OnSubFailed2002304(arg1)
    print("2002304 failed")
end

function Quest20023:OnSubStart2002305(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
    print("2002305 start")
    self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
end

function Quest20023:OnSubFinish2002305(arg1)
    print("2002305 finish")
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(nPC1Data.Npc, 1009)
        arg1:DestroyQuestNpcActor(nPC3Data.Npc, 3)
        globalActor:UnSpawn("Q20023Winebowl")
        globalActor:UnSpawn("Q20023WinebowlShell")
    end)
end

function Quest20023:OnSubFailed2002305(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true)
    print("2002305 failed")
end

function Quest20023:OnSubStart2002306(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1401", NpcUtil.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q20023trigger", "Actor/Gadget/Q20023Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Event22600NPCSpawn2").pos, sceneData:GetDummyPoint(3, "Event22600NPCSpawn2").rot, true, false)
    print("2002306 start")
end

function Quest20023:OnSubFailed2002306(arg1)
    print("2002306 fail")
end

function Quest20023:OnSubStart2002307(arg1)
    self.NotifyTo(self, "Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self.NotifyTo(self, "Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
    self.NotifyTo(self, "Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
    self.NotifyTo(self, "Npc1401", NpcUtil.NpcEventType.HIDESELF, true)
    self.CallDelay(self, 16, function()
        if self:GetSubQuestState(2002307) == 2 then
            self:FinishQuestID(false, 2002307)
            print("let 2002307 finish")
        end
    end)

    local questNpcActor = self.GetQuestNpcActor(self, "Npc140301")
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1170)
    local v = self.GetQuestNpcActor(self, "Npc146101")
    v:DoFreeStateTrigger()
    v:DoFreeStyle(1180)
    self.CreateSpeechBubbleTask(self, 140301, 200230801, 1, false, 0, 0)
    self.CallDelay(self, 2.0, function()
        self:ClearSpeechBubbleTask()
    end)

    self.CallDelay(self, 2.5, function()
        self:CreateSpeechBubbleTask(140301, 200230802, 1, false, 0, 0)
    end)

    self.CallDelay(self, 4.5, function()
        self:ClearSpeechBubbleTask()
    end)

    self.CallDelay(self, 5, function()
        self:CreateSpeechBubbleTask(146101, 200230803, 1, false, 0, 0)
    end)

    self.CallDelay(self, 7, function()
        self:ClearSpeechBubbleTask()
    end)

    self.CallDelay(self, 7.5, function()
        self:CreateSpeechBubbleTask(140301, 200230804, 1, false, 0, 0)
    end)

    self.CallDelay(self, 9.5, function()
        self:ClearSpeechBubbleTask()
    end)

    self.CallDelay(self, 10, function()
        self:CreateSpeechBubbleTask(146101, 200230805, 1, false, 0, 0)
    end)

    self.CallDelay(self, 12, function()
        self:ClearSpeechBubbleTask()
    end)

    self.CallDelay(self, 12.5, function()
        self:CreateSpeechBubbleTask(140301, 200230806, 1, false, 0, 0)
    end)

    self.CallDelay(self, 14.5, function()
        self:ClearSpeechBubbleTask()
    end)

    self.CallDelay(self, 15, function()
        self:CreateSpeechBubbleTask(146101, 200230807, 1, false, 0, 0)
    end)

    self.CallDelay(self, 17, function()
        self:ClearSpeechBubbleTask()
    end)

    print("2002307 start")
    self.EnterSceneLookCamera(self, sceneData:GetDummyPoint(3, "Q20023CamTarget").pos, 0, 2, true)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 2, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest20023:OnSubFinish2002307(arg1)
    print("2002307 finish")
end

function Quest20023:OnSubFailed2002307(arg1)
    print("2002307 fail")
end

function Quest20023:OnSubStart2002308(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1401", NpcUtil.NpcEventType.HIDESELF, true)
    print("2002308 start")
end

function Quest20023:OnSubFinish2002308(arg1)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(nPC1Data.Npc, 3)
        arg1:DestroyQuestNpcActor(nPC2Data.Npc, 3)
        arg1:DestroyQuestNpcActor(nPC3Data.Npc, 3)
    end)

    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20023:OnSubFailed2002308(arg1)
    print("2002308 fail")
end

function Quest20023:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20023:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20023:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(nPC1Data.Npc, 3)
    self:DestroyQuestNpcActor(nPC1Data.Npc, 1009)
    self:DestroyQuestNpcActor(nPC2Data.Npc, 3)
    self:DestroyQuestNpcActor(nPC3Data.Npc, 3)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20023:Start() end
function Quest20023:OnDestroy() end
return Quest20023
