require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11027 = class("Quest11027", QuestActorProxy)
Quest11027.defaultAlias = "Quest11027"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest11027:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest11027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1102701"] = self.OnSubStart1102701,
        ["1102704"] = self.OnSubStart1102704,
        ["1102702"] = self.OnSubStart1102702,
        ["1102703"] = self.OnSubStart1102703,
        ["1102707"] = self.OnSubStart1102707,
        ["1102709"] = self.OnSubStart1102709,
        ["1102708"] = self.OnSubStart1102708,
        ["1102705"] = self.OnSubStart1102705,
        ["1102706"] = self.OnSubStart1102706
    }
end

function Quest11027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1102701"] = self.OnSubFinish1102701,
        ["1102704"] = self.OnSubFinish1102704,
        ["1102702"] = self.OnSubFinish1102702,
        ["1102703"] = self.OnSubFinish1102703,
        ["1102707"] = self.OnSubFinish1102707,
        ["1102709"] = self.OnSubFinish1102709,
        ["1102708"] = self.OnSubFinish1102708,
        ["1102705"] = self.OnSubFinish1102705,
        ["1102706"] = self.OnSubFinish1102706
    }
end

function Quest11027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest11027:Start()
    print("Start")
end

function Quest11027:OnDestroy()
    print("OnDestroy")
end

function Quest11027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11027:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest11027:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest11027:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest11027:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest11027:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest11027:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest11027:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest11027:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:ActionSafeCall(function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc1021Data.alias)
            questNpcActor:LookAt(sceneData:GetDummyPoint(3, "Q1102709_T1102709_N10000005").pos)
            questNpcActor:DisableInteeHeadCtrl(true)
        end)
    end
end

function Quest11027:OnSubStart1102701(arg1)
    print("OnSubStart1102701")
    this:NpcCreateWithTrigger(npcs.Npc13135Data.id, 1102701, 1)
    this:CreateQuestNpc(arg1, npcs.Npc2103Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
end

function Quest11027:OnSubFinish1102701(arg1)
    print("OnSubFinish1102701")
    this:SafeDestroyQuestNpc(npcs.Npc13135Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 3)
end

function Quest11027:OnSubStart1102704(arg1)
    print("OnSubStart1102704")
    this:CreateQuestNpc(arg1, npcs.Npc2100Data.id, 3)
    this:NpcCreateWithNpcTrigger(npcs.Npc2101Data.id, 1102704, 4, 10)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2103Data.id, 5)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc10233Data.id, 6)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
end

function Quest11027:OnSubFinish1102704(arg1)
    print("OnSubFinish1102704")
    this:SafeDestroyQuestNpc(npcs.Npc13135Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2103Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
end

function Quest11027:OnSubStart1102702(arg1)
    print("OnSubStart1102702")
    this:CreateQuestNpc(arg1, npcs.Npc13136Data.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2100Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2101Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc2029Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1102702_NarratorTrigger", "Actor/Gadget/Q1102702_NarratorTrigger", 70900002, 0, points.TPos_Q1102702_NarratorTrigger.pos, points.TPos_Q1102702_NarratorTrigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1102702_NarratorTrigger2", "Actor/Gadget/Q1102702_NarratorTrigger2", 70900002, 0, points.TPos_Q1102702_NarratorTrigger2.pos, points.TPos_Q1102702_NarratorTrigger2.rot, true, false, 3)
end

function Quest11027:OnSubFinish1102702(arg1)
    print("OnSubFinish1102702")
    this:ClearNarratorTask()
    if actorMgr:GetActor("Q1102702_NarratorTrigger") ~= nil then
        this:ActorDestroy("Q1102702_NarratorTrigger")
    end

    this:NarratorOnlyTaskByData(datas.Narrator_1102702, function(arg1)
        this:RequestInteraction(npcs.Npc13136Data.alias)
    end, 11027)
end

function Quest11027:OnSubStart1102703(arg1)
    print("OnSubStart1102703")
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1102703_Trigger", "Actor/Gadget/Q1102703_Trigger", 70900002, 0, points.TPos_Q1102703_Trigger.pos, points.TPos_Q1102703_Trigger.rot, true, false, 3)
end

function Quest11027:OnSubFinish1102703(arg1)
    print("OnSubFinish1102703")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitDialogsId, 1, nil, nil)
    this:ClearNarratorTask()
    this:NPCDestroyImmediately(npcs.Npc13135Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc13136Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc1021Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc2100Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc2101Data.alias, 3)
end

function Quest11027:OnSubStart1102707(arg1)
    print("OnSubStart1102707")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1068Data.id, 1102707, 2, 10, 1)
    this:LightNotifyTo(npcs.Npc2103Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
end

function Quest11027:OnSubFinish1102707(arg1)
    print("OnSubFinish1102707")
    this:SafeDestroyQuestNpc(npcs.Npc13135Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 1082)
    this:SafeDestroyQuestNpc(npcs.Npc13136Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
end

function Quest11027:OnSubStart1102709(arg1)
    print("OnSubStart1102709")
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13302Data.id, 1102709, 5, 10, 1)
    if sceneData.currSceneID == 1082 then
        this:LevelLoadFinishSafeCall(function(arg1_2)
            this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitBlank, 1, nil, nil)
        end)
    end
end

function Quest11027:OnSubFinish1102709(arg1)
    print("OnSubFinish1102709")
    this:SafeDestroyQuestNpc(npcs.Npc13302Data.alias, 3)
end

function Quest11027:OnSubStart1102708(arg1)
    print("OnSubStart1102708")
    this:CreateQuestNpc(arg1, npcs.Npc13135Data.id, 1)
    this:NpcCreateWithNpcTrigger(npcs.Npc1021Data.id, 1102708, 3, 8)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2103Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc10233Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc13175Data.id, 6)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1021Data.alias)
        questNpcActor:LookAt(sceneData:GetDummyPoint(3, "Q1102709_T1102709_N10000005").pos)
        questNpcActor:DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13135Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2103Data.alias):DisableInteeHeadCtrl(true)
    end)

    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1220, true, nil, true, true, false, true)
end

function Quest11027:OnSubFinish1102708(arg1)
    print("OnSubFinish1102708")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1102703, nil, 11027)
    end)

    this:GetQuestNpcActor(npcs.Npc13135Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc2103Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13135Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2103Data.alias, 3)
end

function Quest11027:OnSubStart1102705(arg1)
    print("OnSubStart1102705")
    this:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1021Data.alias)
        questNpcActor:LookAt(sceneData:GetDummyPoint(3, "Q1102709_T1102709_N10000005").pos)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1220, true, nil, true, true, false, true)
    end)
end

function Quest11027:OnSubFinish1102705(arg1)
    print("OnSubFinish1102705")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:CallDelay(1, function(arg1)
            this:NarratorOnlyTaskByData(datas.Narrator_1102704, nil, 11027)
        end)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13175Data.alias, 3)
end

function Quest11027:OnSubStart1102706(arg1)
    print("OnSubStart1102706")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13135Data.id, 1)
    this:NpcCreateWithTrigger(npcs.Npc1068Data.id, 1102706, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13136Data.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1021Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
end

function Quest11027:OnSubFinish1102706(arg1)
    print("OnSubFinish1102706")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 3)
end

return Quest11027
