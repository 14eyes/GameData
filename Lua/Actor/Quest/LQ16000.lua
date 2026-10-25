require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16000 = class("Quest16000", QuestActorProxy)
Quest16000.defaultAlias = "Quest16000"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16000:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1600001"] = self.OnSubStart1600001,
        ["1600002"] = self.OnSubStart1600002,
        ["1600019"] = self.OnSubStart1600019,
        ["1600003"] = self.OnSubStart1600003,
        ["1600004"] = self.OnSubStart1600004,
        ["1600005"] = self.OnSubStart1600005,
        ["1600014"] = self.OnSubStart1600014,
        ["1600015"] = self.OnSubStart1600015,
        ["1600016"] = self.OnSubStart1600016,
        ["1600017"] = self.OnSubStart1600017,
        ["1600018"] = self.OnSubStart1600018,
        ["1600006"] = self.OnSubStart1600006,
        ["1600007"] = self.OnSubStart1600007,
        ["1600008"] = self.OnSubStart1600008,
        ["1600009"] = self.OnSubStart1600009,
        ["1600020"] = self.OnSubStart1600020,
        ["1600010"] = self.OnSubStart1600010,
        ["1600011"] = self.OnSubStart1600011,
        ["1600012"] = self.OnSubStart1600012,
        ["1600013"] = self.OnSubStart1600013
    }
end

function Quest16000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1600001"] = self.OnSubFinish1600001,
        ["1600002"] = self.OnSubFinish1600002,
        ["1600019"] = self.OnSubFinish1600019,
        ["1600003"] = self.OnSubFinish1600003,
        ["1600004"] = self.OnSubFinish1600004,
        ["1600005"] = self.OnSubFinish1600005,
        ["1600014"] = self.OnSubFinish1600014,
        ["1600015"] = self.OnSubFinish1600015,
        ["1600016"] = self.OnSubFinish1600016,
        ["1600017"] = self.OnSubFinish1600017,
        ["1600018"] = self.OnSubFinish1600018,
        ["1600006"] = self.OnSubFinish1600006,
        ["1600007"] = self.OnSubFinish1600007,
        ["1600008"] = self.OnSubFinish1600008,
        ["1600009"] = self.OnSubFinish1600009,
        ["1600020"] = self.OnSubFinish1600020,
        ["1600010"] = self.OnSubFinish1600010,
        ["1600011"] = self.OnSubFinish1600011,
        ["1600012"] = self.OnSubFinish1600012,
        ["1600013"] = self.OnSubFinish1600013
    }
end

function Quest16000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1600003"] = self.OnSubFailed1600003,
        ["1600009"] = self.OnSubFailed1600009,
        ["1600010"] = self.OnSubFailed1600010,
        ["1600011"] = self.OnSubFailed1600011,
        ["1600012"] = self.OnSubFailed1600012
    }
end

function Quest16000:Start()
    print("Start")
end

function Quest16000:OnDestroy()
    print("OnDestroy")
end

function Quest16000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16000:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1600019Trigger")
    this:ActorDestroy("Q1600011Trigger")
    this:ActorDestroy("Q1600002Trigger")
    this:ActorDestroy("Q1600004Trigger")
    this:ActorDestroy("Q1600013Trigger")
end

function Quest16000:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest16000:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16000:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest16000:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest16000:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16000:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16000:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest16000:OnSubStart1600001(arg1)
    print("OnSubStart1600001")
    actorUtils.FinishQuestID(false, 1600001)
end

function Quest16000:OnSubFinish1600001(arg1)
    print("OnSubFinish1600001")
    this:QuestNarratorTask(datas.NarratorWithId_1600001, nil)
    this:SetNavigationByMainId(16000, true)
end

function Quest16000:OnSubStart1600002(arg1)
    print("OnSubStart1600002")
    actorMgr:CreateActorWithPos("Q1600002Trigger", "Actor/Gadget/Q1600002Trigger", 70900002, 0, points._Q1600002TriggerPoint_.pos, points._Q1600002TriggerPoint_.rot, true, false, 3)
    this:NpcCreateWithNpcTrigger(npcs.Npc1320.id, 0, 20, 1600002)
    this:DeployRangeStoryByQuest(121600001, 3, {x = 1956.992, y = 200.948, z = 9531.57}, 80, 100)
end

function Quest16000:OnSubFinish1600002(arg1)
    print("OnSubFinish1600002")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc1320.alias)
    this:ClearNarratorTask()
end

function Quest16000:OnSubStart1600019(arg1)
    print("OnSubStart1600019")
    actorMgr:CreateActorWithPos("Q1600019Trigger", "Actor/Gadget/Q1600019Trigger", 70900002, 0, points._Q1600019TriggerPoint_.pos, points._Q1600019TriggerPoint_.rot, true, false, 3)
    this:DeployRangeStoryByQuest(121600001, 3, {x = 1956.992, y = 200.948, z = 9531.57}, 80, 100)
end

function Quest16000:OnSubFinish1600019(arg1)
    print("OnSubFinish1600019")
    this:ActorDestroy("Q1600019Trigger")
    this:CancelRangeStoryByQuest(121600001)
end

function Quest16000:OnSubStart1600003(arg1)
    print("OnSubStart1600003")
    this:NpcCreateWithNoBlack(npcs.Npc1321.id, 0, 20, 1600003, true, 1600003)
end

function Quest16000:OnSubFinish1600003(arg1)
    print("OnSubFinish1600003")
    this:NpcDestroyWithAfterIntercall(20297, npcs.Npc1321.alias)
end

function Quest16000:OnSubFailed1600003(arg1)
    print("OnSubFailed1600003")
    this:NpcDestroyImmediately(20297, npcs.Npc1321.alias)
    this:ClearNpcTriggerByQuestId(1600003)
end

function Quest16000:OnSubStart1600004(arg1)
    print("OnSubStart1600004")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600004, true, 1600004)
    actorMgr:CreateActorWithPos("Q1600004Trigger", "Actor/Gadget/Q1600004Trigger", 70900002, 0, points._Q1600004TriggerPoint_.pos, points._Q1600004TriggerPoint_.rot, true, false, 20297)
end

function Quest16000:OnSubFinish1600004(arg1)
    print("OnSubFinish1600004")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:ActorDestroy("Q1600004Trigger")
end

function Quest16000:OnSubStart1600005(arg1)
    print("OnSubStart1600005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600005, 0, 4, 1, npcs.Npc1320.id)
end

function Quest16000:OnSubFinish1600005(arg1)
    print("OnSubFinish1600005")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 1004)
end

function Quest16000:OnSubStart1600014(arg1)
    print("OnSubStart1600014")
end

function Quest16000:OnSubFinish1600014(arg1)
    print("OnSubFinish1600014")
end

function Quest16000:OnSubStart1600015(arg1)
    print("OnSubStart1600015")
end

function Quest16000:OnSubFinish1600015(arg1)
    print("OnSubFinish1600015")
end

function Quest16000:OnSubStart1600016(arg1)
    print("OnSubStart1600016")
end

function Quest16000:OnSubFinish1600016(arg1)
    print("OnSubFinish1600016")
end

function Quest16000:OnSubStart1600017(arg1)
    print("OnSubStart1600017")
end

function Quest16000:OnSubFinish1600017(arg1)
    print("OnSubFinish1600017")
end

function Quest16000:OnSubStart1600018(arg1)
    print("OnSubStart1600018")
end

function Quest16000:OnSubFinish1600018(arg1)
    print("OnSubFinish1600018")
end

function Quest16000:OnSubStart1600006(arg1)
    print("OnSubStart1600006")
    this:CreateQuestNpc(arg1, npcs.Lisa.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15933.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15934.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15935.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15936.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15937.id, 0, false, 0)
    this:DeployStoryByQuest(121600002)
end

function Quest16000:OnSubFinish1600006(arg1)
    print("OnSubFinish1600006")
    this:SafeDestroyQuestNpc(npcs.Npc15933.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc15934.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc15935.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc15936.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc15937.alias, 1004)
    this:CancelStoryByQuest(121600002)
end

function Quest16000:OnSubStart1600007(arg1)
    print("OnSubStart1600007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600007, 0, 5, 1, npcs.Lisa.id)
end

function Quest16000:OnSubFinish1600007(arg1)
    print("OnSubFinish1600007")
    this:SafeDestroyQuestNpc(npcs.Lisa.alias, 1004)
end

function Quest16000:OnSubStart1600008(arg1)
    print("OnSubStart1600008")
end

function Quest16000:OnSubFinish1600008(arg1)
    print("OnSubFinish1600008")
end

function Quest16000:OnSubStart1600009(arg1)
    print("OnSubStart1600009")
    this:CreateQuestNpc(arg1, npcs.Npc15876.id, 0, false, 0)
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600009, true, 1600009)
end

function Quest16000:OnSubFinish1600009(arg1)
    print("OnSubFinish1600009")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
end

function Quest16000:OnSubFailed1600009(arg1)
    print("OnSubFailed1600009")
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:ClearNpcTriggerByQuestId(1600009)
    this:NpcDestroyImmediately(20297, npcs.Npc15876.alias)
end

function Quest16000:OnSubStart1600020(arg1)
    print("OnSubStart1600020")
end

function Quest16000:OnSubFinish1600020(arg1)
    print("OnSubFinish1600020")
end

function Quest16000:OnSubStart1600010(arg1)
    print("OnSubStart1600010")
    this:CreateQuestNpc(arg1, npcs.Npc15939.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15940.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15941.id, 0, false, 0)
    this:DeployRangeStoryByQuest(121600003, 20297, {x = 2468.142, y = -1.414, z = 701.624}, 40, 60)
end

function Quest16000:OnSubFinish1600010(arg1)
    print("OnSubFinish1600010")
    this:SafeDestroyQuestNpc(npcs.Npc15939.alias, 20297)
    this:SafeDestroyQuestNpc(npcs.Npc15940.alias, 20297)
    this:SafeDestroyQuestNpc(npcs.Npc15941.alias, 20297)
    this:CancelRangeStoryByQuest(121600003)
end

function Quest16000:OnSubFailed1600010(arg1)
    print("OnSubFailed1600010")
    this:NpcDestroyImmediately(20297, npcs.Npc15939.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15940.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15941.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15876.alias)
    this:CancelRangeStoryByQuest(121600003)
end

function Quest16000:OnSubStart1600011(arg1)
    print("OnSubStart1600011")
    actorMgr:CreateActorWithPos("Q1600011Trigger", "Actor/Gadget/Q1600011Trigger", 70900002, 0, points._Q1600011TriggerPoint_.pos, points._Q1600011TriggerPoint_.rot, true, false, 20297)
    this:DeployRangeStoryByQuest(121600000, 20297, {x = 2479.554, y = 0.628, z = 700.48}, 40, 60)
end

function Quest16000:OnSubFinish1600011(arg1)
    print("OnSubFinish1600011")
    this:ActorDestroy("Q1600011Trigger")
end

function Quest16000:OnSubFailed1600011(arg1)
    print("OnSubFailed1600011")
    this:CancelRangeStoryByQuest(121600000)
    this:ActorDestroy("Q1600011Trigger")
    actorUtils.ShowContext("MagicInkBar", 0)
    this:NpcDestroyImmediately(20297, npcs.Npc15876.alias)
end

function Quest16000:OnSubStart1600012(arg1)
    print("OnSubStart1600012")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1600012, 0, 20, 1, npcs.Npc1320.id)
end

function Quest16000:OnSubFinish1600012(arg1)
    print("OnSubFinish1600012")
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15876.alias)
    actorUtils.ShowContext("MagicInkBar", 0)
    this:CancelRangeStoryByQuest(121600000)
end

function Quest16000:OnSubFailed1600012(arg1)
    print("OnSubFailed1600012")
    this:UnCallDelayByQuest("Q1600012N1320CallDelay")
    this:ClearNpcTriggerByQuestId(1600012)
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15876.alias)
    actorUtils.ShowContext("MagicInkBar", 0)
    this:CancelRangeStoryByQuest(121600000)
end

function Quest16000:OnSubStart1600013(arg1)
    print("OnSubStart1600013")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 20, 1600013, true, 1600013)
    actorMgr:CreateActorWithPos("Q1600013Trigger", "Actor/Gadget/Q1600013Trigger", 70900002, 0, points._Q1600013TriggerPoint_.pos, points._Q1600013TriggerPoint_.rot, true, false, 20297)
end

function Quest16000:OnSubFinish1600013(arg1)
    print("OnSubFinish1600013")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:ActorDestroy("Q1600013Trigger")
end

return Quest16000
