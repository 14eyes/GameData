require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76651 = class("Quest76651", QuestActorProxy)
Quest76651.defaultAlias = "Quest76651"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76651:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76651:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7665111"] = self.OnSubStart7665111,
        ["7665101"] = self.OnSubStart7665101,
        ["7665102"] = self.OnSubStart7665102,
        ["7665103"] = self.OnSubStart7665103,
        ["7665110"] = self.OnSubStart7665110,
        ["7665104"] = self.OnSubStart7665104,
        ["7665109"] = self.OnSubStart7665109,
        ["7665113"] = self.OnSubStart7665113,
        ["7665107"] = self.OnSubStart7665107,
        ["7665105"] = self.OnSubStart7665105,
        ["7665112"] = self.OnSubStart7665112,
        ["7665108"] = self.OnSubStart7665108,
        ["7665106"] = self.OnSubStart7665106,
        ["7665114"] = self.OnSubStart7665114
    }
end

function Quest76651:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7665111"] = self.OnSubFinish7665111,
        ["7665101"] = self.OnSubFinish7665101,
        ["7665102"] = self.OnSubFinish7665102,
        ["7665103"] = self.OnSubFinish7665103,
        ["7665110"] = self.OnSubFinish7665110,
        ["7665104"] = self.OnSubFinish7665104,
        ["7665109"] = self.OnSubFinish7665109,
        ["7665113"] = self.OnSubFinish7665113,
        ["7665107"] = self.OnSubFinish7665107,
        ["7665105"] = self.OnSubFinish7665105,
        ["7665112"] = self.OnSubFinish7665112,
        ["7665108"] = self.OnSubFinish7665108,
        ["7665106"] = self.OnSubFinish7665106,
        ["7665114"] = self.OnSubFinish7665114
    }
end

function Quest76651:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7665108"] = self.OnSubFailed7665108}
end

function Quest76651:Start()
    print("Start")
end

function Quest76651:OnDestroy()
    print("OnDestroy")
end

function Quest76651:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76651:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76651:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76651:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7665102Trigger_talk01")
    this:ActorDestroy("Q7665102Trigger_talk02")
    this:ActorDestroy("Q7665108Trigger")
    this:ActorDestroy("Q7665111Trigger")
    this:ActorDestroy("Q7665112Trigger")
    this:ActorDestroy("Q7665106Trigger")
    this:ActorDestroy("Q7665102Triggerout")
end

function Quest76651:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7665110 then
        actorUtils.FinishQuestID(false, 7665110)
    end
end

function Quest76651:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76651:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76651:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76651:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76651:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest76651:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76651:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76651:OnSubStart7665111(arg1)
    print("OnSubStart7665111")
    actorMgr:CreateActorWithPos("Q7665111Trigger", "Actor/Gadget/Q7665111Trigger", 70900002, 0, points._Q7665111TriggerPoint_.pos, points._Q7665111TriggerPoint_.rot, true, false, 3)
end

function Quest76651:OnSubFinish7665111(arg1)
    print("OnSubFinish7665111")
end

function Quest76651:OnSubStart7665101(arg1)
    print("OnSubStart7665101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7665101, 0, 10, 1, npcs.Npc1314.id)
end

function Quest76651:OnSubFinish7665101(arg1)
    print("OnSubFinish7665101")
end

function Quest76651:OnSubStart7665102(arg1)
    print("OnSubStart7665102")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1314.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 76651):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15571.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7665102, 0, 7, 1, npcs.Npc15838.id)
    actorMgr:CreateActorWithPos("Q7665102Trigger_talk01", "Actor/Gadget/Q7665102Trigger_talk01", 70900002, 0, points._Q7665102Trigger_talk01Point_.pos, points._Q7665102Trigger_talk01Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7665102Trigger_talk02", "Actor/Gadget/Q7665102Trigger_talk02", 70900002, 0, points._Q7665102Trigger_talk02Point_.pos, points._Q7665102Trigger_talk02Point_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 76651):SitOnChair(0, true)
end

function Quest76651:OnSubFinish7665102(arg1)
    print("OnSubFinish7665102")
    this:SafeDestroyQuestNpc(npcs.Npc15444.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15838.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:QuestNarratorTask(datas.NarratorWithId7665103, nil)
        this:CreateQuestNpc(arg1, npcs.Npc15558.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15558.alias, 76651):WalkToRouteTask(datas.RoutePointsData7665102, function(arg1)
            this:NpcDestroyWithDither(3, npcs.Npc15558.alias)
        end, nil, nil)

        this:ActorDestroy("Q7665102Trigger_talk01")
        this:ActorDestroy("Q7665102Trigger_talk02")
        actorMgr:CreateActorWithPos("Q7665102Triggerout", "Actor/Gadget/Q7665102Triggerout", 70900002, 0, points._Q7665102TriggeroutPoint_.pos, points._Q7665102TriggeroutPoint_.rot, true, false, 3)
    end)
end

function Quest76651:OnSubStart7665103(arg1)
    print("OnSubStart7665103")
    this:GetQuestNpcActor(npcs.Npc1314.alias, 76651):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc7168.alias, true, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7665103, 0, 5, 1, npcs.Npc15838.id)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 76651):SitOnChair(0, true)
end

function Quest76651:OnSubFinish7665103(arg1)
    print("OnSubFinish7665103")
    this:SafeDestroyQuestNpc(npcs.Npc15558.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15838.alias, 3)
    this:ActorDestroy("Q7665102Triggerout")
end

function Quest76651:OnSubStart7665110(arg1)
    print("OnSubStart7665110")
    this:DailyNpcSafeHideSelf(npcs.Npc7168.alias, true, 1)
end

function Quest76651:OnSubFinish7665110(arg1)
    print("OnSubFinish7665110")
end

function Quest76651:OnSubStart7665104(arg1)
    print("OnSubStart7665104")
    this:NpcCreateWithNpcTrigger(npcs.Npc15444.id, 0, 17, 7665104)
    this:GetQuestNpcActor(npcs.Npc15444.alias, 76651):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 76651):DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc7168.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc1314.alias, 76651):SitOnChair(0, true)
    this:DeployStoryByQuest(147665101)
end

function Quest76651:OnSubFinish7665104(arg1)
    print("OnSubFinish7665104")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15571.alias, 3)
    this:LightNotifyTo(npcs.Npc7168.alias, 0, true)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData, 1, nil, nil, nil)
    this:CancelStoryByQuest(147665101)
end

function Quest76651:OnSubStart7665109(arg1)
    print("OnSubStart7665109")
    this:CreateQuestNpc(arg1, npcs.Npc7168.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15444.id, arg1)
    this:GetQuestNpcActor(npcs.Npc15444.alias, 76651):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(147665101)
    end)
end

function Quest76651:OnSubFinish7665109(arg1)
    print("OnSubFinish7665109")
    this:SafeDestroyQuestNpc(npcs.Npc7168.alias, 3)
end

function Quest76651:OnSubStart7665113(arg1)
    print("OnSubStart7665113")
end

function Quest76651:OnSubFinish7665113(arg1)
    print("OnSubFinish7665113")
end

function Quest76651:OnSubStart7665107(arg1)
    print("OnSubStart7665107")
    this:CreateQuestNpc(arg1, npcs.Npc15444.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15444.alias, 76651):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:DeployStoryByQuest(147665101)
end

function Quest76651:OnSubFinish7665107(arg1)
    print("OnSubFinish7665107")
    this:SafeDestroyQuestNpc(npcs.Npc15444.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData, 1, nil, nil, nil)
    this:CancelStoryByQuest(147665101)
end

function Quest76651:OnSubStart7665105(arg1)
    print("OnSubStart7665105")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7665105, 0, 20, 1, npcs.Npc1314.id)
end

function Quest76651:OnSubFinish7665105(arg1)
    print("OnSubFinish7665105")
    this:PlayerEnterDungeonWithData(1713, 1267, 7665105, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:NpcDestroyImmediately(3, npcs.Npc1314.alias)
end

function Quest76651:OnSubStart7665112(arg1)
    print("OnSubStart7665112")
    actorMgr:CreateActorWithPos("Q7665112Trigger", "Actor/Gadget/Q7665112Trigger", 70900002, 0, points._Q7665112TriggerPoint_.pos, points._Q7665112TriggerPoint_.rot, true, false, 3)
end

function Quest76651:OnSubFinish7665112(arg1)
    print("OnSubFinish7665112")
    this:ActorDestroy("Q7665112Trigger")
end

function Quest76651:OnSubStart7665108(arg1)
    print("OnSubStart7665108")
    this:NpcCreateWithNpcTrigger(npcs.Npc15555.id, 0, 3, 7665108)
    this:GetQuestNpcActor(npcs.Npc15555.alias, 76651):DoFreeStyle(1070, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15555.alias, 76651):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc15556.id, 0, 3, 7665108)
    this:GetQuestNpcActor(npcs.Npc15556.alias, 76651):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc15557.id, 0, 3, 7665108)
    this:GetQuestNpcActor(npcs.Npc15557.alias, 76651):DoFreeStyle(4460, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15444.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc15554.id, 0, 3, 7665108)
    this:GetQuestNpcActor(npcs.Npc15554.alias, 76651):DoFreeStyle(1160, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7665108Trigger", "Actor/Gadget/Q7665108Trigger", 70900002, 0, points._Q7665108TriggerPoint_.pos, points._Q7665108TriggerPoint_.rot, true, false, 20287)
end

function Quest76651:OnSubFinish7665108(arg1)
    print("OnSubFinish7665108")
    this:NpcDestroyImmediately(20287, npcs.Npc15555.alias)
    this:NpcDestroyImmediately(20287, npcs.Npc15556.alias)
    this:NpcDestroyImmediately(20287, npcs.Npc15557.alias)
    this:NpcDestroyImmediately(20287, npcs.Npc15554.alias)
    this:TransmitPlayerWithDialogTextByQuestId(7665108, 1, datas.DialogIdsData, 0, nil, nil, nil)
    this:ClearNpcTriggerByQuestId(7665108)
end

function Quest76651:OnSubFailed7665108(arg1)
    print("OnSubFailed7665108")
    this:NpcDestroyImmediately(20287, npcs.Npc15555.alias)
    this:NpcDestroyImmediately(20287, npcs.Npc15556.alias)
    this:NpcDestroyImmediately(20287, npcs.Npc15557.alias)
    this:NpcDestroyImmediately(20287, npcs.Npc15554.alias)
    this:ClearNpcTriggerByQuestId(7665108)
end

function Quest76651:OnSubStart7665106(arg1)
    print("OnSubStart7665106")
    actorMgr:CreateActorWithPos("Q7665106Trigger", "Actor/Gadget/Q7665106Trigger", 70900002, 0, points._Q7665106TriggerPoint_.pos, points._Q7665106TriggerPoint_.rot, true, false, 20287)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7665106, 0, 15, 1, npcs.Npc15444.id)
end

function Quest76651:OnSubFinish7665106(arg1)
    print("OnSubFinish7665106")
    this:ActorDestroy("Q7665106Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc15444.alias, 3)
end

function Quest76651:OnSubStart7665114(arg1)
    print("OnSubStart7665114")
    actorUtils.FinishQuestID(false, 7665114)
end

function Quest76651:OnSubFinish7665114(arg1)
    print("OnSubFinish7665114")
end

return Quest76651
