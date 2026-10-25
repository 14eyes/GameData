require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15039 = class("Quest15039", QuestActorProxy)
Quest15039.defaultAlias = "Quest15039"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15039:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503901"] = self.OnSubStart1503901,
        ["1503902"] = self.OnSubStart1503902,
        ["1503905"] = self.OnSubStart1503905,
        ["1503906"] = self.OnSubStart1503906,
        ["1503908"] = self.OnSubStart1503908,
        ["1503910"] = self.OnSubStart1503910,
        ["1503911"] = self.OnSubStart1503911,
        ["1503903"] = self.OnSubStart1503903,
        ["1503912"] = self.OnSubStart1503912,
        ["1503913"] = self.OnSubStart1503913,
        ["1503916"] = self.OnSubStart1503916,
        ["1503917"] = self.OnSubStart1503917,
        ["1503918"] = self.OnSubStart1503918,
        ["1503904"] = self.OnSubStart1503904,
        ["1503907"] = self.OnSubStart1503907,
        ["1503909"] = self.OnSubStart1503909,
        ["1503919"] = self.OnSubStart1503919,
        ["1503920"] = self.OnSubStart1503920,
        ["1503914"] = self.OnSubStart1503914
    }
end

function Quest15039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503901"] = self.OnSubFinish1503901,
        ["1503902"] = self.OnSubFinish1503902,
        ["1503905"] = self.OnSubFinish1503905,
        ["1503906"] = self.OnSubFinish1503906,
        ["1503908"] = self.OnSubFinish1503908,
        ["1503910"] = self.OnSubFinish1503910,
        ["1503911"] = self.OnSubFinish1503911,
        ["1503903"] = self.OnSubFinish1503903,
        ["1503912"] = self.OnSubFinish1503912,
        ["1503913"] = self.OnSubFinish1503913,
        ["1503916"] = self.OnSubFinish1503916,
        ["1503917"] = self.OnSubFinish1503917,
        ["1503918"] = self.OnSubFinish1503918,
        ["1503904"] = self.OnSubFinish1503904,
        ["1503907"] = self.OnSubFinish1503907,
        ["1503909"] = self.OnSubFinish1503909,
        ["1503919"] = self.OnSubFinish1503919,
        ["1503920"] = self.OnSubFinish1503920,
        ["1503914"] = self.OnSubFinish1503914
    }
end

function Quest15039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1503903"] = self.OnSubFailed1503903, ["1503912"] = self.OnSubFailed1503912}
end

function Quest15039:Start()
    print("Start")
end

function Quest15039:OnDestroy()
    print("OnDestroy")
end

function Quest15039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15039:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15039:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1503905Trigger")
    this:ActorDestroy("Q1503916Trigger")
    this:ActorDestroy("Q1503908Trigger")
    this:ActorDestroy("Q1503901Trigger")
    this:ActorDestroy("Q1503911Trigger")
    this:ActorDestroy("Q1503919Trigger")
    this:ActorDestroy("Q1503910Trigger")
    this:ActorDestroy("Q1503908Trigger_1")
    this:ActorDestroy("Q1503908Trigger_2")
    this:ActorDestroy("Q1503903Trigger")
    this:ActorDestroy("Q1503903Trigger_1")
end

function Quest15039:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1503904 then
        actorUtils.FinishQuestID(false, 1503904)
    elseif arg1 == 1503907 then
        actorUtils.FinishQuestID(false, 1503907)
    elseif arg1 == 150391801 then
    elseif arg1 == 150391802 then
    elseif arg1 == 150392001 then
        actorUtils.FinishQuestID(false, 1503920)
    elseif arg1 == 150391401 then
        actorUtils.FinishQuestID(false, 1503914)
    end
end

function Quest15039:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15039:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15039:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15039:OnSubStart1503901(arg1)
    print("OnSubStart1503901")
    actorMgr:CreateActorWithPos("Q1503901Trigger", "Actor/Gadget/Q1503901Trigger", 70900002, 0, points._Q1503901TriggerPoint_.pos, points._Q1503901TriggerPoint_.rot, true, false, 3)
end

function Quest15039:OnSubFinish1503901(arg1)
    print("OnSubFinish1503901")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1503902, nil)
    end)

    this:SetNavigationByMainId(15039, true)
    this:ActorDestroy("Q1503901Trigger")
end

function Quest15039:OnSubStart1503902(arg1)
    print("OnSubStart1503902")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503902, 0, 39, 1, npcs.Npc21902.id)
end

function Quest15039:OnSubFinish1503902(arg1)
    print("OnSubFinish1503902")
    this:SafeDestroyQuestNpc(npcs.Npc21902.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:TryShowQuestReview("1503901")
    end)

    this:SetNavigationByMainId(15039, true)
end

function Quest15039:OnSubStart1503905(arg1)
    print("OnSubStart1503905")
    this:CreateQuestNpc(arg1, npcs.Npc21844.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21844.alias, 15039):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21856.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21856.alias, 15039):DoFreeStyle(9, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1503905Trigger", "Actor/Gadget/Q1503905Trigger", 70900002, 0, points._Q1503905TriggerPoint_.pos, points._Q1503905TriggerPoint_.rot, true, false, 3)
end

function Quest15039:OnSubFinish1503905(arg1)
    print("OnSubFinish1503905")
    this:ClearNarratorTask()
end

function Quest15039:OnSubStart1503906(arg1)
    print("OnSubStart1503906")
    this:GetQuestNpcActor(npcs.Npc21856.alias, 15039):DoFreeStyle(9, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc21844.id, 0, 30, 1503906)
    this:GetQuestNpcActor(npcs.Npc21844.alias, 15039):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest15039:OnSubFinish1503906(arg1)
    print("OnSubFinish1503906")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21856.alias, 3)
end

function Quest15039:OnSubStart1503908(arg1)
    print("OnSubStart1503908")
    if this:GetQuestVar(1503908, 0) == 0 then
        actorMgr:CreateActorWithPos("Q1503908Trigger_1", "Actor/Gadget/Q1503908Trigger_1", 70900002, 0, points._Q1503908Trigger_1Point_.pos, points._Q1503908Trigger_1Point_.rot, true, false, 3)
    end

    if this:GetQuestVar(1503908, 1) == 0 then
        actorMgr:CreateActorWithPos("Q1503908Trigger_2", "Actor/Gadget/Q1503908Trigger_2", 70900002, 0, points._Q1503908Trigger_2Point_.pos, points._Q1503908Trigger_2Point_.rot, true, false, 3)
    end

    actorMgr:CreateActorWithPos("Q1503908Trigger", "Actor/Gadget/Q1503908Trigger", 70900002, 0, points._Q1503908TriggerPoint_.pos, points._Q1503908TriggerPoint_.rot, true, false, 3)
end

function Quest15039:OnSubFinish1503908(arg1)
    print("OnSubFinish1503908")
    this:ActorDestroy("Q1503908Trigger_1")
    this:ActorDestroy("Q1503908Trigger_2")
    this:QuestNarratorTask(datas.NarratorWithId_1503905, nil)
end

function Quest15039:OnSubStart1503910(arg1)
    print("OnSubStart1503910")
    this:CreateQuestNpc(arg1, npcs.Npc6549.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1503910Trigger", "Actor/Gadget/Q1503910Trigger", 70900002, 0, points._Q1503910TriggerPoint_.pos, points._Q1503910TriggerPoint_.rot, true, false, 3)
end

function Quest15039:OnSubFinish1503910(arg1)
    print("OnSubFinish1503910")
end

function Quest15039:OnSubStart1503911(arg1)
    print("OnSubStart1503911")
end

function Quest15039:OnSubFinish1503911(arg1)
    print("OnSubFinish1503911")
    this:SafeDestroyQuestNpc(npcs.Npc6549.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
    this:ClearNarratorTask()
end

function Quest15039:OnSubStart1503903(arg1)
    print("OnSubStart1503903")
    actorMgr:CreateActorWithPos("Q1503903Trigger", "Actor/Gadget/Q1503903Trigger", 70900002, 0, points._Q1503903TriggerPoint_.pos, points._Q1503903TriggerPoint_.rot, true, false, 3)
    this:DeployStoryByQuest(121503901)
    actorMgr:CreateActorWithPos("Q1503903Trigger_1", "Actor/Gadget/Q1503903Trigger_1", 70900002, 0, points._Q1503903Trigger_1Point_.pos, points._Q1503903Trigger_1Point_.rot, true, false, 3)
end

function Quest15039:OnSubFinish1503903(arg1)
    print("OnSubFinish1503903")
end

function Quest15039:OnSubFailed1503903(arg1)
    print("OnSubFailed1503903")
    this:CancelStoryByQuest(121503901)
    this:ActorDestroy("Q1503903Trigger")
end

function Quest15039:OnSubStart1503912(arg1)
    print("OnSubStart1503912")
    actorMgr:CreateActorWithPos("Q1503911Trigger", "Actor/Gadget/Q1503911Trigger", 70900002, 0, points._Q1503911TriggerPoint_.pos, points._Q1503911TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1503903Trigger_1", "Actor/Gadget/Q1503903Trigger_1", 70900002, 0, points._Q1503903Trigger_1Point_.pos, points._Q1503903Trigger_1Point_.rot, true, false, 3)
end

function Quest15039:OnSubFinish1503912(arg1)
    print("OnSubFinish1503912")
end

function Quest15039:OnSubFailed1503912(arg1)
    print("OnSubFailed1503912")
    this:CancelStoryByQuest(121503901)
    this:ActorDestroy("Q1503911Trigger")
end

function Quest15039:OnSubStart1503913(arg1)
    print("OnSubStart1503913")
    this:DeployStoryByQuest(121503901)
end

function Quest15039:OnSubFinish1503913(arg1)
    print("OnSubFinish1503913")
    this:QuestNarratorTask(datas.NarratorWithId_1503907, nil)
    this:CancelStoryByQuest(121503901)
end

function Quest15039:OnSubStart1503916(arg1)
    print("OnSubStart1503916")
    actorMgr:CreateActorWithPos("Q1503916Trigger", "Actor/Gadget/Q1503916Trigger", 70900002, 0, points._Q1503916TriggerPoint_.pos, points._Q1503916TriggerPoint_.rot, true, false, 3)
end

function Quest15039:OnSubFinish1503916(arg1)
    print("OnSubFinish1503916")
end

function Quest15039:OnSubStart1503917(arg1)
    print("OnSubStart1503917")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503917, 0, 40, 1, npcs.Npc21844.id)
end

function Quest15039:OnSubFinish1503917(arg1)
    print("OnSubFinish1503917")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
end

function Quest15039:OnSubStart1503918(arg1)
    print("OnSubStart1503918")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503918, 0, 36, 1, npcs.Npc21844.id)
end

function Quest15039:OnSubFinish1503918(arg1)
    print("OnSubFinish1503918")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
end

function Quest15039:OnSubStart1503904(arg1)
    print("OnSubStart1503904")
end

function Quest15039:OnSubFinish1503904(arg1)
    print("OnSubFinish1503904")
end

function Quest15039:OnSubStart1503907(arg1)
    print("OnSubStart1503907")
end

function Quest15039:OnSubFinish1503907(arg1)
    print("OnSubFinish1503907")
end

function Quest15039:OnSubStart1503909(arg1)
    print("OnSubStart1503909")
    actorUtils.FinishQuestID(false, 1503909)
end

function Quest15039:OnSubFinish1503909(arg1)
    print("OnSubFinish1503909")
    actorUtils.ShowContext("HolidayResortMainPageContext", 0)
end

function Quest15039:OnSubStart1503919(arg1)
    print("OnSubStart1503919")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503919, 0, 13, 1, npcs.Npc21845.id)
    if this:GetQuestVar(1503919, 4) == 0 then
        actorMgr:CreateActorWithPos("Q1503919Trigger", "Actor/Gadget/Q1503919Trigger", 70900002, 0, points._Q1503919TriggerPoint_.pos, points._Q1503919TriggerPoint_.rot, true, false, 3)
    end
end

function Quest15039:OnSubFinish1503919(arg1)
    print("OnSubFinish1503919")
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
    this:ActorDestroy("Q1503919Trigger")
end

function Quest15039:OnSubStart1503920(arg1)
    print("OnSubStart1503920")
end

function Quest15039:OnSubFinish1503920(arg1)
    print("OnSubFinish1503920")
end

function Quest15039:OnSubStart1503914(arg1)
    print("OnSubStart1503914")
end

function Quest15039:OnSubFinish1503914(arg1)
    print("OnSubFinish1503914")
end

return Quest15039
