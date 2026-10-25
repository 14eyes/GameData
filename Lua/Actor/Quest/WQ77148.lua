require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77148 = class("Quest77148", QuestActorProxy)
Quest77148.defaultAlias = "Quest77148"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77148:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77148:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7714801"] = self.OnSubStart7714801,
        ["7714802"] = self.OnSubStart7714802,
        ["7714805"] = self.OnSubStart7714805,
        ["7714809"] = self.OnSubStart7714809,
        ["7714817"] = self.OnSubStart7714817,
        ["7714818"] = self.OnSubStart7714818,
        ["7714810"] = self.OnSubStart7714810,
        ["7714812"] = self.OnSubStart7714812,
        ["7714811"] = self.OnSubStart7714811,
        ["7714819"] = self.OnSubStart7714819,
        ["7714803"] = self.OnSubStart7714803,
        ["7714804"] = self.OnSubStart7714804,
        ["7714806"] = self.OnSubStart7714806,
        ["7714808"] = self.OnSubStart7714808,
        ["7714821"] = self.OnSubStart7714821,
        ["7714813"] = self.OnSubStart7714813,
        ["7714814"] = self.OnSubStart7714814,
        ["7714815"] = self.OnSubStart7714815,
        ["7714822"] = self.OnSubStart7714822,
        ["7714823"] = self.OnSubStart7714823,
        ["7714824"] = self.OnSubStart7714824,
        ["7714816"] = self.OnSubStart7714816,
        ["7714807"] = self.OnSubStart7714807,
        ["7714820"] = self.OnSubStart7714820
    }
end

function Quest77148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7714801"] = self.OnSubFinish7714801,
        ["7714802"] = self.OnSubFinish7714802,
        ["7714805"] = self.OnSubFinish7714805,
        ["7714809"] = self.OnSubFinish7714809,
        ["7714817"] = self.OnSubFinish7714817,
        ["7714818"] = self.OnSubFinish7714818,
        ["7714810"] = self.OnSubFinish7714810,
        ["7714812"] = self.OnSubFinish7714812,
        ["7714811"] = self.OnSubFinish7714811,
        ["7714819"] = self.OnSubFinish7714819,
        ["7714803"] = self.OnSubFinish7714803,
        ["7714804"] = self.OnSubFinish7714804,
        ["7714806"] = self.OnSubFinish7714806,
        ["7714808"] = self.OnSubFinish7714808,
        ["7714821"] = self.OnSubFinish7714821,
        ["7714813"] = self.OnSubFinish7714813,
        ["7714814"] = self.OnSubFinish7714814,
        ["7714815"] = self.OnSubFinish7714815,
        ["7714822"] = self.OnSubFinish7714822,
        ["7714823"] = self.OnSubFinish7714823,
        ["7714824"] = self.OnSubFinish7714824,
        ["7714816"] = self.OnSubFinish7714816,
        ["7714807"] = self.OnSubFinish7714807,
        ["7714820"] = self.OnSubFinish7714820
    }
end

function Quest77148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7714802"] = self.OnSubFailed7714802,
        ["7714809"] = self.OnSubFailed7714809,
        ["7714817"] = self.OnSubFailed7714817,
        ["7714818"] = self.OnSubFailed7714818,
        ["7714812"] = self.OnSubFailed7714812,
        ["7714811"] = self.OnSubFailed7714811,
        ["7714819"] = self.OnSubFailed7714819,
        ["7714803"] = self.OnSubFailed7714803,
        ["7714804"] = self.OnSubFailed7714804,
        ["7714806"] = self.OnSubFailed7714806
    }
end

function Quest77148:Start()
    print("Start")
end

function Quest77148:OnDestroy()
    print("OnDestroy")
end

function Quest77148:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77148:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77148:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77148:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7714803Trigger_Finish", 77148)
    this:ActorDestroy("Q7714803Trigger_Fail", 77148)
    this:ActorDestroy("Q7714806Trigger_1", 77148)
    this:ActorDestroy("Q7714801Trigger", nil)
    this:ActorDestroy("Q7714805Trigger", 77148)
    this:ActorDestroy("Q7714809Trigger_Finish", nil)
    this:ActorDestroy("Q7714809Trigger_Fail", nil)
    this:ActorDestroy("Q7714817_Fail", 77148)
    this:ActorDestroy("Q7714819Trigger", 77148)
end

function Quest77148:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77148:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77148:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77148:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77148:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77148:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77148:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77148:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest77148:OnSubStart7714801(arg1)
    print("OnSubStart7714801")
    this:CreateQuestNpc(arg1, npcs.Npc7705.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7705.alias, 77148):DoFreeStyle(4282, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc22484.id, 0, 20, 7714801)
    this:GetQuestNpcActor(npcs.Npc22484.alias, 77148):DoFreeStyle(1141, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22614.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22614.alias, 77148):DoFreeStyle(5, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22820.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22820.alias, 77148):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22821.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22821.alias, 77148):DoFreeStyle(4511, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22822.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22822.alias, 77148):DoFreeStyle(5, true, nil, true, true, false, false)
end

function Quest77148:OnSubFinish7714801(arg1)
    print("OnSubFinish7714801")
    this:NpcDestroyImmediately(3, npcs.Npc22484.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22614.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22820.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22821.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22822.alias)
    this:QuestNarratorTask(datas.NarratorWithId_97715303, nil)
end

function Quest77148:OnSubStart7714802(arg1)
    print("OnSubStart7714802")
    this:CreateQuestNpc(arg1, npcs.Npc7705.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7705.alias, 77148):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest77148:OnSubFinish7714802(arg1)
    print("OnSubFinish7714802")
end

function Quest77148:OnSubFailed7714802(arg1)
    print("OnSubFailed7714802")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714805(arg1)
    print("OnSubStart7714805")
    this:CreateQuestNpc(arg1, npcs.Npc7705.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7705.alias, 77148):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22484.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714805, 0, 30, 1, npcs.Npc22476.id)
end

function Quest77148:OnSubFinish7714805(arg1)
    print("OnSubFinish7714805")
    this:NpcDestroyImmediately(3, npcs.Npc22476.alias)
end

function Quest77148:OnSubStart7714809(arg1)
    print("OnSubStart7714809")
    this:CreateQuestNpc(arg1, npcs.Npc22484.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7705.id, 0, false, 0)
    this:CallDelay(1, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc22484.alias, 77148)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 7, 4, -1, function(arg1)
            actorMgr:CreateActorWithPos("Q7714809Trigger_Finish", "Actor/Gadget/Q7714809Trigger_Finish", 70900002, 0, points._Q7714809Trigger_FinishPoint_.pos, points._Q7714809Trigger_FinishPoint_.rot, true, false, 3, nil, 0, 77148)
        end, nil, nil, nil, nil, nil, false)
    end)

    actorMgr:CreateActorWithPos("Q7714809Trigger_Fail", "Actor/Gadget/Q7714809Trigger_Fail", 70900002, 0, points._Q7714809Trigger_FailPoint_.pos, points._Q7714809Trigger_FailPoint_.rot, true, false, 3, nil, 0, 77148)
end

function Quest77148:OnSubFinish7714809(arg1)
    print("OnSubFinish7714809")
    this:NpcDestroyWithDither(3, npcs.Npc22484.alias)
    this:GetQuestNpcActor(npcs.Npc22484.alias, 77148):ClearFollowTask()
    this:ActorDestroy("Q7714809Trigger_Fail", nil)
end

function Quest77148:OnSubFailed7714809(arg1)
    print("OnSubFailed7714809")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714817(arg1)
    print("OnSubStart7714817")
    this:CreateQuestNpc(arg1, npcs.Npc22598.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22599.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22598.alias, 77148):RunToRouteTask(datas.RoutePoints22598, function(arg1)
        this:GetQuestNpcActor(npcs.Npc22598.alias, 77148):DoFreeStyle(4190, true, nil, true, true, false, false)
    end, nil, nil, nil)

    this:GetQuestNpcActor(npcs.Npc22599.alias, 77148):RunToRouteTask(datas.RoutePoints22599, function(arg1)
        this:GetQuestNpcActor(npcs.Npc22599.alias, 77148):DoFreeStyle(4121, true, nil, true, true, false, false)
    end, nil, nil, nil)

    actorMgr:CreateActorWithPos("Q7714817_Fail", "Actor/Gadget/Q7714817_Fail", 70900002, 0, points._Q7714817_FailPoint_.pos, points._Q7714817_FailPoint_.rot, true, false, 3, nil, 0, 77148)
end

function Quest77148:OnSubFinish7714817(arg1)
    print("OnSubFinish7714817")
end

function Quest77148:OnSubFailed7714817(arg1)
    print("OnSubFailed7714817")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714818(arg1)
    print("OnSubStart7714818")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714818, 0, 30, 1, npcs.Npc22476.id)
    this:CreateQuestNpc(arg1, npcs.Npc22598.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22599.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22484.id, 0, false, 0)
end

function Quest77148:OnSubFinish7714818(arg1)
    print("OnSubFinish7714818")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22476.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22598.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22599.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22484.alias)
end

function Quest77148:OnSubFailed7714818(arg1)
    print("OnSubFailed7714818")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714810(arg1)
    print("OnSubStart7714810")
    this:CreateQuestNpc(arg1, npcs.Npc7705.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7705.alias, 77148):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest77148:OnSubFinish7714810(arg1)
    print("OnSubFinish7714810")
    this:NpcDestroyImmediately(3, npcs.Npc7705.alias)
end

function Quest77148:OnSubStart7714812(arg1)
    print("OnSubStart7714812")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714812, 0, 20, 1, npcs.Npc22616.id)
end

function Quest77148:OnSubFinish7714812(arg1)
    print("OnSubFinish7714812")
    this:NpcDestroyImmediately(3, npcs.Npc22616.alias)
end

function Quest77148:OnSubFailed7714812(arg1)
    print("OnSubFailed7714812")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714811(arg1)
    print("OnSubStart7714811")
end

function Quest77148:OnSubFinish7714811(arg1)
    print("OnSubFinish7714811")
end

function Quest77148:OnSubFailed7714811(arg1)
    print("OnSubFailed7714811")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714819(arg1)
    print("OnSubStart7714819")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714819, 0, 30, 1, npcs.Npc22476.id)
end

function Quest77148:OnSubFinish7714819(arg1)
    print("OnSubFinish7714819")
    this:NpcDestroyImmediately(3, npcs.Npc22476.alias)
end

function Quest77148:OnSubFailed7714819(arg1)
    print("OnSubFailed7714819")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714803(arg1)
    print("OnSubStart7714803")
end

function Quest77148:OnSubFinish7714803(arg1)
    print("OnSubFinish7714803")
end

function Quest77148:OnSubFailed7714803(arg1)
    print("OnSubFailed7714803")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714804(arg1)
    print("OnSubStart7714804")
end

function Quest77148:OnSubFinish7714804(arg1)
    print("OnSubFinish7714804")
end

function Quest77148:OnSubFailed7714804(arg1)
    print("OnSubFailed7714804")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714806(arg1)
    print("OnSubStart7714806")
    actorMgr:CreateActorWithPos("Q7714806Trigger_1", "Actor/Gadget/Q7714806Trigger_1", 70900002, 0, points._Q7714806Trigger_1Point_.pos, points._Q7714806Trigger_1Point_.rot, true, false, 3, nil, 0, 77148)
end

function Quest77148:OnSubFinish7714806(arg1)
    print("OnSubFinish7714806")
end

function Quest77148:OnSubFailed7714806(arg1)
    print("OnSubFailed7714806")
    this:RecycleAllRes()
end

function Quest77148:OnSubStart7714808(arg1)
    print("OnSubStart7714808")
    this:CreateQuestNpc(arg1, npcs.Npc22481.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714808, 0, 30, 1, npcs.Npc22484.id)
end

function Quest77148:OnSubFinish7714808(arg1)
    print("OnSubFinish7714808")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22481.alias)
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22484.alias)
end

function Quest77148:OnSubStart7714821(arg1)
    print("OnSubStart7714821")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714821, 0, 30, 1, npcs.Npc7705.id)
    this:CreateQuestNpc(arg1, npcs.Npc22639.id, 0, false, 0)
end

function Quest77148:OnSubFinish7714821(arg1)
    print("OnSubFinish7714821")
end

function Quest77148:OnSubStart7714813(arg1)
    print("OnSubStart7714813")
end

function Quest77148:OnSubFinish7714813(arg1)
    print("OnSubFinish7714813")
end

function Quest77148:OnSubStart7714814(arg1)
    print("OnSubStart7714814")
end

function Quest77148:OnSubFinish7714814(arg1)
    print("OnSubFinish7714814")
end

function Quest77148:OnSubStart7714815(arg1)
    print("OnSubStart7714815")
end

function Quest77148:OnSubFinish7714815(arg1)
    print("OnSubFinish7714815")
end

function Quest77148:OnSubStart7714822(arg1)
    print("OnSubStart7714822")
    this:CreateQuestNpc(arg1, npcs.Npc22539.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22539.alias, 77148):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22540.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22540.alias, 77148):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc22601.id, 0, 16, 7714822)
    this:GetQuestNpcActor(npcs.Npc22601.alias, 77148):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest77148:OnSubFinish7714822(arg1)
    print("OnSubFinish7714822")
end

function Quest77148:OnSubStart7714823(arg1)
    print("OnSubStart7714823")
    this:CreateQuestNpc(arg1, npcs.Npc22539.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22539.alias, 77148):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22540.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22540.alias, 77148):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22601.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22601.alias, 77148):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest77148:OnSubFinish7714823(arg1)
    print("OnSubFinish7714823")
end

function Quest77148:OnSubStart7714824(arg1)
    print("OnSubStart7714824")
end

function Quest77148:OnSubFinish7714824(arg1)
    print("OnSubFinish7714824")
end

function Quest77148:OnSubStart7714816(arg1)
    print("OnSubStart7714816")
    this:CreateQuestNpc(arg1, npcs.Npc22539.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22539.alias, 77148):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22540.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22540.alias, 77148):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7714816, 0, 30, 0, npcs.Npc22601.id)
    this:GetQuestNpcActor(npcs.Npc22601.alias, 77148):DoFreeStyle(1270, true, nil, true, true, false, false)
end

function Quest77148:OnSubFinish7714816(arg1)
    print("OnSubFinish7714816")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22539.alias)
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22540.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22601.alias)
    this:QuestNarratorTask(datas.NarratorWithId_97714816, nil)
end

function Quest77148:OnSubStart7714807(arg1)
    print("OnSubStart7714807")
    this:CreateQuestNpc(arg1, npcs.Npc7707.id, 0, false, 0)
end

function Quest77148:OnSubFinish7714807(arg1)
    print("OnSubFinish7714807")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc7707.alias)
end

function Quest77148:OnSubStart7714820(arg1)
    print("OnSubStart7714820")
end

function Quest77148:OnSubFinish7714820(arg1)
    print("OnSubFinish7714820")
end

return Quest77148
