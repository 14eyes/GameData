require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71107 = class("Quest71107", QuestActorProxy)
Quest71107.defaultAlias = "Quest71107"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71107:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71107:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7110725"] = self.OnSubStart7110725,
        ["7110701"] = self.OnSubStart7110701,
        ["7110702"] = self.OnSubStart7110702,
        ["7110703"] = self.OnSubStart7110703,
        ["7110710"] = self.OnSubStart7110710,
        ["7110711"] = self.OnSubStart7110711,
        ["7110737"] = self.OnSubStart7110737,
        ["7110712"] = self.OnSubStart7110712,
        ["7110713"] = self.OnSubStart7110713,
        ["7110714"] = self.OnSubStart7110714,
        ["7110715"] = self.OnSubStart7110715,
        ["7110726"] = self.OnSubStart7110726,
        ["7110727"] = self.OnSubStart7110727,
        ["7110716"] = self.OnSubStart7110716,
        ["7110704"] = self.OnSubStart7110704,
        ["7110705"] = self.OnSubStart7110705,
        ["7110731"] = self.OnSubStart7110731,
        ["7110706"] = self.OnSubStart7110706,
        ["7110707"] = self.OnSubStart7110707,
        ["7110708"] = self.OnSubStart7110708,
        ["7110728"] = self.OnSubStart7110728,
        ["7110729"] = self.OnSubStart7110729,
        ["7110730"] = self.OnSubStart7110730,
        ["7110709"] = self.OnSubStart7110709,
        ["7110717"] = self.OnSubStart7110717,
        ["7110718"] = self.OnSubStart7110718,
        ["7110719"] = self.OnSubStart7110719,
        ["7110732"] = self.OnSubStart7110732,
        ["7110720"] = self.OnSubStart7110720,
        ["7110735"] = self.OnSubStart7110735,
        ["7110723"] = self.OnSubStart7110723,
        ["7110724"] = self.OnSubStart7110724,
        ["7110721"] = self.OnSubStart7110721,
        ["7110733"] = self.OnSubStart7110733,
        ["7110736"] = self.OnSubStart7110736,
        ["7110734"] = self.OnSubStart7110734,
        ["7110722"] = self.OnSubStart7110722
    }
end

function Quest71107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7110725"] = self.OnSubFinish7110725,
        ["7110701"] = self.OnSubFinish7110701,
        ["7110702"] = self.OnSubFinish7110702,
        ["7110703"] = self.OnSubFinish7110703,
        ["7110710"] = self.OnSubFinish7110710,
        ["7110711"] = self.OnSubFinish7110711,
        ["7110737"] = self.OnSubFinish7110737,
        ["7110712"] = self.OnSubFinish7110712,
        ["7110713"] = self.OnSubFinish7110713,
        ["7110714"] = self.OnSubFinish7110714,
        ["7110715"] = self.OnSubFinish7110715,
        ["7110726"] = self.OnSubFinish7110726,
        ["7110727"] = self.OnSubFinish7110727,
        ["7110716"] = self.OnSubFinish7110716,
        ["7110704"] = self.OnSubFinish7110704,
        ["7110705"] = self.OnSubFinish7110705,
        ["7110731"] = self.OnSubFinish7110731,
        ["7110706"] = self.OnSubFinish7110706,
        ["7110707"] = self.OnSubFinish7110707,
        ["7110708"] = self.OnSubFinish7110708,
        ["7110728"] = self.OnSubFinish7110728,
        ["7110729"] = self.OnSubFinish7110729,
        ["7110730"] = self.OnSubFinish7110730,
        ["7110709"] = self.OnSubFinish7110709,
        ["7110717"] = self.OnSubFinish7110717,
        ["7110718"] = self.OnSubFinish7110718,
        ["7110719"] = self.OnSubFinish7110719,
        ["7110732"] = self.OnSubFinish7110732,
        ["7110720"] = self.OnSubFinish7110720,
        ["7110735"] = self.OnSubFinish7110735,
        ["7110723"] = self.OnSubFinish7110723,
        ["7110724"] = self.OnSubFinish7110724,
        ["7110721"] = self.OnSubFinish7110721,
        ["7110733"] = self.OnSubFinish7110733,
        ["7110736"] = self.OnSubFinish7110736,
        ["7110734"] = self.OnSubFinish7110734,
        ["7110722"] = self.OnSubFinish7110722
    }
end

function Quest71107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71107:Start()
    print("Start")
end

function Quest71107:OnDestroy()
    print("OnDestroy")
end

function Quest71107:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71107:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71107:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71107:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71107:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71107:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71107:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71107:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 711070508 then
        actorUtils.FinishQuestID(false, 7110731)
    elseif arg1 == 711072001 then
        actorUtils.FinishQuestID(false, 7110720)
    elseif arg1 == 711072301 then
        actorUtils.FinishQuestID(false, 7110723)
    elseif arg1 == 711073601 then
        actorUtils.FinishQuestID(false, 7110736)
    end

    if arg1 == 711073301 then
        this:ShowQuestLikingBar(71107, 1005, datas.Paimon_mood, false, "PAIMON_MOOD_ANGRY")
        datas.Paimon_mood = 0
        self:UpdateQuestLikingBar(1, false, "PAIMON_MOOD_ANGRY")
    elseif arg1 == 711073302 then
        local paimon_mood = datas.Paimon_mood + 5
        datas.Paimon_mood = paimon_mood
        self:UpdateQuestLikingBar(datas.Paimon_mood, false, "PAIMON_MOOD_UP")
    elseif arg1 == 711073303 then
        local paimon_mood = datas.Paimon_mood + 10
        datas.Paimon_mood = paimon_mood
        self:UpdateQuestLikingBar(datas.Paimon_mood, false, "PAIMON_MOOD_UPUP")
    elseif arg1 == 711073304 then
        self:UpdateQuestLikingBar(100, false, "PAIMON_MOOD_HAPPY")
    elseif arg1 == 711073305 then
        this:HideQuestLikingBar()
    elseif arg1 == 711073306 then
        local paimon_mood = datas.Paimon_mood + 15
        datas.Paimon_mood = paimon_mood
        self:UpdateQuestLikingBar(datas.Paimon_mood, false, "PAIMON_MOOD_UPUPUP")
    end
end

function Quest71107:OnSubStart7110725(arg1)
    print("OnSubStart7110725")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2493Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21416Data.id, 0)
end

function Quest71107:OnSubFinish7110725(arg1)
    print("OnSubFinish7110725")
    this:SafeDestroyQuestNpc(npcs.Npc21416Data.alias, 3)
end

function Quest71107:OnSubStart7110701(arg1)
    print("OnSubStart7110701")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2493Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110701(arg1)
    print("OnSubFinish7110701")
    this:NotifyTo(npcs.Npc2484Data.alias, 1, true)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest71107:OnSubStart7110702(arg1)
    print("OnSubStart7110702")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2493Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110702Trigger", "Actor/Gadget/Q7110702Trigger", 70900002, 0, points.TPos_Q7110702Trigger.pos, points.TPos_Q7110702Trigger.rot, true, false, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21416Data.alias, 3)
end

function Quest71107:OnSubFinish7110702(arg1)
    print("OnSubFinish7110702")
end

function Quest71107:OnSubStart7110703(arg1)
    print("OnSubStart7110703")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:RequestInteraction(npcs.Npc2484Data.alias)
end

function Quest71107:OnSubFinish7110703(arg1)
    print("OnSubFinish7110703")
end

function Quest71107:OnSubStart7110710(arg1)
    print("OnSubStart7110710")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2493Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7110710Trigger", "Actor/Gadget/Q7110710Trigger", 70900002, 0, points.TPos_Q7110710Trigger.pos, points.TPos_Q7110710Trigger.rot, true, false, 3)
end

function Quest71107:OnSubFinish7110710(arg1)
    print("OnSubFinish7110710")
end

function Quest71107:OnSubStart7110711(arg1)
    print("OnSubStart7110711")
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc2484Data.alias)
end

function Quest71107:OnSubFinish7110711(arg1)
    print("OnSubFinish7110711")
    this:TransmitPlayerById(arg1, 1)
end

function Quest71107:OnSubStart7110737(arg1)
    print("OnSubStart7110737")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7110737Trigger", "Actor/Gadget/Q7110737Trigger", 70900002, 0, points.TPos_Q7110737Trigger.pos, points.TPos_Q7110737Trigger.rot, true, false, 3)
    end)
end

function Quest71107:OnSubFinish7110737(arg1)
    print("OnSubFinish7110737")
end

function Quest71107:OnSubStart7110712(arg1)
    print("OnSubStart7110712")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110712(arg1)
    print("OnSubFinish7110712")
end

function Quest71107:OnSubStart7110713(arg1)
    print("OnSubStart7110713")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110713(arg1)
    print("OnSubFinish7110713")
end

function Quest71107:OnSubStart7110714(arg1)
    print("OnSubStart7110714")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110714(arg1)
    print("OnSubFinish7110714")
end

function Quest71107:OnSubStart7110715(arg1)
    print("OnSubStart7110715")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110715(arg1)
    print("OnSubFinish7110715")
end

function Quest71107:OnSubStart7110726(arg1)
    print("OnSubStart7110726")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110726(arg1)
    print("OnSubFinish7110726")
end

function Quest71107:OnSubStart7110727(arg1)
    print("OnSubStart7110727")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110727(arg1)
    print("OnSubFinish7110727")
end

function Quest71107:OnSubStart7110716(arg1)
    print("OnSubStart7110716")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc2484Data.alias)
end

function Quest71107:OnSubFinish7110716(arg1)
    print("OnSubFinish7110716")
end

function Quest71107:OnSubStart7110704(arg1)
    print("OnSubStart7110704")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7110704Trigger", "Actor/Gadget/Q7110704Trigger", 70900002, 0, points.TPos_Q7110704Trigger.pos, points.TPos_Q7110704Trigger.rot, true, false, 3)
end

function Quest71107:OnSubFinish7110704(arg1)
    print("OnSubFinish7110704")
end

function Quest71107:OnSubStart7110705(arg1)
    print("OnSubStart7110705")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc2484Data.alias)
end

function Quest71107:OnSubFinish7110705(arg1)
    print("OnSubFinish7110705")
end

function Quest71107:OnSubStart7110731(arg1)
    print("OnSubStart7110731")
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110731(arg1)
    print("OnSubFinish7110731")
end

function Quest71107:OnSubStart7110706(arg1)
    print("OnSubStart7110706")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110706(arg1)
    print("OnSubFinish7110706")
end

function Quest71107:OnSubStart7110707(arg1)
    print("OnSubStart7110707")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110707(arg1)
    print("OnSubFinish7110707")
end

function Quest71107:OnSubStart7110708(arg1)
    print("OnSubStart7110708")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110708(arg1)
    print("OnSubFinish7110708")
end

function Quest71107:OnSubStart7110728(arg1)
    print("OnSubStart7110728")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110728(arg1)
    print("OnSubFinish7110728")
end

function Quest71107:OnSubStart7110729(arg1)
    print("OnSubStart7110729")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110729(arg1)
    print("OnSubFinish7110729")
end

function Quest71107:OnSubStart7110730(arg1)
    print("OnSubStart7110730")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110730(arg1)
    print("OnSubFinish7110730")
end

function Quest71107:OnSubStart7110709(arg1)
    print("OnSubStart7110709")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc2484Data.alias)
end

function Quest71107:OnSubFinish7110709(arg1)
    print("OnSubFinish7110709")
    this:SafeDestroyQuestNpc(npcs.Npc2484Data.alias, 3)
end

function Quest71107:OnSubStart7110717(arg1)
    print("OnSubStart7110717")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110717(arg1)
    print("OnSubFinish7110717")
end

function Quest71107:OnSubStart7110718(arg1)
    print("OnSubStart7110718")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7110718Trigger", "Actor/Gadget/Q7110718Trigger", 70900002, 0, points.TPos_Q7110718Trigger.pos, points.TPos_Q7110718Trigger.rot, true, false, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2484Data.alias, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc2484Data.alias)
    questNpcActor:ClearFollowTask()
    questNpcActor:ResetWalkSpeedRatio()
end

function Quest71107:OnSubFinish7110718(arg1)
    print("OnSubFinish7110718")
end

function Quest71107:OnSubStart7110719(arg1)
    print("OnSubStart7110719")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc2484Data.alias)
end

function Quest71107:OnSubFinish7110719(arg1)
    print("OnSubFinish7110719")
end

function Quest71107:OnSubStart7110732(arg1)
    print("OnSubStart7110732")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 1)
        this:CallDelayByQuest("d1", 1.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc2484Data.alias, 71107)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Route7110732_1, 8, 4, -1, function(arg1)
                this:NarratorOnlyTaskByData(datas.NarratorWithId71107197)
                this:CallDelayByQuest("d32", 7, function(arg1)
                    actorUtils.FinishQuestID(false, 7110732)
                end)
            end, nil, nil, nil, nil, nil, true)

            questNpcActor:SetWalkSpeedRatio(2.1)
        end)

        this:CallDelayByQuest("d2", 3, function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithId71107196)
        end)
    end)
end

function Quest71107:OnSubFinish7110732(arg1)
    print("OnSubFinish7110732")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc2484Data.alias, 71107)
    questNpcActor:ClearFollowTask()
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:GetQuestNpcActor(npcs.Npc2484Data.alias):ResetWalkSpeedRatio()
end

function Quest71107:OnSubStart7110720(arg1)
    print("OnSubStart7110720")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110720(arg1)
    print("OnSubFinish7110720")
end

function Quest71107:OnSubStart7110735(arg1)
    print("OnSubStart7110735")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 1)
        this:CallDelayByQuest("dd1", 0.7, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc2484Data.alias, 71107)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Route7110732_2, 8, 4, -1, function(arg1)
                this:NarratorOnlyTaskByData(datas.NarratorWithId71107198)
                this:CallDelayByQuest("d7110735", 7, function(arg1)
                    actorUtils.FinishQuestID(false, 7110735)
                end)
            end, nil, nil, nil, nil, nil, true)

            questNpcActor:SetWalkSpeedRatio(2.1)
        end)

        this:ClearNarratorTask()
        this:CallDelayByQuest("dd2", 2, function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithId71107195)
        end)
    end)
end

function Quest71107:OnSubFinish7110735(arg1)
    print("OnSubFinish7110735")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc2484Data.alias, 71107)
    questNpcActor:ClearFollowTask()
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:GetQuestNpcActor(npcs.Npc2484Data.alias):ResetWalkSpeedRatio()
end

function Quest71107:OnSubStart7110723(arg1)
    print("OnSubStart7110723")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110723(arg1)
    print("OnSubFinish7110723")
end

function Quest71107:OnSubStart7110724(arg1)
    print("OnSubStart7110724")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 1)
        this:CallDelayByQuest("d3", 0.7, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc2484Data.alias, 71107)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Route7110732_3, 8, 4, -1, function(arg1)
                this:GetQuestNpcActor(npcs.Npc2484Data.alias):ClearFollowTask()
                this:CallDelayByQuest("d7110724", 1, function(arg1)
                    actorUtils.FinishQuestID(false, 7110724)
                end)
            end, nil, nil, nil, nil, nil, true)

            questNpcActor:SetWalkSpeedRatio(2.1)
        end)

        this:ClearNarratorTask()
    end)
end

function Quest71107:OnSubFinish7110724(arg1)
    print("OnSubFinish7110724")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc2484Data.alias, 71107)
    questNpcActor:ClearFollowTask()
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:ActorDestroy("Q7110724TriggerFail")
    this:GetQuestNpcActor(npcs.Npc2484Data.alias):ResetWalkSpeedRatio()
end

function Quest71107:OnSubStart7110721(arg1)
    print("OnSubStart7110721")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc2484Data.alias, "", true)
end

function Quest71107:OnSubFinish7110721(arg1)
    print("OnSubFinish7110721")
end

function Quest71107:OnSubStart7110733(arg1)
    print("OnSubStart7110733")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:HideQuestLikingBar()
    actorMgr:CreateActorWithPos("Q7110733paimonTrigger", "Actor/Gadget/Q7110733paimonTrigger", 70900002, 0, points.TPos_Q7110733paimonTrigger.pos, points.TPos_Q7110733paimonTrigger.rot, true, false, 3)
end

function Quest71107:OnSubFinish7110733(arg1)
    print("OnSubFinish7110733")
    this:HideQuestLikingBar()
end

function Quest71107:OnSubStart7110736(arg1)
    print("OnSubStart7110736")
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110736(arg1)
    print("OnSubFinish7110736")
end

function Quest71107:OnSubStart7110734(arg1)
    print("OnSubStart7110734")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110734(arg1)
    print("OnSubFinish7110734")
end

function Quest71107:OnSubStart7110722(arg1)
    print("OnSubStart7110722")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc2493Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71107:OnSubFinish7110722(arg1)
    print("OnSubFinish7110722")
    this:CallDelayByQuest("d7110788", 3, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId7110788)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc2484Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc2493Data.alias, 3)
end

return Quest71107
