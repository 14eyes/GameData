require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22107 = class("Quest22107", QuestActorProxy)
Quest22107.defaultAlias = "Quest22107"
local clientData
local n
local actorAlias
local subIDs
local actors
local datas
local npcData
local npcData1
local v = 0
local questVar = 0
local questVar2 = 0
local questVar3 = 0
local questVar4 = 0
local questVar5 = 0

function Quest22107:OnDataLoaded()
    clientData = self.clientData
    n = 22107
    npcData = clientData.NPCData
    npcData1 = clientData.NPCData1
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest22107:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2210701"] = self.OnSubStart2210701,
        ["2210702"] = self.OnSubStart2210702,
        ["2210703"] = self.OnSubStart2210703,
        ["2210704"] = self.OnSubStart2210704,
        ["2210705"] = self.OnSubStart2210705,
        ["2210706"] = self.OnSubStart2210706,
        ["2210707"] = self.OnSubStart2210707,
        ["2210708"] = self.OnSubStart2210708,
        ["2210709"] = self.OnSubStart2210709,
        ["2210710"] = self.OnSubStart2210710,
        ["2210711"] = self.OnSubStart2210711,
        ["2210712"] = self.OnSubStart2210712,
        ["2210713"] = self.OnSubStart2210713,
        ["2210714"] = self.OnSubStart2210714,
        ["2210715"] = self.OnSubStart2210715,
        ["2210716"] = self.OnSubStart2210716,
        ["2210717"] = self.OnSubStart2210717,
        ["2210718"] = self.OnSubStart2210718,
        ["2210719"] = self.OnSubStart2210719,
        ["2210720"] = self.OnSubStart2210720,
        ["2210721"] = self.OnSubStart2210721
    }
end

function Quest22107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2210701"] = self.OnSubFinish2210701,
        ["2210702"] = self.OnSubFinish2210702,
        ["2210703"] = self.OnSubFinish2210703,
        ["2210704"] = self.OnSubFinish2210704,
        ["2210705"] = self.OnSubFinish2210705,
        ["2210706"] = self.OnSubFinish2210706,
        ["2210707"] = self.OnSubFinish2210707,
        ["2210708"] = self.OnSubFinish2210708,
        ["2210709"] = self.OnSubFinish2210709,
        ["2210710"] = self.OnSubFinish2210710,
        ["2210711"] = self.OnSubFinish2210711,
        ["2210712"] = self.OnSubFinish2210712,
        ["2210713"] = self.OnSubFinish2210713,
        ["2210714"] = self.OnSubFinish2210714,
        ["2210715"] = self.OnSubFinish2210715,
        ["2210716"] = self.OnSubFinish2210716,
        ["2210717"] = self.OnSubFinish2210717,
        ["2210718"] = self.OnSubFinish2210718,
        ["2210719"] = self.OnSubFinish2210719,
        ["2210720"] = self.OnSubFinish2210720,
        ["2210721"] = self.OnSubFinish2210721
    }
end

function Quest22107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2210701"] = self.OnSubFailed2210701,
        ["2210702"] = self.OnSubFailed2210702,
        ["2210703"] = self.OnSubFailed2210703,
        ["2210704"] = self.OnSubFailed2210704,
        ["2210705"] = self.OnSubFailed2210705,
        ["2210706"] = self.OnSubFailed2210706,
        ["2210707"] = self.OnSubFailed2210707,
        ["2210708"] = self.OnSubFailed2210708,
        ["2210709"] = self.OnSubFailed2210709,
        ["2210710"] = self.OnSubFailed2210710,
        ["2210711"] = self.OnSubFailed2210711,
        ["2210712"] = self.OnSubFailed2210712,
        ["2210713"] = self.OnSubFailed2210713,
        ["2210714"] = self.OnSubFailed2210714,
        ["2210715"] = self.OnSubFailed2210715,
        ["2210716"] = self.OnSubFailed2210716,
        ["2210717"] = self.OnSubFailed2210717,
        ["2210718"] = self.OnSubFailed2210718,
        ["2210719"] = self.OnSubFailed2210719,
        ["2210720"] = self.OnSubFailed2210720,
        ["2210721"] = self.OnSubFailed2210721
    }
end

function Quest22107:InvokeOnInteraction(arg1)
    if arg1 == 1 then
    end

    if arg1 == 2 then
    end

    if arg1 == 3 then
    end

    if arg1 == 4 then
    end

    if arg1 == 5 then
    end

    print("talkA is " .. self:GetQuestVar(2210715, 0))
    print("talkB is " .. self:GetQuestVar(2210715, 1))
    print("talkC is " .. self:GetQuestVar(2210715, 2))
    print("talkD is " .. self:GetQuestVar(2210715, 3))
    print("talkE is " .. self:GetQuestVar(2210715, 4))
end

function Quest22107:Start()
    print("Start")
end

function Quest22107:OnDestroy()
    print("OnDestroy")
end

function Quest22107:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22107:OnSubStart2210701(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210701")
end

function Quest22107:OnSubFinish2210701(arg1)
    questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    questVar2 = self:GetQuestVar(arg1.QuestConfigId, 1)
    questVar3 = self:GetQuestVar(arg1.QuestConfigId, 2)
    questVar4 = self:GetQuestVar(arg1.QuestConfigId, 3)
    questVar5 = self:GetQuestVar(arg1.QuestConfigId, 4)
    print("OnSubFinish2210701")
    print("01A is " .. self:GetQuestVar(arg1.QuestConfigId, 0))
end

function Quest22107:OnSubFailed2210701(arg1)
    print("OnSubFailed2210701")
end

function Quest22107:OnSubStart2210702(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210702")
end

function Quest22107:OnSubFinish2210702(arg1)
    print("OnSubFinish2210702")
end

function Quest22107:OnSubFailed2210702(arg1)
    print("OnSubFailed2210702")
end

function Quest22107:OnSubStart2210703(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcData1.NpcID)
    self:GetQuestNpcActor(npcData1.Npc):Standby()
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateSpeechBubbleTask(209201, 221072001, 5, true, 1, 2)
    print("OnSubStart2210703")
end

function Quest22107:OnSubFinish2210703(arg1)
    print("OnSubFinish2210703")
end

function Quest22107:OnSubFailed2210703(arg1)
    print("OnSubFailed2210703")
end

function Quest22107:OnSubStart2210704(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210704")
end

function Quest22107:OnSubFinish2210704(arg1)
    print("OnSubFinish2210704")
end

function Quest22107:OnSubFailed2210704(arg1)
    print("OnSubFailed2210704")
end

function Quest22107:OnSubStart2210705(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210705")
end

function Quest22107:OnSubFinish2210705(arg1)
    print("OnSubFinish2210705")
end

function Quest22107:OnSubFailed2210705(arg1)
    print("OnSubFailed2210705")
end

function Quest22107:OnSubStart2210706(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210706")
end

function Quest22107:OnSubFinish2210706(arg1)
    print("OnSubFinish2210706")
end

function Quest22107:OnSubFailed2210706(arg1)
    print("OnSubFailed2210706")
end

function Quest22107:OnSubStart2210707(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210707")
end

function Quest22107:OnSubFinish2210707(arg1)
    if self:GetQuestVar(arg1.QuestConfigId, 0) == 1 then
        self:SetQuestVar(arg1.QuestConfigId, 0, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 2 then
        self:SetQuestVar(arg1.QuestConfigId, 1, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 3 then
        self:SetQuestVar(arg1.QuestConfigId, 2, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 4 then
        self:SetQuestVar(arg1.QuestConfigId, 3, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 5 then
        self:SetQuestVar(arg1.QuestConfigId, 4, 1)
    end

    print("07A is " .. self:GetQuestVar(arg1.QuestConfigId, 0))
    print("07B is " .. self:GetQuestVar(arg1.QuestConfigId, 1))
    print("07C is " .. self:GetQuestVar(arg1.QuestConfigId, 2))
    print("07D is " .. self:GetQuestVar(arg1.QuestConfigId, 3))
    print("07E is " .. self:GetQuestVar(arg1.QuestConfigId, 4))
    questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    if questVar == 1 then
        v = 1
    end

    local tbl = {}
    local n = 2
    local n2 = 3
    local n3 = 4
    local n4 = 5
    tbl[1] = 1
    tbl[2] = n
    tbl[3] = n2
    tbl[4] = n3
    tbl[5] = n4
    local v2 = tbl
    self:RemoveTableElement(v2, questVar)
    math.randomseed(os.time())
    local v3 = v2[math.random(1, 4)]
    self:SetQuestVar(arg1.QuestConfigId, 0, v3)
    if self:GetQuestVar(arg1.QuestConfigId, 0) == 1 then
        self:SetQuestVar(arg1.QuestConfigId, 0, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 2 then
        self:SetQuestVar(arg1.QuestConfigId, 1, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 3 then
        self:SetQuestVar(arg1.QuestConfigId, 2, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 4 then
        self:SetQuestVar(arg1.QuestConfigId, 3, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 5 then
        self:SetQuestVar(arg1.QuestConfigId, 4, 1)
    end

    print("07A is " .. self:GetQuestVar(arg1.QuestConfigId, 0))
    print("OnSubFinish2210707")
end

function Quest22107:OnSubFailed2210707(arg1)
    print("OnSubFailed2210707")
end

function Quest22107:OnSubStart2210708(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210708")
end

function Quest22107:OnSubFinish2210708(arg1)
    print("OnSubFinish2210708")
end

function Quest22107:OnSubFailed2210708(arg1)
    print("OnSubFailed2210708")
end

function Quest22107:OnSubStart2210709(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    if self:GetQuestVar(arg1.QuestConfigId, 0) == 1 then
        self:SetQuestVar(arg1.QuestConfigId, 0, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 2 then
        self:SetQuestVar(arg1.QuestConfigId, 1, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 3 then
        self:SetQuestVar(arg1.QuestConfigId, 2, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 4 then
        self:SetQuestVar(arg1.QuestConfigId, 3, 1)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 5 then
        self:SetQuestVar(arg1.QuestConfigId, 4, 1)
    end

    if v == 1 then
        self:SetQuestVar(arg1.QuestConfigId, 0, 1)
    end

    print("09A is " .. self:GetQuestVar(arg1.QuestConfigId, 0))
    print("09B is " .. self:GetQuestVar(arg1.QuestConfigId, 1))
    print("09C is " .. self:GetQuestVar(arg1.QuestConfigId, 2))
    print("09D is " .. self:GetQuestVar(arg1.QuestConfigId, 3))
    print("09E is " .. self:GetQuestVar(arg1.QuestConfigId, 4))
    print("OnSubStart2210709")
end

function Quest22107:OnSubFinish2210709(arg1)
    print("OnSubFinish2210709")
end

function Quest22107:OnSubFailed2210709(arg1)
    print("OnSubFailed2210709")
end

function Quest22107:OnSubStart2210710(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210710")
end

function Quest22107:OnSubFinish2210710(arg1)
    print("OnSubFinish2210710")
end

function Quest22107:OnSubFailed2210710(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 100)
    print("OnSubFailed2210710")
end

function Quest22107:OnSubStart2210711(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210711")
end

function Quest22107:OnSubFinish2210711(arg1)
    print("OnSubFinish2210711")
end

function Quest22107:OnSubFailed2210711(arg1)
    print("OnSubFailed2210711")
end

function Quest22107:OnSubStart2210712(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210712")
end

function Quest22107:OnSubFinish2210712(arg1)
    print("OnSubFinish2210712")
end

function Quest22107:OnSubFailed2210712(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 2, 100)
    print("12failA is " .. self:GetQuestVar(arg1.QuestConfigId, 0))
    print("12failB is " .. self:GetQuestVar(arg1.QuestConfigId, 1))
    print("12failC is " .. self:GetQuestVar(arg1.QuestConfigId, 2))
    print("12failD is " .. self:GetQuestVar(arg1.QuestConfigId, 3))
    print("12failE is " .. self:GetQuestVar(arg1.QuestConfigId, 4))
    print("OnSubFailed2210712")
end

function Quest22107:OnSubStart2210713(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210713")
end

function Quest22107:OnSubFinish2210713(arg1)
    print("OnSubFinish2210713")
end

function Quest22107:OnSubFailed2210713(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 3, 100)
    print("13failA is " .. self:GetQuestVar(arg1.QuestConfigId, 0))
    print("13failB is " .. self:GetQuestVar(arg1.QuestConfigId, 1))
    print("13failC is " .. self:GetQuestVar(arg1.QuestConfigId, 2))
    print("13failD is " .. self:GetQuestVar(arg1.QuestConfigId, 3))
    print("13failE is " .. self:GetQuestVar(arg1.QuestConfigId, 4))
    print("OnSubFailed2210713")
end

function Quest22107:OnSubStart2210714(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210714")
end

function Quest22107:OnSubFinish2210714(arg1)
    print("OnSubFinish2210714")
end

function Quest22107:OnSubFailed2210714(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 4, 100)
    print("14failA is " .. self:GetQuestVar(arg1.QuestConfigId, 0))
    print("14failB is " .. self:GetQuestVar(arg1.QuestConfigId, 1))
    print("14failC is " .. self:GetQuestVar(arg1.QuestConfigId, 2))
    print("14failD is " .. self:GetQuestVar(arg1.QuestConfigId, 3))
    print("14failE is " .. self:GetQuestVar(arg1.QuestConfigId, 4))
    print("OnSubFailed2210714")
end

function Quest22107:OnSubStart2210715(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210715")
end

function Quest22107:OnSubFinish2210715(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    print("OnSubFinish2210715")
end

function Quest22107:OnSubFailed2210715(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2210715")
end

function Quest22107:OnSubStart2210716(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210716")
end

function Quest22107:OnSubFinish2210716(arg1)
    print("OnSubFinish2210716")
end

function Quest22107:OnSubFailed2210716(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2210716")
end

function Quest22107:OnSubStart2210717(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210717")
end

function Quest22107:OnSubFinish2210717(arg1)
    print("OnSubFinish2210717")
end

function Quest22107:OnSubFailed2210717(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2210717")
end

function Quest22107:OnSubStart2210718(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210718")
end

function Quest22107:OnSubFinish2210718(arg1)
    print("OnSubFinish2210718")
end

function Quest22107:OnSubFailed2210718(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2210718")
end

function Quest22107:OnSubStart2210719(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210719")
end

function Quest22107:OnSubFinish2210719(arg1)
    print("OnSubFinish2210719")
end

function Quest22107:OnSubFailed2210719(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2210719")
end

function Quest22107:OnSubStart2210720(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210720")
end

function Quest22107:OnSubFinish2210720(arg1)
    print("OnSubFinish2210720")
end

function Quest22107:OnSubFailed2210720(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2210720")
end

function Quest22107:OnSubStart2210721(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2210721")
end

function Quest22107:OnSubFinish2210721(arg1)
    print("OnSubFinish2210721")
end

function Quest22107:OnSubFailed2210721(arg1)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2210721")
end

function Quest22107:OnMainFinished(arg1)
    self:NpcDestroyWithBlackscreen(3, npcData.Npc)
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData1.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    questNpcActor:DestroyWithDither(false, 1)
end

function Quest22107:OnMainFailed(arg1) end

function Quest22107:OnMainCanceled(arg1)
    print("MainQuest22107 Canceled")
    self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    self:SafeDestroyQuestNpc(npcData.Npc, 3)
    local v = self:GetQuestNpcActor(npcData1.Npc)
    self:SafeDestroyQuestNpc(npcData1.Npc, 3)
end

return Quest22107
