require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8017 = class("Quest8017", QuestActorProxy)
Quest8017.defaultAlias = "Quest8017"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest8017:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest8017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["801701"] = self.OnSubStart801701,
        ["801702"] = self.OnSubStart801702,
        ["801703"] = self.OnSubStart801703,
        ["801704"] = self.OnSubStart801704,
        ["801709"] = self.OnSubStart801709,
        ["801710"] = self.OnSubStart801710,
        ["801705"] = self.OnSubStart801705,
        ["801706"] = self.OnSubStart801706,
        ["801707"] = self.OnSubStart801707,
        ["801708"] = self.OnSubStart801708,
        ["801713"] = self.OnSubStart801713,
        ["801711"] = self.OnSubStart801711,
        ["801712"] = self.OnSubStart801712
    }
end

function Quest8017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["801701"] = self.OnSubFinish801701,
        ["801702"] = self.OnSubFinish801702,
        ["801703"] = self.OnSubFinish801703,
        ["801704"] = self.OnSubFinish801704,
        ["801709"] = self.OnSubFinish801709,
        ["801710"] = self.OnSubFinish801710,
        ["801705"] = self.OnSubFinish801705,
        ["801706"] = self.OnSubFinish801706,
        ["801707"] = self.OnSubFinish801707,
        ["801708"] = self.OnSubFinish801708,
        ["801713"] = self.OnSubFinish801713,
        ["801711"] = self.OnSubFinish801711,
        ["801712"] = self.OnSubFinish801712
    }
end

function Quest8017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["801707"] = self.OnSubFailed801707, ["801713"] = self.OnSubFailed801713}
end

function Quest8017:Start()
    print("Start")
end

function Quest8017:OnDestroy()
    print("OnDestroy")
end

function Quest8017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8017:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q801713TalkTrigger")
    this:ActorDestroy("Q801713Transmit")
    this:ActorDestroy("Q801713Fail")
    this:ActorDestroy("Q801713Protect")
    this:ActorDestroy("Q801708Transmit")
end

function Quest8017:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest8017:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest8017:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest8017:OnSubStart801701(arg1)
    print("OnSubStart801701")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801701, 0, 15, 1, npcs.Npc15204.id)
end

function Quest8017:OnSubFinish801701(arg1)
    print("OnSubFinish801701")
    this:SafeDestroyQuestNpc(npcs.Npc15204.alias, 3)
end

function Quest8017:OnSubStart801702(arg1)
    print("OnSubStart801702")
end

function Quest8017:OnSubFinish801702(arg1)
    print("OnSubFinish801702")
end

function Quest8017:OnSubStart801703(arg1)
    print("OnSubStart801703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801703, 0, 30, 1, npcs.Npc15204.id)
end

function Quest8017:OnSubFinish801703(arg1)
    print("OnSubFinish801703")
    this:SafeDestroyQuestNpc(npcs.Npc15204.alias, 3)
end

function Quest8017:OnSubStart801704(arg1)
    print("OnSubStart801704")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1091.id, 0, 15, 801704)
        this:CreateQuestNpc(arg1, npcs.Npc15204.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15204.alias, 8017):DoFreeStyle(1050, true, nil, true, true, false, true)
    end)
end

function Quest8017:OnSubFinish801704(arg1)
    print("OnSubFinish801704")
    this:SafeDestroyQuestNpc(npcs.Npc15204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
end

function Quest8017:OnSubStart801709(arg1)
    print("OnSubStart801709")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15267.id, 0, false, 0)
    end)
end

function Quest8017:OnSubFinish801709(arg1)
    print("OnSubFinish801709")
end

function Quest8017:OnSubStart801710(arg1)
    print("OnSubStart801710")
    this:CreateQuestNpc(arg1, npcs.Npc15268.id, 0, false, 0)
end

function Quest8017:OnSubFinish801710(arg1)
    print("OnSubFinish801710")
end

function Quest8017:OnSubStart801705(arg1)
    print("OnSubStart801705")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801705, 0, 30, 1, npcs.Npc1091.id)
end

function Quest8017:OnSubFinish801705(arg1)
    print("OnSubFinish801705")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15267.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15268.alias, 3)
end

function Quest8017:OnSubStart801706(arg1)
    print("OnSubStart801706")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 8017):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 8017):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:NpcCreateWithNpcTriggerAndBlackscreen(801706, 0, 15, 1, npcs.Npc15204.id)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 8017):DisableInteeHeadCtrl(true)
    end)
end

function Quest8017:OnSubFinish801706(arg1)
    print("OnSubFinish801706")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15204.alias, 3)
end

function Quest8017:OnSubStart801707(arg1)
    print("OnSubStart801707")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15204.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15204.alias, 8017):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Paimon.alias, 8017):DoFreeStyle(1120, true, nil, true, true, false, true)
        globalActor:DisablePaimonInProfilePage({3})
    end)
end

function Quest8017:OnSubFinish801707(arg1)
    print("OnSubFinish801707")
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest8017:OnSubFailed801707(arg1)
    print("OnSubFailed801707")
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest8017:OnSubStart801708(arg1)
    print("OnSubStart801708")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801708, 0, 30, 1, npcs.Npc15204.id)
    this:ActorDestroy("Q801708Transmit")
end

function Quest8017:OnSubFinish801708(arg1)
    print("OnSubFinish801708")
    this:SafeDestroyQuestNpc(npcs.Npc15204.alias, 3)
end

function Quest8017:OnSubStart801713(arg1)
    print("OnSubStart801713")
    this:ActorDestroy("Q801713Transmit")
    actorMgr:CreateActorWithPos("Q801708Transmit", "Actor/Gadget/Q801708Transmit", 70900002, 0, points._Q801708TransmitPoint_.pos, points._Q801708TransmitPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q801713Protect", "Actor/Gadget/Q801713Protect", 70900002, 0, points._Q801713ProtectPoint_.pos, points._Q801713ProtectPoint_.rot, true, false, 3)
end

function Quest8017:OnSubFinish801713(arg1)
    print("OnSubFinish801713")
    this:SafeDestroyQuestNpc_MaleCond(npcs.Npc1026.alias, npcs.Npc1025.alias, 3)
    this:ActorDestroy("Q801713Fail")
    this:ActorDestroy("Q801713Protect")
    this:ActorDestroy("Q801708Transmit")
end

function Quest8017:OnSubFailed801713(arg1)
    print("OnSubFailed801713")
    this:SafeDestroyQuestNpc_MaleCond(npcs.Npc1026.alias, npcs.Npc1025.alias, 3)
    this:ActorDestroy("Q801713Fail")
    this:ActorDestroy("Q801713Protect")
    this:ActorDestroy("Q801708Transmit")
end

function Quest8017:OnSubStart801711(arg1)
    print("OnSubStart801711")
end

function Quest8017:OnSubFinish801711(arg1)
    print("OnSubFinish801711")
end

function Quest8017:OnSubStart801712(arg1)
    print("OnSubStart801712")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801712, 0, 50, 1, npcs.Npc15204.id)
    actorMgr:CreateActorWithPos("Q801713Transmit", "Actor/Gadget/Q801713Transmit", 70900002, 0, points._Q801713TransmitPoint_.pos, points._Q801713TransmitPoint_.rot, true, false, 3)
end

function Quest8017:OnSubFinish801712(arg1)
    print("OnSubFinish801712")
    this:SafeDestroyQuestNpc(npcs.Npc15204.alias, 3)
    this:ActorDestroy("Q801713Transmit")
end

return Quest8017
