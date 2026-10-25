require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20049 = class("Quest20049", QuestActorProxy)
Quest20049.defaultAlias = "Quest20049"
local clientData
local subIDs
local nPC1Data
local nPC2Data

function Quest20049:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    nPC1Data = clientData.NPC1Data
    nPC2Data = clientData.NPC2Data
end

function Quest20049:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2004901"] = self.OnSubStart2004901
    self.subStartHandlers["2004902"] = self.OnSubStart2004902
    self.subStartHandlers["2004903"] = self.OnSubStart2004903
    self.subStartHandlers["2004904"] = self.OnSubStart2004904
    self.subStartHandlers["2004905"] = self.OnSubStart2004905
end

function Quest20049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2004901"] = self.OnSubFinish2004901
    self.subFinishHandlers["2004902"] = self.OnSubFinish2004902
    self.subFinishHandlers["2004903"] = self.OnSubFinish2004903
    self.subFinishHandlers["2004904"] = self.OnSubFinish2004904
    self.subFinishHandlers["2004905"] = self.OnSubFinish2004905
end

function Quest20049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2004901"] = self.OnSubFailed2004901
    self.subFailedHandlers["2004902"] = self.OnSubFailed2004902
    self.subFailedHandlers["2004903"] = self.OnSubFailed2004903
    self.subFailedHandlers["2004904"] = self.OnSubFailed2004904
    self.subFailedHandlers["2004905"] = self.OnSubFailed2004905
end

function Quest20049:OnSubStart2004901(arg1)
    self:CreateQuestNpc(arg1, nPC1Data.NpcID, 1)
    self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    print("2004901 start")
end

function Quest20049:OnSubFinish2004901(arg1)
    print("2004901 finish")
end

function Quest20049:OnSubFailed2004901(arg1) end

function Quest20049:OnSubStart2004902(arg1)
    self:CreateQuestNpc(arg1, nPC2Data.NpcID, 1)
    self:GetQuestNpcActor(nPC2Data.Npc):Standby()
    self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
    print("2004902 start")
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20049:OnSubFinish2004902(arg1)
    print("2004902 finish")
    self:CallDelay(5, function(arg1)
        arg1:NarratorOnlyTask(clientData.NarratorData.Story1)
    end)
end

function Quest20049:OnSubFailed2004902(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20049:OnSubStart2004903(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
    print("2004903 start")
end

function Quest20049:OnSubFinish2004903(arg1)
    print("2004903 finished")
end

function Quest20049:OnSubFailed2004903(arg1)
    print("2004903 fail")
end

function Quest20049:OnSubStart2004904(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
    print("2004904 start")
end

function Quest20049:OnSubFinish2004904(arg1)
    print("2004904 finish")
    self:CallDelay(5, function(arg1)
        arg1:NarratorOnlyTask(clientData.NarratorData.Story2)
    end)
end

function Quest20049:OnSubFailed2004904(arg1)
    print("2004905 failed")
end

function Quest20049:OnSubStart2004905(arg1)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:GetQuestNpcActor(nPC1Data.Npc):SitOnChair(8010)
    print("2004904 start")
end

function Quest20049:OnSubFinish2004905(arg1)
    print("2004905 finish")
    self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:ShowBlackScreen(0.5, 10, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(nPC1Data.Npc, 1009)
        arg1:DestroyQuestNpcActor(nPC2Data.Npc, 3)
    end)

    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20049:OnSubFailed2004905(arg1)
    print("2004905 failed")
end

function Quest20049:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20049:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20049:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(nPC1Data.Npc, 1009)
    self:DestroyQuestNpcActor(nPC2Data.Npc, 3)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1463", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20049:Start() end
function Quest20049:OnDestroy() end
return Quest20049
