require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71162 = class("Quest71162", QuestActorProxy)
Quest71162.defaultAlias = "Quest71162"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest71162:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71162:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7116208"] = self.OnSubStart7116208,
        ["7116221"] = self.OnSubStart7116221,
        ["7116209"] = self.OnSubStart7116209,
        ["7116201"] = self.OnSubStart7116201,
        ["7116202"] = self.OnSubStart7116202,
        ["7116217"] = self.OnSubStart7116217,
        ["7116203"] = self.OnSubStart7116203,
        ["7116205"] = self.OnSubStart7116205,
        ["7116206"] = self.OnSubStart7116206,
        ["7116218"] = self.OnSubStart7116218,
        ["7116207"] = self.OnSubStart7116207,
        ["7116210"] = self.OnSubStart7116210,
        ["7116211"] = self.OnSubStart7116211,
        ["7116219"] = self.OnSubStart7116219,
        ["7116212"] = self.OnSubStart7116212,
        ["7116213"] = self.OnSubStart7116213,
        ["7116214"] = self.OnSubStart7116214,
        ["7116220"] = self.OnSubStart7116220,
        ["7116215"] = self.OnSubStart7116215,
        ["7116216"] = self.OnSubStart7116216,
        ["7116204"] = self.OnSubStart7116204
    }
end

function Quest71162:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7116208"] = self.OnSubFinish7116208,
        ["7116221"] = self.OnSubFinish7116221,
        ["7116209"] = self.OnSubFinish7116209,
        ["7116201"] = self.OnSubFinish7116201,
        ["7116202"] = self.OnSubFinish7116202,
        ["7116217"] = self.OnSubFinish7116217,
        ["7116203"] = self.OnSubFinish7116203,
        ["7116205"] = self.OnSubFinish7116205,
        ["7116206"] = self.OnSubFinish7116206,
        ["7116218"] = self.OnSubFinish7116218,
        ["7116207"] = self.OnSubFinish7116207,
        ["7116210"] = self.OnSubFinish7116210,
        ["7116211"] = self.OnSubFinish7116211,
        ["7116219"] = self.OnSubFinish7116219,
        ["7116212"] = self.OnSubFinish7116212,
        ["7116213"] = self.OnSubFinish7116213,
        ["7116214"] = self.OnSubFinish7116214,
        ["7116220"] = self.OnSubFinish7116220,
        ["7116215"] = self.OnSubFinish7116215,
        ["7116216"] = self.OnSubFinish7116216,
        ["7116204"] = self.OnSubFinish7116204
    }
end

function Quest71162:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7116217"] = self.OnSubFailed7116217,
        ["7116218"] = self.OnSubFailed7116218,
        ["7116219"] = self.OnSubFailed7116219,
        ["7116220"] = self.OnSubFailed7116220
    }
end

function Quest71162:Start()
    print("Start")
end

function Quest71162:OnDestroy()
    print("OnDestroy")
end

function Quest71162:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71162:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71162:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1323.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13890.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30897.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16256.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16257.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2623.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2148.alias, 3)
    this:LightNotifyTo(npcs.Npc2045.alias, 0, true)
    this:ActorDestroy("Q7116218Trigger", nil)
    this:ActorDestroy("Q7116219Trigger_01", nil)
    this:ActorDestroy("Q7116219Trigger_02", nil)
    this:ActorDestroy("Q7116218Trigger_01", nil)
    this:ActorDestroy("Q7116220Trigger_01", nil)
    this:ActorDestroy("Q7116220Trigger_02", nil)
    this:ActorDestroy("Q7116220Trigger03", nil)
    this:ActorDestroy("Q7116219Trigger_03", nil)
    this:ActorDestroy("Q7116218Trigger_03", nil)
    this:DestroyNpcTrigger("Q7116201N1323Trigger")
    this:DestroyNpcTrigger("Q7116203N13890Trigger")
    this:DestroyNpcTrigger("Q7116205N1323Trigger")
    this:DestroyNpcTrigger("Q7116207N30897Trigger")
    this:DestroyNpcTrigger("Q7116209N1323Trigger")
    this:DestroyNpcTrigger("Q7116210N16256Trigger")
    this:DestroyNpcTrigger("Q7116212N1021Trigger")
    this:DestroyNpcTrigger("Q7116213N1323Trigger")
    this:DestroyNpcTrigger("Q7116215N10204Trigger")
    this:DestroyNpcTrigger("Q7116216N2623Trigger")
    this:DestroyNpcTrigger("Q7116221N2148Trigger")
    this:BanCrowdNpc(3107, 27, nil, false, true)
    this:BanCrowdNpc(3115, 12, nil, false, true)
    this:CancelStoryByQuest(147116217)
end

function Quest71162:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7116218Trigger", nil)
    this:ActorDestroy("Q7116219Trigger_01", nil)
    this:ActorDestroy("Q7116219Trigger_02", nil)
    this:ActorDestroy("Q7116218Trigger_01", nil)
    this:ActorDestroy("Q7116220Trigger_01", nil)
    this:ActorDestroy("Q7116220Trigger_02", nil)
    this:ActorDestroy("Q7116220Trigger03", nil)
    this:ActorDestroy("Q7116219Trigger_03", nil)
    this:ActorDestroy("Q7116218Trigger_03", nil)
    this:BanCrowdNpc(3107, 27, nil, false, true)
    this:BanCrowdNpc(3115, 12, nil, false, true)
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(false)
    this:CancelStoryByQuest(147116217)
end

function Quest71162:ActorDestroy(arg1, arg2)
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

function Quest71162:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest71162:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71162:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest71162:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest71162:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest71162:OnSubStart7116208(arg1)
    print("OnSubStart7116208")
end

function Quest71162:OnSubFinish7116208(arg1)
    print("OnSubFinish7116208")
    this:QuestNarratorTask(datas.NarratorWithId7116201, nil)
end

function Quest71162:OnSubStart7116221(arg1)
    print("OnSubStart7116221")
    this:NpcCreateWithNpcTrigger(npcs.Npc2148.id, 0, 10, 7116221)
    this:DailyNpcSafeHideSelf(npcs.Npc2045.alias, true, 1)
end

function Quest71162:OnSubFinish7116221(arg1)
    print("OnSubFinish7116221")
    this:NpcDestroyImmediately(3, npcs.Npc2148.alias)
    this:ClearNarratorTask()
end

function Quest71162:OnSubStart7116209(arg1)
    print("OnSubStart7116209")
    this:NpcCreateWithNpcTrigger(npcs.Npc1323.id, 0, 15, 7116209)
    this:CreateQuestNpc(arg1, npcs.Npc1045.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2045.alias, true, 1)
    this:BanCrowdNpc(3107, 27, nil, true, true)
end

function Quest71162:OnSubFinish7116209(arg1)
    print("OnSubFinish7116209")
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1045.alias)
end

function Quest71162:OnSubStart7116201(arg1)
    print("OnSubStart7116201")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7116201, 0, 10, 0.5, npcs.Npc1323.id)
    this:CreateQuestNpc(arg1, npcs.Npc13890.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2045.alias, true, 1)
    this:BanCrowdNpc(3107, 27, nil, true, true)
    this:BanCrowdNpc(3115, 12, nil, true, true)
end

function Quest71162:OnSubFinish7116201(arg1)
    print("OnSubFinish7116201")
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
    this:BanCrowdNpc(3107, 27, nil, false, true)
end

function Quest71162:OnSubStart7116202(arg1)
    print("OnSubStart7116202")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1323.id, 0, false, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc2045.alias, true, 1)
        this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SitOnChair(0, true)
    end)

    this:ShowBlackScreen(0, 3, 0.5, nil, nil, nil, "", false, true)
end

function Quest71162:OnSubFinish7116202(arg1)
    print("OnSubFinish7116202")
end

function Quest71162:OnSubStart7116217(arg1)
    print("OnSubStart7116217")
    this:DailyNpcSafeHideSelf(npcs.Npc2045.alias, true, 1)
    this:DeployStoryByQuest(147116217)
    globalActor:DisablePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(true)
end

function Quest71162:OnSubFinish7116217(arg1)
    print("OnSubFinish7116217")
    this:NpcDestroyWithDither(3, npcs.Npc1323.alias)
    this:LightNotifyTo(npcs.Npc2045.alias, 0, true)
    this:CancelStoryByQuest(147116217)
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(false)
end

function Quest71162:OnSubFailed7116217(arg1)
    print("OnSubFailed7116217")
    this:CancelStoryByQuest(147116217)
    this:ClearNarratorTask()
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(false)
end

function Quest71162:OnSubStart7116203(arg1)
    print("OnSubStart7116203")
    this:NpcCreateWithNpcTrigger(npcs.Npc13890.id, 0, 10, 7116203)
    this:BanCrowdNpc(3115, 12, nil, true, true)
end

function Quest71162:OnSubFinish7116203(arg1)
    print("OnSubFinish7116203")
end

function Quest71162:OnSubStart7116205(arg1)
    print("OnSubStart7116205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7116205, 0, 10, 0.5, npcs.Npc1323.id)
    this:CreateQuestNpc(arg1, npcs.Npc30897.id, 0, false, 0)
    this:BanCrowdNpc(3115, 12, nil, true, true)
end

function Quest71162:OnSubFinish7116205(arg1)
    print("OnSubFinish7116205")
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
    this:NpcDestroyImmediately(3, npcs.Npc13890.alias)
    this:BanCrowdNpc(3115, 12, nil, false, true)
end

function Quest71162:OnSubStart7116206(arg1)
    print("OnSubStart7116206")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1323.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SitOnChair(0, true)
    end)

    this:ShowBlackScreen(0, 3, 0.5, nil, nil, nil, "", false, true)
end

function Quest71162:OnSubFinish7116206(arg1)
    print("OnSubFinish7116206")
end

function Quest71162:OnSubStart7116218(arg1)
    print("OnSubStart7116218")
    actorMgr:CreateActorWithPos("Q7116218Trigger", "Actor/Gadget/Q7116218Trigger", 70900002, 0, points._Q7116218TriggerPoint_.pos, points._Q7116218TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7116218Trigger_01", "Actor/Gadget/Q7116218Trigger_01", 70900002, 0, points._Q7116218Trigger_01Point_.pos, points._Q7116218Trigger_01Point_.rot, true, false, 3, nil, 0, 0)
    globalActor:DisablePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(true)
    actorMgr:CreateActorWithPos("Q7116218Trigger_03", "Actor/Gadget/Q7116218Trigger_03", 70900002, 0, points._Q7116218Trigger_03Point_.pos, points._Q7116218Trigger_03Point_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(147116217)
end

function Quest71162:OnSubFinish7116218(arg1)
    print("OnSubFinish7116218")
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
    this:ActorDestroy("Q7116218Trigger", nil)
    this:ActorDestroy("Q7116218Trigger_01", nil)
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(false)
    this:ActorDestroy("Q7116218Trigger_03", nil)
    this:CancelStoryByQuest(147116217)
end

function Quest71162:OnSubFailed7116218(arg1)
    print("OnSubFailed7116218")
    this:ActorDestroy("Q7116218Trigger", nil)
    this:ActorDestroy("Q7116218Trigger_01", nil)
    this:ClearNarratorTask()
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(false)
    this:ActorDestroy("Q7116218Trigger_03", nil)
    this:CancelStoryByQuest(147116217)
end

function Quest71162:OnSubStart7116207(arg1)
    print("OnSubStart7116207")
    this:NpcCreateWithNpcTrigger(npcs.Npc30897.id, 0, 20, 7116207)
end

function Quest71162:OnSubFinish7116207(arg1)
    print("OnSubFinish7116207")
    this:NpcDestroyImmediately(3, npcs.Npc30897.alias)
end

function Quest71162:OnSubStart7116210(arg1)
    print("OnSubStart7116210")
    this:NpcCreateWithNpcTrigger(npcs.Npc16256.id, 0, 15, 7116210)
    this:GetQuestNpcActor(npcs.Npc16256.alias, 71162):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16257.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16257.alias, 71162):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest71162:OnSubFinish7116210(arg1)
    print("OnSubFinish7116210")
    this:NpcDestroyImmediately(3, npcs.Npc16256.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16257.alias)
end

function Quest71162:OnSubStart7116211(arg1)
    print("OnSubStart7116211")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1323.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SitOnChair(0, true)
    end)

    this:ShowBlackScreen(0, 3, 0.5, nil, nil, nil, "", false, true)
end

function Quest71162:OnSubFinish7116211(arg1)
    print("OnSubFinish7116211")
end

function Quest71162:OnSubStart7116219(arg1)
    print("OnSubStart7116219")
    actorMgr:CreateActorWithPos("Q7116219Trigger_01", "Actor/Gadget/Q7116219Trigger_01", 70900002, 0, points._Q7116219Trigger_01Point_.pos, points._Q7116219Trigger_01Point_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7116219Trigger_02", "Actor/Gadget/Q7116219Trigger_02", 70900002, 0, points._Q7116219Trigger_02Point_.pos, points._Q7116219Trigger_02Point_.rot, true, false, 3, nil, 0, 0)
    globalActor:DisablePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(true)
    actorMgr:CreateActorWithPos("Q7116219Trigger_03", "Actor/Gadget/Q7116219Trigger_03", 70900002, 0, points._Q7116219Trigger_03Point_.pos, points._Q7116219Trigger_03Point_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(147116217)
end

function Quest71162:OnSubFinish7116219(arg1)
    print("OnSubFinish7116219")
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
    this:ActorDestroy("Q7116219Trigger_01", nil)
    this:ActorDestroy("Q7116219Trigger_02", nil)
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(false)
    this:ActorDestroy("Q7116219Trigger_03", nil)
    this:CancelStoryByQuest(147116217)
end

function Quest71162:OnSubFailed7116219(arg1)
    print("OnSubFailed7116219")
    this:ActorDestroy("Q7116219Trigger_01", nil)
    this:ActorDestroy("Q7116219Trigger_02", nil)
    this:ClearNarratorTask()
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(false)
    this:ActorDestroy("Q7116219Trigger_03", nil)
    this:CancelStoryByQuest(147116217)
end

function Quest71162:OnSubStart7116212(arg1)
    print("OnSubStart7116212")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7116212, 0, 40, 0.5, npcs.Npc1021.id)
end

function Quest71162:OnSubFinish7116212(arg1)
    print("OnSubFinish7116212")
    this:SafeDestroyQuestNpc(npcs.Npc1021.alias, 3)
end

function Quest71162:OnSubStart7116213(arg1)
    print("OnSubStart7116213")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7116213, 0, 10, 0.5, npcs.Npc1323.id)
end

function Quest71162:OnSubFinish7116213(arg1)
    print("OnSubFinish7116213")
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
end

function Quest71162:OnSubStart7116214(arg1)
    print("OnSubStart7116214")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1323.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SitOnChair(0, true)
    end)

    this:ShowBlackScreen(0, 3, 0.5, nil, nil, nil, "", false, true)
end

function Quest71162:OnSubFinish7116214(arg1)
    print("OnSubFinish7116214")
end

function Quest71162:OnSubStart7116220(arg1)
    print("OnSubStart7116220")
    actorMgr:CreateActorWithPos("Q7116220Trigger_01", "Actor/Gadget/Q7116220Trigger_01", 70900002, 0, points._Q7116220Trigger_01Point_.pos, points._Q7116220Trigger_01Point_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7116220Trigger_02", "Actor/Gadget/Q7116220Trigger_02", 70900002, 0, points._Q7116220Trigger_02Point_.pos, points._Q7116220Trigger_02Point_.rot, true, false, 3, nil, 0, 0)
    globalActor:DisablePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(true)
    actorMgr:CreateActorWithPos("Q7116220Trigger03", "Actor/Gadget/Q7116220Trigger03", 70900002, 0, points._Q7116220Trigger03Point_.pos, points._Q7116220Trigger03Point_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(147116217)
end

function Quest71162:OnSubFinish7116220(arg1)
    print("OnSubFinish7116220")
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
    this:ActorDestroy("Q7116220Trigger_01", nil)
    this:ActorDestroy("Q7116220Trigger_02", nil)
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(false)
    this:ActorDestroy("Q7116220Trigger03", nil)
    this:CancelStoryByQuest(147116217)
end

function Quest71162:OnSubFailed7116220(arg1)
    print("OnSubFailed7116220")
    this:ActorDestroy("Q7116220Trigger_01", nil)
    this:ActorDestroy("Q7116220Trigger_02", nil)
    this:ClearNarratorTask()
    globalActor:ResumePaimonInProfilePage({3})
    this:GetQuestNpcActor(npcs.Npc1323.alias, 71162):SetDynamicBone(false)
    this:ActorDestroy("Q7116220Trigger03", nil)
    this:CancelStoryByQuest(147116217)
end

function Quest71162:OnSubStart7116215(arg1)
    print("OnSubStart7116215")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7116215, 0, 15, 0.5, npcs.Xiao.id)
end

function Quest71162:OnSubFinish7116215(arg1)
    print("OnSubFinish7116215")
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
end

function Quest71162:OnSubStart7116216(arg1)
    print("OnSubStart7116216")
    this:NpcCreateWithNpcTrigger(npcs.Npc2623.id, 0, 10, 7116216)
    this:CreateQuestNpc(arg1, npcs.Npc10233.id, 0, false, 0)
end

function Quest71162:OnSubFinish7116216(arg1)
    print("OnSubFinish7116216")
    this:SafeDestroyQuestNpc(npcs.Npc2623.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233.alias, 3)
end

function Quest71162:OnSubStart7116204(arg1)
    print("OnSubStart7116204")
end

function Quest71162:OnSubFinish7116204(arg1)
    print("OnSubFinish7116204")
end

return Quest71162
