require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6001 = class("Quest6001", QuestActorProxy)
Quest6001.defaultAlias = "Quest6001"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6001:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600101"] = self.OnSubStart600101,
        ["600102"] = self.OnSubStart600102,
        ["600103"] = self.OnSubStart600103,
        ["600105"] = self.OnSubStart600105,
        ["600130"] = self.OnSubStart600130,
        ["600135"] = self.OnSubStart600135,
        ["600104"] = self.OnSubStart600104,
        ["600106"] = self.OnSubStart600106,
        ["600108"] = self.OnSubStart600108,
        ["600107"] = self.OnSubStart600107,
        ["600110"] = self.OnSubStart600110,
        ["600111"] = self.OnSubStart600111,
        ["600112"] = self.OnSubStart600112,
        ["600113"] = self.OnSubStart600113,
        ["600122"] = self.OnSubStart600122,
        ["600123"] = self.OnSubStart600123,
        ["600114"] = self.OnSubStart600114,
        ["600115"] = self.OnSubStart600115,
        ["600124"] = self.OnSubStart600124,
        ["600128"] = self.OnSubStart600128,
        ["600141"] = self.OnSubStart600141,
        ["600116"] = self.OnSubStart600116,
        ["600129"] = self.OnSubStart600129,
        ["600117"] = self.OnSubStart600117,
        ["600109"] = self.OnSubStart600109,
        ["600121"] = self.OnSubStart600121,
        ["600126"] = self.OnSubStart600126,
        ["600118"] = self.OnSubStart600118,
        ["600119"] = self.OnSubStart600119,
        ["600127"] = self.OnSubStart600127,
        ["600146"] = self.OnSubStart600146,
        ["600120"] = self.OnSubStart600120,
        ["600131"] = self.OnSubStart600131,
        ["600132"] = self.OnSubStart600132,
        ["600133"] = self.OnSubStart600133,
        ["600134"] = self.OnSubStart600134,
        ["600136"] = self.OnSubStart600136,
        ["600137"] = self.OnSubStart600137,
        ["600138"] = self.OnSubStart600138,
        ["600139"] = self.OnSubStart600139,
        ["600125"] = self.OnSubStart600125,
        ["600140"] = self.OnSubStart600140,
        ["600143"] = self.OnSubStart600143,
        ["600144"] = self.OnSubStart600144,
        ["600145"] = self.OnSubStart600145,
        ["600142"] = self.OnSubStart600142,
        ["600147"] = self.OnSubStart600147
    }
end

function Quest6001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600101"] = self.OnSubFinish600101,
        ["600102"] = self.OnSubFinish600102,
        ["600103"] = self.OnSubFinish600103,
        ["600105"] = self.OnSubFinish600105,
        ["600130"] = self.OnSubFinish600130,
        ["600135"] = self.OnSubFinish600135,
        ["600104"] = self.OnSubFinish600104,
        ["600106"] = self.OnSubFinish600106,
        ["600108"] = self.OnSubFinish600108,
        ["600107"] = self.OnSubFinish600107,
        ["600110"] = self.OnSubFinish600110,
        ["600111"] = self.OnSubFinish600111,
        ["600112"] = self.OnSubFinish600112,
        ["600113"] = self.OnSubFinish600113,
        ["600122"] = self.OnSubFinish600122,
        ["600123"] = self.OnSubFinish600123,
        ["600114"] = self.OnSubFinish600114,
        ["600115"] = self.OnSubFinish600115,
        ["600124"] = self.OnSubFinish600124,
        ["600128"] = self.OnSubFinish600128,
        ["600141"] = self.OnSubFinish600141,
        ["600116"] = self.OnSubFinish600116,
        ["600129"] = self.OnSubFinish600129,
        ["600117"] = self.OnSubFinish600117,
        ["600109"] = self.OnSubFinish600109,
        ["600121"] = self.OnSubFinish600121,
        ["600126"] = self.OnSubFinish600126,
        ["600118"] = self.OnSubFinish600118,
        ["600119"] = self.OnSubFinish600119,
        ["600127"] = self.OnSubFinish600127,
        ["600146"] = self.OnSubFinish600146,
        ["600120"] = self.OnSubFinish600120,
        ["600131"] = self.OnSubFinish600131,
        ["600132"] = self.OnSubFinish600132,
        ["600133"] = self.OnSubFinish600133,
        ["600134"] = self.OnSubFinish600134,
        ["600136"] = self.OnSubFinish600136,
        ["600137"] = self.OnSubFinish600137,
        ["600138"] = self.OnSubFinish600138,
        ["600139"] = self.OnSubFinish600139,
        ["600125"] = self.OnSubFinish600125,
        ["600140"] = self.OnSubFinish600140,
        ["600143"] = self.OnSubFinish600143,
        ["600144"] = self.OnSubFinish600144,
        ["600145"] = self.OnSubFinish600145,
        ["600142"] = self.OnSubFinish600142,
        ["600147"] = self.OnSubFinish600147
    }
end

function Quest6001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["600103"] = self.OnSubFailed600103,
        ["600105"] = self.OnSubFailed600105,
        ["600108"] = self.OnSubFailed600108,
        ["600107"] = self.OnSubFailed600107,
        ["600111"] = self.OnSubFailed600111,
        ["600112"] = self.OnSubFailed600112,
        ["600113"] = self.OnSubFailed600113,
        ["600122"] = self.OnSubFailed600122,
        ["600123"] = self.OnSubFailed600123,
        ["600114"] = self.OnSubFailed600114,
        ["600141"] = self.OnSubFailed600141,
        ["600116"] = self.OnSubFailed600116,
        ["600117"] = self.OnSubFailed600117,
        ["600109"] = self.OnSubFailed600109,
        ["600121"] = self.OnSubFailed600121,
        ["600126"] = self.OnSubFailed600126,
        ["600118"] = self.OnSubFailed600118,
        ["600119"] = self.OnSubFailed600119,
        ["600127"] = self.OnSubFailed600127,
        ["600146"] = self.OnSubFailed600146,
        ["600120"] = self.OnSubFailed600120
    }
end

function Quest6001:Start()
    print("Start")
end

function Quest6001:OnDestroy()
    print("OnDestroy")
end

function Quest6001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6001:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q600103Trigger")
    this:ActorDestroy("Q600104Trigger")
    this:ActorDestroy("Q600110Trigger")
    this:ActorDestroy("Q600121Trigger")
    this:ActorDestroy("Q600139Trigger")
    this:ActorDestroy("Q600140Trigger")
    this:ActorDestroy("Q6001FFTrigger")
    this:ActorDestroy("Q600121Trigger_1")
    this:ActorDestroy("Q600110Trigger_1")
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1204
    local n2 = 2
    local tbl = {}
    local n3 = 20011
    local n4 = 20012
    tbl[1] = 20010
    tbl[2] = n3
    tbl[3] = n4
    banCrowdNpc(v2, n, n2, tbl, false, true)
end

function Quest6001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 600125)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 600129)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 600130)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 600135)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 600142)
    elseif arg1 == 5 then
        actorUtils.FinishQuestID(false, 600147)
    end
end

function Quest6001:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6001:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6001:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6001:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6001:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6001:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6001:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest6001:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest6001:OnSubStart600101(arg1)
    print("OnSubStart600101")
    this:NpcCreateWithNoBlack(npcs.Npc15381.id, 0, 5, 600101, true, 600101)
end

function Quest6001:OnSubFinish600101(arg1)
    print("OnSubFinish600101")
    this:NpcDestroyImmediately(1204, npcs.Npc15381.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600101, nil, nil, nil)
end

function Quest6001:OnSubStart600102(arg1)
    print("OnSubStart600102")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600102, 0, 20, 1, npcs.Npc15380.id)
    this:CancelStoryByQuest(110600100)
end

function Quest6001:OnSubFinish600102(arg1)
    print("OnSubFinish600102")
    this:SafeDestroyQuestNpc(npcs.Npc15380.alias, 3)
end

function Quest6001:OnSubStart600103(arg1)
    print("OnSubStart600103")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600100)
        globalActor:DisablePaimonInProfilePage({3})
    end)
end

function Quest6001:OnSubFinish600103(arg1)
    print("OnSubFinish600103")
    this:CancelStoryByQuest(110600100)
end

function Quest6001:OnSubFailed600103(arg1)
    print("OnSubFailed600103")
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest6001:OnSubStart600105(arg1)
    print("OnSubStart600105")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 30, 600105)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest6001:OnSubFinish600105(arg1)
    print("OnSubFinish600105")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
end

function Quest6001:OnSubFailed600105(arg1)
    print("OnSubFailed600105")
    globalActor:ResumePaimonInProfilePage({3})
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:ActorDestroy("Q600105N1318Trigger")
end

function Quest6001:OnSubStart600130(arg1)
    print("OnSubStart600130")
end

function Quest6001:OnSubFinish600130(arg1)
    print("OnSubFinish600130")
end

function Quest6001:OnSubStart600135(arg1)
    print("OnSubStart600135")
end

function Quest6001:OnSubFinish600135(arg1)
    print("OnSubFinish600135")
end

function Quest6001:OnSubStart600104(arg1)
    print("OnSubStart600104")
    globalActor:DisablePaimonInProfilePage({3})
    actorMgr:CreateActorWithPos("Q6001FFTrigger", "Actor/Gadget/Q6001FFTrigger", 70900002, 0, points._Q6001FFTriggerPoint_.pos, points._Q6001FFTriggerPoint_.rot, true, false, 3)
end

function Quest6001:OnSubFinish600104(arg1)
    print("OnSubFinish600104")
    globalActor:ResumePaimonInProfilePage({3})
    this:ActorDestroy("Q6001FFTrigger")
end

function Quest6001:OnSubStart600106(arg1)
    print("OnSubStart600106")
    this:NpcCreateWithNpcTrigger(npcs.Npc15381.id, 0, 10, 600106)
end

function Quest6001:OnSubFinish600106(arg1)
    print("OnSubFinish600106")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_600103, nil)
    end)
end

function Quest6001:OnSubStart600108(arg1)
    print("OnSubStart600108")
    this:DailyNpcSafeHideSelf(npcs.Npc7108.alias, true, 1)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600110)
    end)

    globalActor:DisablePaimonInProfilePage({3})
end

function Quest6001:OnSubFinish600108(arg1)
    print("OnSubFinish600108")
    this:CancelStoryByQuest(110600110)
end

function Quest6001:OnSubFailed600108(arg1)
    print("OnSubFailed600108")
    globalActor:ResumePaimonInProfilePage({3})
    this:CancelStoryByQuest(110600110)
    this:LightNotifyTo(npcs.Npc7108.alias, 0, true)
end

function Quest6001:OnSubStart600107(arg1)
    print("OnSubStart600107")
    this:DailyNpcSafeHideSelf(npcs.Npc7108.alias, true, 1)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600101)
    end)

    globalActor:DisablePaimonInProfilePage({3})
end

function Quest6001:OnSubFinish600107(arg1)
    print("OnSubFinish600107")
    this:CancelStoryByQuest(110600101)
end

function Quest6001:OnSubFailed600107(arg1)
    print("OnSubFailed600107")
    globalActor:ResumePaimonInProfilePage({3})
    this:CancelStoryByQuest(110600101)
    this:LightNotifyTo(npcs.Npc7108.alias, 0, true)
end

function Quest6001:OnSubStart600110(arg1)
    print("OnSubStart600110")
    this:DailyNpcSafeHideSelf(npcs.Npc7108.alias, true, 1)
    actorMgr:CreateActorWithPos("Q600110Trigger", "Actor/Gadget/Q600110Trigger", 70900002, 0, points._Q600110TriggerPoint_.pos, points._Q600110TriggerPoint_.rot, true, false, 3)
    this:ClearNarratorTask()
    actorMgr:CreateActorWithPos("Q600110Trigger_1", "Actor/Gadget/Q600110Trigger_1", 70900002, 0, points._Q600110Trigger_1Point_.pos, points._Q600110Trigger_1Point_.rot, true, false, 3)
end

function Quest6001:OnSubFinish600110(arg1)
    print("OnSubFinish600110")
    this:LightNotifyTo(npcs.Npc7108.alias, 0, true)
    this:ActorDestroy("Q600110Trigger_1")
end

function Quest6001:OnSubStart600111(arg1)
    print("OnSubStart600111")
    this:DeployStoryByQuest(110600102)
end

function Quest6001:OnSubFinish600111(arg1)
    print("OnSubFinish600111")
end

function Quest6001:OnSubFailed600111(arg1)
    print("OnSubFailed600111")
    this:CancelStoryByQuest(110600102)
end

function Quest6001:OnSubStart600112(arg1)
    print("OnSubStart600112")
    this:NpcCreateWithNpcTrigger(npcs.Npc15381.id, 0, 10, 600112)
end

function Quest6001:OnSubFinish600112(arg1)
    print("OnSubFinish600112")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20277)
    this:CancelStoryByQuest(110600102)
end

function Quest6001:OnSubFailed600112(arg1)
    print("OnSubFailed600112")
    this:ActorDestroy("Q600112N15381Trigger")
    this:CancelStoryByQuest(110600102)
end

function Quest6001:OnSubStart600113(arg1)
    print("OnSubStart600113")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600103)
    end)
end

function Quest6001:OnSubFinish600113(arg1)
    print("OnSubFinish600113")
end

function Quest6001:OnSubFailed600113(arg1)
    print("OnSubFailed600113")
    this:CancelStoryByQuest(110600103)
end

function Quest6001:OnSubStart600122(arg1)
    print("OnSubStart600122")
    this:DeployStoryByQuest(110600103)
end

function Quest6001:OnSubFinish600122(arg1)
    print("OnSubFinish600122")
    this:CancelStoryByQuest(110600103)
end

function Quest6001:OnSubFailed600122(arg1)
    print("OnSubFailed600122")
    this:CancelStoryByQuest(110600103)
end

function Quest6001:OnSubStart600123(arg1)
    print("OnSubStart600123")
    this:NpcCreateWithNoBlack(npcs.Npc15381.id, 0, 20, 600123, true, 600111)
end

function Quest6001:OnSubFinish600123(arg1)
    print("OnSubFinish600123")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20277)
end

function Quest6001:OnSubFailed600123(arg1)
    print("OnSubFailed600123")
    this:ActorDestroy("Q600123N15381Trigger")
end

function Quest6001:OnSubStart600114(arg1)
    print("OnSubStart600114")
    this:CreateLocalGadget(73072033, "1", points.Q600114_Gadget73072033_1_Point.pos, points.Q600114_Gadget73072033_1_Point.rot, 20277, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600106)
    end)
end

function Quest6001:OnSubFinish600114(arg1)
    print("OnSubFinish600114")
    this:RemoveLocalGadget(73072033, "1")
    this:CancelStoryByQuest(110600106)
end

function Quest6001:OnSubFailed600114(arg1)
    print("OnSubFailed600114")
    this:CancelStoryByQuest(110600106)
    this:RemoveLocalGadget(73072033, "1")
end

function Quest6001:OnSubStart600115(arg1)
    print("OnSubStart600115")
end

function Quest6001:OnSubFinish600115(arg1)
    print("OnSubFinish600115")
end

function Quest6001:OnSubStart600124(arg1)
    print("OnSubStart600124")
end

function Quest6001:OnSubFinish600124(arg1)
    print("OnSubFinish600124")
end

function Quest6001:OnSubStart600128(arg1)
    print("OnSubStart600128")
end

function Quest6001:OnSubFinish600128(arg1)
    print("OnSubFinish600128")
end

function Quest6001:OnSubStart600141(arg1)
    print("OnSubStart600141")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(600141, 0, 30, 2, npcs.Npc15381.id)
end

function Quest6001:OnSubFinish600141(arg1)
    print("OnSubFinish600141")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20277)
end

function Quest6001:OnSubFailed600141(arg1)
    print("OnSubFailed600141")
    this:ActorDestroy("Q600141N15381Trigger")
end

function Quest6001:OnSubStart600116(arg1)
    print("OnSubStart600116")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600104)
    end)
end

function Quest6001:OnSubFinish600116(arg1)
    print("OnSubFinish600116")
    this:CancelStoryByQuest(110600104)
end

function Quest6001:OnSubFailed600116(arg1)
    print("OnSubFailed600116")
    this:CancelStoryByQuest(110600104)
end

function Quest6001:OnSubStart600129(arg1)
    print("OnSubStart600129")
end

function Quest6001:OnSubFinish600129(arg1)
    print("OnSubFinish600129")
end

function Quest6001:OnSubStart600117(arg1)
    print("OnSubStart600117")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600107)
    end)
end

function Quest6001:OnSubFinish600117(arg1)
    print("OnSubFinish600117")
    this:QuestNarratorTask(datas.NarratorWithId_600107, nil)
end

function Quest6001:OnSubFailed600117(arg1)
    print("OnSubFailed600117")
    this:CancelStoryByQuest(110600107)
end

function Quest6001:OnSubStart600109(arg1)
    print("OnSubStart600109")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600107)
    end)
end

function Quest6001:OnSubFinish600109(arg1)
    print("OnSubFinish600109")
    this:CancelStoryByQuest(110600107)
end

function Quest6001:OnSubFailed600109(arg1)
    print("OnSubFailed600109")
    this:CancelStoryByQuest(110600107)
    this:ClearNarratorTask()
end

function Quest6001:OnSubStart600121(arg1)
    print("OnSubStart600121")
    actorMgr:CreateActorWithPos("Q600121Trigger", "Actor/Gadget/Q600121Trigger", 70900002, 0, points._Q600121TriggerPoint_.pos, points._Q600121TriggerPoint_.rot, true, false, 20277)
    this:DisableMainPageWithConfigByQuest(true, "DisableActionPanel")
    actorMgr:CreateActorWithPos("Q600121Trigger_1", "Actor/Gadget/Q600121Trigger_1", 70900002, 0, points._Q600121Trigger_1Point_.pos, points._Q600121Trigger_1Point_.rot, true, false, 20277)
end

function Quest6001:OnSubFinish600121(arg1)
    print("OnSubFinish600121")
    this:ActorDestroy("Q600121Trigger")
    this:DisableMainPageWithConfigByQuest(false, "DisableActionPanel")
    this:ActorDestroy("Q600121Trigger_1")
end

function Quest6001:OnSubFailed600121(arg1)
    print("OnSubFailed600121")
    this:DisableMainPageWithConfigByQuest(false, "DisableActionPanel")
    this:ActorDestroy("Q600121Trigger")
    this:ActorDestroy("Q600121Trigger_1")
end

function Quest6001:OnSubStart600126(arg1)
    print("OnSubStart600126")
    this:DisableMainPageWithConfigByQuest(true, "DisableActionPanel")
    actorMgr:CreateActorWithPos("Q600121Trigger", "Actor/Gadget/Q600121Trigger", 70900002, 0, points._Q600121TriggerPoint_.pos, points._Q600121TriggerPoint_.rot, true, false, 20277)
    actorMgr:CreateActorWithPos("Q600121Trigger_1", "Actor/Gadget/Q600121Trigger_1", 70900002, 0, points._Q600121Trigger_1Point_.pos, points._Q600121Trigger_1Point_.rot, true, false, 20277)
end

function Quest6001:OnSubFinish600126(arg1)
    print("OnSubFinish600126")
    this:DisableMainPageWithConfigByQuest(false, "DisableActionPanel")
    this:ActorDestroy("Q600121Trigger")
    this:ActorDestroy("Q600121Trigger_1")
end

function Quest6001:OnSubFailed600126(arg1)
    print("OnSubFailed600126")
    this:DisableMainPageWithConfigByQuest(false, "DisableActionPanel")
    this:ActorDestroy("Q600121Trigger")
    this:ActorDestroy("Q600121Trigger_1")
end

function Quest6001:OnSubStart600118(arg1)
    print("OnSubStart600118")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600118, 0, 15, 1, npcs.Npc15381.id)
end

function Quest6001:OnSubFinish600118(arg1)
    print("OnSubFinish600118")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20277)
end

function Quest6001:OnSubFailed600118(arg1)
    print("OnSubFailed600118")
    this:ActorDestroy("Q600118N15381Trigger")
end

function Quest6001:OnSubStart600119(arg1)
    print("OnSubStart600119")
    this:CreateLocalGadget(73072032, "1", points.Q600118_Gadget73072032_1_Point.pos, points.Q600118_Gadget73072032_1_Point.rot, 20277, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600109)
    end)
end

function Quest6001:OnSubFinish600119(arg1)
    print("OnSubFinish600119")
    this:RemoveLocalGadget(73072032, "1")
    this:CancelStoryByQuest(110600109)
end

function Quest6001:OnSubFailed600119(arg1)
    print("OnSubFailed600119")
    this:CancelStoryByQuest(110600109)
    this:RemoveLocalGadget(73072032, "1")
end

function Quest6001:OnSubStart600127(arg1)
    print("OnSubStart600127")
    this:CreateLocalGadget(73072032, "1", points.Q600118_Gadget73072032_1_Point.pos, points.Q600118_Gadget73072032_1_Point.rot, 20277, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600109)
    end)
end

function Quest6001:OnSubFinish600127(arg1)
    print("OnSubFinish600127")
    this:RemoveLocalGadget(73072032, "1")
    this:CancelStoryByQuest(110600109)
end

function Quest6001:OnSubFailed600127(arg1)
    print("OnSubFailed600127")
    this:CancelStoryByQuest(110600109)
    this:RemoveLocalGadget(73072032, "1")
end

function Quest6001:OnSubStart600146(arg1)
    print("OnSubStart600146")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600146, 0, 25, 1, npcs.Npc15381.id)
end

function Quest6001:OnSubFinish600146(arg1)
    print("OnSubFinish600146")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20277)
end

function Quest6001:OnSubFailed600146(arg1)
    print("OnSubFailed600146")
    this:ActorDestroy("Q600146N15381Trigger")
end

function Quest6001:OnSubStart600120(arg1)
    print("OnSubStart600120")
    this:NpcCreateWithNoBlack(npcs.Npc15381.id, 0, 20, 600120, true, 600120)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600108)
    end)
end

function Quest6001:OnSubFinish600120(arg1)
    print("OnSubFinish600120")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 20277)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600120, nil, nil, nil)
    this:CancelStoryByQuest(110600108)
    this:ActorDestroy("Q600110Trigger")
end

function Quest6001:OnSubFailed600120(arg1)
    print("OnSubFailed600120")
    this:ActorDestroy("Q600120N15381Trigger")
    this:CancelStoryByQuest(110600108)
end

function Quest6001:OnSubStart600131(arg1)
    print("OnSubStart600131")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600131, 0, 20, 1, npcs.Npc1314.id)
    this:NotifyTo(npcs.Npc7108.alias, 1, true)
end

function Quest6001:OnSubFinish600131(arg1)
    print("OnSubFinish600131")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
    this:LightNotifyTo(npcs.Npc7108.alias, 0, true)
end

function Quest6001:OnSubStart600132(arg1)
    print("OnSubStart600132")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600132, 0, 10, 1, npcs.Npc15381.id)
end

function Quest6001:OnSubFinish600132(arg1)
    print("OnSubFinish600132")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 1204)
end

function Quest6001:OnSubStart600133(arg1)
    print("OnSubStart600133")
    this:NpcCreateWithNoBlack(npcs.Npc15381.id, 0, 5, 600133, true, 600133)
    this:CreateQuestNpc(arg1, npcs.Npc15383.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15384.id, 0, false, 0)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1204
    local n2 = 2
    local tbl = {}
    local n3 = 20011
    local n4 = 20012
    tbl[1] = 20010
    tbl[2] = n3
    tbl[3] = n4
    banCrowdNpc(v2, n, n2, tbl, true, true)
    this:GetQuestNpcActor(npcs.Npc15383.alias, 6001):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc15384.alias, 6001):SitOnChair(0, false)
end

function Quest6001:OnSubFinish600133(arg1)
    print("OnSubFinish600133")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 1204)
    this:SafeDestroyQuestNpc(npcs.Npc15383.alias, 1204)
    this:SafeDestroyQuestNpc(npcs.Npc15384.alias, 1204)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1204
    local n2 = 2
    local tbl = {}
    local n3 = 20011
    local n4 = 20012
    tbl[1] = 20010
    tbl[2] = n3
    tbl[3] = n4
    banCrowdNpc(v2, n, n2, tbl, false, true)
end

function Quest6001:OnSubStart600134(arg1)
    print("OnSubStart600134")
    this:NpcCreateWithNpcTrigger(npcs.Npc7143.id, 0, 20, 600134)
end

function Quest6001:OnSubFinish600134(arg1)
    print("OnSubFinish600134")
    this:SafeDestroyQuestNpc(npcs.Npc7143.alias, 1205)
end

function Quest6001:OnSubStart600136(arg1)
    print("OnSubStart600136")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600136, 0, 10, 1, npcs.Npc1315.id)
end

function Quest6001:OnSubFinish600136(arg1)
    print("OnSubFinish600136")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
end

function Quest6001:OnSubStart600137(arg1)
    print("OnSubStart600137")
end

function Quest6001:OnSubFinish600137(arg1)
    print("OnSubFinish600137")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_600109, nil)
    end)
end

function Quest6001:OnSubStart600138(arg1)
    print("OnSubStart600138")
    this:CreateLocalGadget(70710185, "1", {x = 2049.493, y = 200.772, z = 10624.61}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest6001:OnSubFinish600138(arg1)
    print("OnSubFinish600138")
end

function Quest6001:OnSubStart600139(arg1)
    print("OnSubStart600139")
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 6001):DoFreeStyle(4600, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q600139Trigger", "Actor/Gadget/Q600139Trigger", 70900002, 0, points._Q600139TriggerPoint_.pos, points._Q600139TriggerPoint_.rot, true, false, 20273)
end

function Quest6001:OnSubFinish600139(arg1)
    print("OnSubFinish600139")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 20273)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600139, nil, nil, nil)
    this:ActorDestroy("Q600139Trigger")
end

function Quest6001:OnSubStart600125(arg1)
    print("OnSubStart600125")
end

function Quest6001:OnSubFinish600125(arg1)
    print("OnSubFinish600125")
end

function Quest6001:OnSubStart600140(arg1)
    print("OnSubStart600140")
    this:DailyNpcSafeHideSelf(npcs.Npc7101.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7107.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc15414.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6001):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6001):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15407.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6001):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(73078102, "1", points.Q600027_Gadget73078102_1_Point.pos, points.Q600027_Gadget73078102_1_Point.rot, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6001):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    actorMgr:CreateActorWithPos("Q600140Trigger", "Actor/Gadget/Q600140Trigger", 70900002, 0, points._Q600140TriggerPoint_.pos, points._Q600140TriggerPoint_.rot, true, false, 3)
end

function Quest6001:OnSubFinish600140(arg1)
    print("OnSubFinish600140")
    this:ActorDestroy("Q600140Trigger")
end

function Quest6001:OnSubStart600143(arg1)
    print("OnSubStart600143")
    this:NpcCreateWithNpcTrigger(npcs.Npc15378.id, 0, 10, 600143)
    this:GetQuestNpcActor(npcs.Npc15378.alias, 6001):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc7101.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7107.alias, true, 1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15414.id, arg1)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6001):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6001):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15407.id, arg1)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6001):DoFreeStyle(1240, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6001):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15825.id, 0, false, 0)
    this:CreateLocalGadget(73078102, "1", points.Q600027_Gadget73078102_1_Point.pos, points.Q600027_Gadget73078102_1_Point.rot, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6001):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
end

function Quest6001:OnSubFinish600143(arg1)
    print("OnSubFinish600143")
    this:SafeDestroyQuestNpc(npcs.Npc15378.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_600143, nil, nil, nil)
end

function Quest6001:OnSubStart600144(arg1)
    print("OnSubStart600144")
    this:NpcCreateWithNpcTrigger(npcs.Npc15381.id, 0, 20, 600144)
    this:DailyNpcSafeHideSelf(npcs.Npc7101.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7107.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6001):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6001):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6001):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15407.alias, 6001):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(73078102, "1", points.Q600027_Gadget73078102_1_Point.pos, points.Q600027_Gadget73078102_1_Point.rot, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15414.alias, 6001):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
end

function Quest6001:OnSubFinish600144(arg1)
    print("OnSubFinish600144")
    this:SafeDestroyQuestNpc(npcs.Npc15381.alias, 3)
    this:LightNotifyTo(npcs.Npc7101.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7107.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc15414.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15407.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15825.alias, 3)
    this:RemoveLocalGadget(73078102, "1")
end

function Quest6001:OnSubStart600145(arg1)
    print("OnSubStart600145")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600145, 0, 30, 1, npcs.Npc1318.id)
end

function Quest6001:OnSubFinish600145(arg1)
    print("OnSubFinish600145")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
end

function Quest6001:OnSubStart600142(arg1)
    print("OnSubStart600142")
end

function Quest6001:OnSubFinish600142(arg1)
    print("OnSubFinish600142")
end

function Quest6001:OnSubStart600147(arg1)
    print("OnSubStart600147")
end

function Quest6001:OnSubFinish600147(arg1)
    print("OnSubFinish600147")
end

return Quest6001
