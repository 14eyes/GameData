require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40139 = class("Quest40139", QuestActorProxy)
Quest40139.defaultAlias = "Quest40139"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40139:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40139:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4013913"] = self.OnSubStart4013913,
        ["4013901"] = self.OnSubStart4013901,
        ["4013902"] = self.OnSubStart4013902,
        ["4013920"] = self.OnSubStart4013920,
        ["4013903"] = self.OnSubStart4013903,
        ["4013904"] = self.OnSubStart4013904,
        ["4013921"] = self.OnSubStart4013921,
        ["4013917"] = self.OnSubStart4013917,
        ["4013914"] = self.OnSubStart4013914,
        ["4013915"] = self.OnSubStart4013915,
        ["4013922"] = self.OnSubStart4013922,
        ["4013905"] = self.OnSubStart4013905,
        ["4013911"] = self.OnSubStart4013911,
        ["4013916"] = self.OnSubStart4013916,
        ["4013912"] = self.OnSubStart4013912,
        ["4013906"] = self.OnSubStart4013906,
        ["4013907"] = self.OnSubStart4013907,
        ["4013918"] = self.OnSubStart4013918,
        ["4013919"] = self.OnSubStart4013919,
        ["4013908"] = self.OnSubStart4013908,
        ["4013909"] = self.OnSubStart4013909,
        ["4013910"] = self.OnSubStart4013910
    }
end

function Quest40139:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4013913"] = self.OnSubFinish4013913,
        ["4013901"] = self.OnSubFinish4013901,
        ["4013902"] = self.OnSubFinish4013902,
        ["4013920"] = self.OnSubFinish4013920,
        ["4013903"] = self.OnSubFinish4013903,
        ["4013904"] = self.OnSubFinish4013904,
        ["4013921"] = self.OnSubFinish4013921,
        ["4013917"] = self.OnSubFinish4013917,
        ["4013914"] = self.OnSubFinish4013914,
        ["4013915"] = self.OnSubFinish4013915,
        ["4013922"] = self.OnSubFinish4013922,
        ["4013905"] = self.OnSubFinish4013905,
        ["4013911"] = self.OnSubFinish4013911,
        ["4013916"] = self.OnSubFinish4013916,
        ["4013912"] = self.OnSubFinish4013912,
        ["4013906"] = self.OnSubFinish4013906,
        ["4013907"] = self.OnSubFinish4013907,
        ["4013918"] = self.OnSubFinish4013918,
        ["4013919"] = self.OnSubFinish4013919,
        ["4013908"] = self.OnSubFinish4013908,
        ["4013909"] = self.OnSubFinish4013909,
        ["4013910"] = self.OnSubFinish4013910
    }
end

function Quest40139:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4013920"] = self.OnSubFailed4013920,
        ["4013907"] = self.OnSubFailed4013907,
        ["4013919"] = self.OnSubFailed4013919
    }
end

function Quest40139:Start()
    print("Start")
end

function Quest40139:OnDestroy()
    print("OnDestroy")
end

function Quest40139:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40139:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40139:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13853Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13854Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30474Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13858Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13859Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13856Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1083Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13857Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13890Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2514Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30457Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc30459Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4013902Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013905Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013906Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013910Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013921Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013922Trigger", 3, false)
    this:DestroyNpcTrigger("Q4013901N1016Trigger")
    this:DestroyNpcTrigger("Q4013902N13853Trigger")
    this:DestroyNpcTrigger("Q4013904N1084Trigger")
    this:DestroyNpcTrigger("Q4013905N1084Trigger")
    this:DestroyNpcTrigger("Q4013906N1084Trigger")
    this:DestroyNpcTrigger("Q4013908N13859Trigger")
    this:DestroyNpcTrigger("Q4013909N1084Trigger")
    this:DestroyNpcTrigger("Q4013910N1083Trigger")
    this:DestroyNpcTrigger("Q4013915N1084Trigger")
    this:DestroyNpcTrigger("Q4013916N1084Trigger")
    this:CancelStoryByQuest(134013902)
    this:CancelStoryByQuest(134013901)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    globalActor:ResumePaimonInProfilePage({3})
    this:RemoveLocalGadget(70711484, "1")
    this:LightNotifyTo(npcs.Npc2025Data.alias, 0, true)
end

function Quest40139:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40139:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40139:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest40139:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40139:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40139:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40139:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4013911 then
        actorUtils.FinishQuestID(false, 4013911)
    elseif arg1 == 4013912 then
        actorUtils.FinishQuestID(false, 4013912)
    end
end

function Quest40139:OnSubStart4013913(arg1)
    print("OnSubStart4013913")
    actorUtils.FinishQuestID(false, 4013913)
end

function Quest40139:OnSubFinish4013913(arg1)
    print("OnSubFinish4013913")
    this:NarratorOnlyTaskByData(datas.Narrator_4013999, nil, 40139)
end

function Quest40139:OnSubStart4013901(arg1)
    print("OnSubStart4013901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1016Data.id, 4013901, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc1070Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1016Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc2025Data.alias, 1, true)
end

function Quest40139:OnSubFinish4013901(arg1)
    print("OnSubFinish4013901")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1016Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:ClearNarratorTask()
    actorMgr:DestroyNpcActorByAlias("Npc10051000")
end

function Quest40139:OnSubStart4013902(arg1)
    print("OnSubStart4013902")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc13853Data.id, 4013902, 0, 10)
        this:CreateQuestNpc(arg1, npcs.Npc13854Data.id, 0)
        actorMgr:CreateActorWithPos("Q4013902Trigger", "Actor/Gadget/Q4013902Trigger", 70900002, 0, points.TPos_Q4013902Trigger.pos, points.TPos_Q4013902Trigger.rot, true, false, 3)
        this:GetQuestNpcActor(npcs.Npc13854Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13853Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)

    this:NotifyTo(npcs.Npc2025Data.alias, 1, true)
end

function Quest40139:OnSubFinish4013902(arg1)
    print("OnSubFinish4013902")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13853Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13854Data.alias, 3)
    this:CancelStoryByQuest(134013902)
    globalActor:ResumePaimonInProfilePage({3})
    this:ActorDestroy("Q4013902Trigger")
    actorUtils.FinishQuestID(false, 4013920)
    this:LightNotifyTo(npcs.Npc2025Data.alias, 0, true)
end

function Quest40139:OnSubStart4013920(arg1)
    print("OnSubStart4013920")
end

function Quest40139:OnSubFinish4013920(arg1)
    print("OnSubFinish4013920")
end

function Quest40139:OnSubFailed4013920(arg1)
    print("OnSubFailed4013920")
    this:CancelStoryByQuest(134013902)
    globalActor:ResumePaimonInProfilePage({3})
    this:ActorDestroy("Q4013902Trigger")
    this:NpcDestroy(npcs.PaimonData.alias, 3)
end

function Quest40139:OnSubStart4013903(arg1)
    print("OnSubStart4013903")
    this:CreateQuestNpc(arg1, npcs.Npc30474Data.id, 0)
end

function Quest40139:OnSubFinish4013903(arg1)
    print("OnSubFinish4013903")
end

function Quest40139:OnSubStart4013904(arg1)
    print("OnSubStart4013904")
    this:NpcCreateWithNpcTrigger(npcs.Npc1084Data.id, 4013904, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Npc13858Data.id, 0)
    this:NotifyTo(npcs.Npc30457Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1084Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest40139:OnSubFinish4013904(arg1)
    print("OnSubFinish4013904")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1084Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13858Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1", 2, function(arg1)
            actorUtils.ShowContext("LanternRiteV4MainPage", 0)
        end)
    end)
end

function Quest40139:OnSubStart4013921(arg1)
    print("OnSubStart4013921")
    actorMgr:CreateActorWithPos("Q4013921Trigger", "Actor/Gadget/Q4013921Trigger", 70900002, 0, points.TPos_Q4013921Trigger.pos, points.TPos_Q4013921Trigger.rot, true, false, 3)
end

function Quest40139:OnSubFinish4013921(arg1)
    print("OnSubFinish4013921")
    this:ActorDestroy("Q4013921Trigger")
end

function Quest40139:OnSubStart4013917(arg1)
    print("OnSubStart4013917")
    this:LightNotifyTo(npcs.Npc30457Data.alias, 0, true)
    actorMgr:CreateActorWithPos("Q4013905Trigger", "Actor/Gadget/Q4013905Trigger", 70900002, 0, points.TPos_Q4013905Trigger.pos, points.TPos_Q4013905Trigger.rot, true, false, 3)
end

function Quest40139:OnSubFinish4013917(arg1)
    print("OnSubFinish4013917")
    this:ActorDestroy("Q4013905Trigger")
    actorUtils.FinishQuestID(false, 4013921)
end

function Quest40139:OnSubStart4013914(arg1)
    print("OnSubStart4013914")
end

function Quest40139:OnSubFinish4013914(arg1)
    print("OnSubFinish4013914")
    this:ClearNarratorTask()
end

function Quest40139:OnSubStart4013915(arg1)
    print("OnSubStart4013915")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1084Data.id, 4013915, 0, 20, 1)
end

function Quest40139:OnSubFinish4013915(arg1)
    print("OnSubFinish4013915")
    this:SafeDestroyQuestNpc(npcs.Npc1084Data.alias, 3)
end

function Quest40139:OnSubStart4013922(arg1)
    print("OnSubStart4013922")
    actorMgr:CreateActorWithPos("Q4013922Trigger", "Actor/Gadget/Q4013922Trigger", 70900002, 0, points.TPos_Q4013922Trigger.pos, points.TPos_Q4013922Trigger.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc2514Data.id, 0)
end

function Quest40139:OnSubFinish4013922(arg1)
    print("OnSubFinish4013922")
    this:ActorDestroy("Q4013922Trigger")
end

function Quest40139:OnSubStart4013905(arg1)
    print("OnSubStart4013905")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1084Data.id, 4013905, 0, 15, 1)
end

function Quest40139:OnSubFinish4013905(arg1)
    print("OnSubFinish4013905")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1084Data.alias)
end

function Quest40139:OnSubStart4013911(arg1)
    print("OnSubStart4013911")
end

function Quest40139:OnSubFinish4013911(arg1)
    print("OnSubFinish4013911")
end

function Quest40139:OnSubStart4013916(arg1)
    print("OnSubStart4013916")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1084Data.id, 4013916, 0, 25, 1, true)
end

function Quest40139:OnSubFinish4013916(arg1)
    print("OnSubFinish4013916")
    this:SafeDestroyQuestNpc(npcs.Npc1084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2514Data.alias, 3)
end

function Quest40139:OnSubStart4013912(arg1)
    print("OnSubStart4013912")
end

function Quest40139:OnSubFinish4013912(arg1)
    print("OnSubFinish4013912")
end

function Quest40139:OnSubStart4013906(arg1)
    print("OnSubStart4013906")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1084Data.id, 4013906, 0, 3, 1)
    actorMgr:CreateActorWithPos("Q4013906Trigger", "Actor/Gadget/Q4013906Trigger", 70900002, 0, points.TPos_Q4013906Trigger.pos, points.TPos_Q4013906Trigger.rot, true, false, 3)
    this:CancelStoryByQuest(134013901)
    this:NotifyTo(npcs.Npc30459Data.alias, 1, true)
end

function Quest40139:OnSubFinish4013906(arg1)
    print("OnSubFinish4013906")
    this:ActorDestroy("Q4013906Trigger")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1084Data.alias)
    this:ClearNarratorTask()
end

function Quest40139:OnSubStart4013907(arg1)
    print("OnSubStart4013907")
    this:CreateQuestNpc(arg1, npcs.Npc13890Data.id, 0)
    this:DeployStoryByQuest(134013901)
    this:NotifyTo(npcs.Npc30459Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13890Data.alias)
    questNpcActor:DoFreeStyle(4260, true, nil, true, true, false, false)
    this:CreateLocalGadget(70711484, "1", {x = 2474.527, y = 343.059, z = 2411.383}, {x = 0.0, y = 210.398, z = 0.0}, 3, nil, nil, false, 0)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40139:OnSubFinish4013907(arg1)
    print("OnSubFinish4013907")
    this:CancelStoryByQuest(134013901)
    this:ClearNarratorTask()
    this:NpcResetForceAvatarWalk(nil)
    actorUtils.FinishQuestID(false, 4013919)
    this:RemoveLocalGadget(70711484, "1")
end

function Quest40139:OnSubFailed4013907(arg1)
    print("OnSubFailed4013907")
    this:CancelStoryByQuest(134013901)
    this:ClearNarratorTask()
    this:NpcResetForceAvatarWalk(nil)
    actorUtils.FinishQuestID(false, 4013919)
    this:RemoveLocalGadget(70711484, "1")
end

function Quest40139:OnSubStart4013918(arg1)
    print("OnSubStart4013918")
end

function Quest40139:OnSubFinish4013918(arg1)
    print("OnSubFinish4013918")
end

function Quest40139:OnSubStart4013919(arg1)
    print("OnSubStart4013919")
end

function Quest40139:OnSubFinish4013919(arg1)
    print("OnSubFinish4013919")
end

function Quest40139:OnSubFailed4013919(arg1)
    print("OnSubFailed4013919")
    this:CancelStoryByQuest(134013901)
    this:NpcResetForceAvatarWalk(nil)
    this:RemoveLocalGadget(70711484, "1")
    this:DestroyQuestNpcActor(npcs.Npc13890Data.alias, 3)
end

function Quest40139:OnSubStart4013908(arg1)
    print("OnSubStart4013908")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13859Data.id, 4013908, 0, 50, 1)
    this:NotifyTo(npcs.Npc30459Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13890Data.alias)
    questNpcActor:DoFreeStyle(4260, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40139:OnSubFinish4013908(arg1)
    print("OnSubFinish4013908")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13859Data.alias)
    this:ClearNarratorTask()
    this:CancelStoryByQuest(134013901)
end

function Quest40139:OnSubStart4013909(arg1)
    print("OnSubStart4013909")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1084Data.id, 4013909, 0, 15, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13856Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13856Data.alias):SitOnChair(0, true)
    this:LightNotifyTo(npcs.Npc30459Data.alias, 0, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13890Data.alias)
    questNpcActor:DoFreeStyle(4260, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40139:OnSubFinish4013909(arg1)
    print("OnSubFinish4013909")
    this:SafeDestroyQuestNpc(npcs.Npc1084Data.alias, 3)
end

function Quest40139:OnSubStart4013910(arg1)
    print("OnSubStart4013910")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083Data.id, 4013910, 0, 20, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13890Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13856Data.alias):SitOnChair(8040, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13890Data.alias)
    questNpcActor:DoFreeStyle(4260, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40139:OnSubFinish4013910(arg1)
    print("OnSubFinish4013910")
    this:SafeDestroyQuestNpc(npcs.Npc30474Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13856Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1083Data.alias)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc13890Data.id, 0, false, 0.5)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc13857Data.id, 0, false, 0.5)
    actorMgr:CreateActorWithPos("Q4013910Trigger", "Actor/Gadget/Q4013910Trigger", 70900002, 0, points.TPos_Q4013910Trigger.pos, points.TPos_Q4013910Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13890Data.alias):DoFreeStyle(4260, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13857Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13890Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13857Data.alias):DisableInteeHeadCtrl(true)
end

return Quest40139
