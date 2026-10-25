require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5002 = class("Quest5002", QuestActorProxy)
Quest5002.defaultAlias = "Quest5002"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5002:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["500201"] = self.OnSubStart500201,
        ["500202"] = self.OnSubStart500202,
        ["500203"] = self.OnSubStart500203,
        ["500204"] = self.OnSubStart500204,
        ["500205"] = self.OnSubStart500205,
        ["500206"] = self.OnSubStart500206,
        ["500207"] = self.OnSubStart500207,
        ["500217"] = self.OnSubStart500217,
        ["500208"] = self.OnSubStart500208,
        ["500209"] = self.OnSubStart500209,
        ["500210"] = self.OnSubStart500210,
        ["500211"] = self.OnSubStart500211,
        ["500212"] = self.OnSubStart500212,
        ["500213"] = self.OnSubStart500213,
        ["500214"] = self.OnSubStart500214,
        ["500215"] = self.OnSubStart500215,
        ["500216"] = self.OnSubStart500216,
        ["500219"] = self.OnSubStart500219,
        ["500218"] = self.OnSubStart500218,
        ["500220"] = self.OnSubStart500220
    }
end

function Quest5002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["500201"] = self.OnSubFinish500201,
        ["500202"] = self.OnSubFinish500202,
        ["500203"] = self.OnSubFinish500203,
        ["500204"] = self.OnSubFinish500204,
        ["500205"] = self.OnSubFinish500205,
        ["500206"] = self.OnSubFinish500206,
        ["500207"] = self.OnSubFinish500207,
        ["500217"] = self.OnSubFinish500217,
        ["500208"] = self.OnSubFinish500208,
        ["500209"] = self.OnSubFinish500209,
        ["500210"] = self.OnSubFinish500210,
        ["500211"] = self.OnSubFinish500211,
        ["500212"] = self.OnSubFinish500212,
        ["500213"] = self.OnSubFinish500213,
        ["500214"] = self.OnSubFinish500214,
        ["500215"] = self.OnSubFinish500215,
        ["500216"] = self.OnSubFinish500216,
        ["500219"] = self.OnSubFinish500219,
        ["500218"] = self.OnSubFinish500218,
        ["500220"] = self.OnSubFinish500220
    }
end

function Quest5002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["500210"] = self.OnSubFailed500210,
        ["500212"] = self.OnSubFailed500212,
        ["500213"] = self.OnSubFailed500213,
        ["500214"] = self.OnSubFailed500214,
        ["500215"] = self.OnSubFailed500215,
        ["500216"] = self.OnSubFailed500216
    }
end

function Quest5002:Start()
    print("Start")
end

function Quest5002:OnDestroy()
    print("OnDestroy")
end

function Quest5002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 500217 then
        actorUtils.FinishQuestID(false, 500217)
    elseif arg1 == 500219 then
        actorUtils.FinishQuestID(false, 500219)
    end
end

function Quest5002:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5002:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5002:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5002:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5002:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5002:OnSubStart500201(arg1)
    print("OnSubStart500201")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500201, 0, 3, 1, npcs.Npc1087.id)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
end

function Quest5002:OnSubFinish500201(arg1)
    print("OnSubFinish500201")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
end

function Quest5002:OnSubStart500202(arg1)
    print("OnSubStart500202")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500202, 0, 12, 1, npcs.Npc1087.id)
    this:CreateQuestNpc(arg1, npcs.Npc6055.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14208.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14209.id, 0, false, 0)
end

function Quest5002:OnSubFinish500202(arg1)
    print("OnSubFinish500202")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14208.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14209.alias, 3)
end

function Quest5002:OnSubStart500203(arg1)
    print("OnSubStart500203")
end

function Quest5002:OnSubFinish500203(arg1)
    print("OnSubFinish500203")
end

function Quest5002:OnSubStart500204(arg1)
    print("OnSubStart500204")
    this:CreateQuestNpc(arg1, npcs.Npc14216.id, 0, false, 0)
end

function Quest5002:OnSubFinish500204(arg1)
    print("OnSubFinish500204")
    this:SafeDestroyQuestNpc(npcs.Npc14216.alias, 3)
end

function Quest5002:OnSubStart500205(arg1)
    print("OnSubStart500205")
    this:CreateQuestNpc(arg1, npcs.Npc14208.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14208.alias, 5002):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc14209.id, 0, 7, 500205)
    this:GetQuestNpcActor(npcs.Npc14209.alias, 5002):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest5002:OnSubFinish500205(arg1)
    print("OnSubFinish500205")
end

function Quest5002:OnSubStart500206(arg1)
    print("OnSubStart500206")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500206, 0, 5, 1, npcs.Npc1087.id)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14208.alias, 5002):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14209.alias, 5002):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14208.alias, 5002):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14209.alias, 5002):DisableInteeHeadCtrl(true)
    end)
end

function Quest5002:OnSubFinish500206(arg1)
    print("OnSubFinish500206")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNoWord, nil, nil, nil)
end

function Quest5002:OnSubStart500207(arg1)
    print("OnSubStart500207")
    this:GetQuestNpcActor(npcs.Npc14208.alias, 5002):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14209.alias, 5002):DoFreeStyle(1170, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q500207Talk", "Actor/Gadget/Q500207Talk", 70900002, 0, points._Q500207TalkPoint_.pos, points._Q500207TalkPoint_.rot, true, false, 3)
end

function Quest5002:OnSubFinish500207(arg1)
    print("OnSubFinish500207")
    this:SafeDestroyQuestNpc(npcs.Npc14208.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14209.alias, 3)
    this:ActorDestroy("Q500207Talk")
end

function Quest5002:OnSubStart500217(arg1)
    print("OnSubStart500217")
end

function Quest5002:OnSubFinish500217(arg1)
    print("OnSubFinish500217")
end

function Quest5002:OnSubStart500208(arg1)
    print("OnSubStart500208")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500208, 0, 3, 1, npcs.Npc1087.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6076.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6072.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6073.alias, true, 1)
end

function Quest5002:OnSubFinish500208(arg1)
    print("OnSubFinish500208")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    actorMgr:CreateActorWithPos("Q500208Transmit", "Actor/Gadget/Q500208Transmit", 70900002, 0, points._Q500208TransmitPoint_.pos, points._Q500208TransmitPoint_.rot, true, false, 3)
    this:LightNotifyTo(npcs.Npc6076.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6072.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6073.alias, 0, true)
end

function Quest5002:OnSubStart500209(arg1)
    print("OnSubStart500209")
    this:DestroyQuestNpcActor(npcs.Npc6055.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc1087.alias, 20227)
    this:DestroyQuestNpcActor(npcs.Npc14119.alias, 20227)
end

function Quest5002:OnSubFinish500209(arg1)
    print("OnSubFinish500209")
end

function Quest5002:OnSubStart500210(arg1)
    print("OnSubStart500210")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Paimon.id, 0, 500210, 100, true)
end

function Quest5002:OnSubFinish500210(arg1)
    print("OnSubFinish500210")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20227)
end

function Quest5002:OnSubFailed500210(arg1)
    print("OnSubFailed500210")
    this:ActorDestroy("Q500210N1005Trigger")
end

function Quest5002:OnSubStart500211(arg1)
    print("OnSubStart500211")
end

function Quest5002:OnSubFinish500211(arg1)
    print("OnSubFinish500211")
end

function Quest5002:OnSubStart500212(arg1)
    print("OnSubStart500212")
    this:CallDelayByQuest("500212", 3, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(500212, 0, 100, 1, npcs.Npc1087.id)
    end)
end

function Quest5002:OnSubFinish500212(arg1)
    print("OnSubFinish500212")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20227)
end

function Quest5002:OnSubFailed500212(arg1)
    print("OnSubFailed500212")
    this:UnCallDelayByQuest("500212")
    this:ActorDestroy("Q500212N1087Trigger")
end

function Quest5002:OnSubStart500213(arg1)
    print("OnSubStart500213")
    this:CreateQuestNpc(arg1, npcs.Npc6055.id, 0, false, 0)
    this:DeployStoryByQuest(110500101)
    actorMgr:CreateActorWithPos("Q500213Talk", "Actor/Gadget/Q500213Talk", 70900002, 0, points._Q500213TalkPoint_.pos, points._Q500213TalkPoint_.rot, true, false, 20227)
end

function Quest5002:OnSubFinish500213(arg1)
    print("OnSubFinish500213")
    this:ActorDestroy("Q500213Talk")
end

function Quest5002:OnSubFailed500213(arg1)
    print("OnSubFailed500213")
    this:CancelStoryByQuest(110500101)
    this:DestroyQuestNpcActor(npcs.Npc6055.alias, 20227)
    this:ActorDestroy("Q500213Talk")
end

function Quest5002:OnSubStart500214(arg1)
    print("OnSubStart500214")
    actorMgr:CreateActorWithPos("Q500214Kaiche", "Actor/Gadget/Q500214Kaiche", 70900002, 0, points._Q500214KaichePoint_.pos, points._Q500214KaichePoint_.rot, true, false, 20227)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110500101)
    end)
end

function Quest5002:OnSubFinish500214(arg1)
    print("OnSubFinish500214")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest5002:OnSubFailed500214(arg1)
    print("OnSubFailed500214")
    this:ActorDestroy("Q500214Kaiche")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:CancelStoryByQuest(110500101)
end

function Quest5002:OnSubStart500215(arg1)
    print("OnSubStart500215")
    this:CallDelayByQuest("500215", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(500215, 0, 30, 1, npcs.Npc1087.id)
        this:DeployStoryByQuest(110500101)
    end)
end

function Quest5002:OnSubFinish500215(arg1)
    print("OnSubFinish500215")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20227)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Q500216Kaiche, nil)
    end)
end

function Quest5002:OnSubFailed500215(arg1)
    print("OnSubFailed500215")
    this:CancelStoryByQuest(110500101)
    this:UnCallDelayByQuest("500215")
    this:ActorDestroy("Q500215N1087Trigger")
end

function Quest5002:OnSubStart500216(arg1)
    print("OnSubStart500216")
    this:CreateQuestNpc(arg1, npcs.Npc14119.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q500216Talk", "Actor/Gadget/Q500216Talk", 70900002, 0, points._Q500216TalkPoint_.pos, points._Q500216TalkPoint_.rot, true, false, 20227)
    this:GetQuestNpcActor(npcs.Npc14119.alias, 5002):DoFreeStyle(4110, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110500101)
end

function Quest5002:OnSubFinish500216(arg1)
    print("OnSubFinish500216")
    this:SafeDestroyQuestNpc(npcs.Npc14119.alias, 20227)
    actorMgr:CreateActorWithPos("Q5002Transmit2", "Actor/Gadget/Q5002Transmit2", 70900002, 0, points.Q500220.pos, points.Q500220.rot, true, false, 20227)
    this:CancelStoryByQuest(110500101)
    globalActor:ChangeDay24Time(14, true)
end

function Quest5002:OnSubFailed500216(arg1)
    print("OnSubFailed500216")
    this:ActorDestroy("Q500216Talk")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:CancelStoryByQuest(110500101)
    this:DestroyQuestNpcActor(npcs.Npc14119.alias, 20227)
end

function Quest5002:OnSubStart500219(arg1)
    print("OnSubStart500219")
end

function Quest5002:OnSubFinish500219(arg1)
    print("OnSubFinish500219")
end

function Quest5002:OnSubStart500218(arg1)
    print("OnSubStart500218")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500218, 0, 30, 1, npcs.Npc14119.id)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc6055.id, 0, false, 0)
    end)
end

function Quest5002:OnSubFinish500218(arg1)
    print("OnSubFinish500218")
    this:SafeDestroyQuestNpc(npcs.Npc14119.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6055.alias, 3)
end

function Quest5002:OnSubStart500220(arg1)
    print("OnSubStart500220")
    actorMgr:CreateActorWithPos("Q5002Transmit2", "Actor/Gadget/Q5002Transmit2", 70900002, 0, points.Q500220.pos, points.Q500220.rot, true, false, 20227)
end

function Quest5002:OnSubFinish500220(arg1)
    print("OnSubFinish500220")
end

return Quest5002
