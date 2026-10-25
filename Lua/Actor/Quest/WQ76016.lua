require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76016 = class("Quest76016", QuestActorProxy)
Quest76016.defaultAlias = "Quest76016"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76016:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7601601"] = self.OnSubStart7601601,
        ["7601602"] = self.OnSubStart7601602,
        ["7601603"] = self.OnSubStart7601603,
        ["7601605"] = self.OnSubStart7601605,
        ["7601604"] = self.OnSubStart7601604,
        ["7601627"] = self.OnSubStart7601627,
        ["7601606"] = self.OnSubStart7601606,
        ["7601607"] = self.OnSubStart7601607,
        ["7601608"] = self.OnSubStart7601608,
        ["7601609"] = self.OnSubStart7601609,
        ["7601630"] = self.OnSubStart7601630,
        ["7601610"] = self.OnSubStart7601610,
        ["7601611"] = self.OnSubStart7601611,
        ["7601625"] = self.OnSubStart7601625,
        ["7601612"] = self.OnSubStart7601612,
        ["7601628"] = self.OnSubStart7601628,
        ["7601632"] = self.OnSubStart7601632,
        ["7601613"] = self.OnSubStart7601613,
        ["7601614"] = self.OnSubStart7601614,
        ["7601615"] = self.OnSubStart7601615,
        ["7601616"] = self.OnSubStart7601616,
        ["7601629"] = self.OnSubStart7601629,
        ["7601631"] = self.OnSubStart7601631,
        ["7601617"] = self.OnSubStart7601617,
        ["7601618"] = self.OnSubStart7601618,
        ["7601619"] = self.OnSubStart7601619,
        ["7601620"] = self.OnSubStart7601620,
        ["7601626"] = self.OnSubStart7601626,
        ["7601621"] = self.OnSubStart7601621,
        ["7601622"] = self.OnSubStart7601622,
        ["7601623"] = self.OnSubStart7601623,
        ["7601624"] = self.OnSubStart7601624
    }
end

function Quest76016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7601601"] = self.OnSubFinish7601601,
        ["7601602"] = self.OnSubFinish7601602,
        ["7601603"] = self.OnSubFinish7601603,
        ["7601605"] = self.OnSubFinish7601605,
        ["7601604"] = self.OnSubFinish7601604,
        ["7601627"] = self.OnSubFinish7601627,
        ["7601606"] = self.OnSubFinish7601606,
        ["7601607"] = self.OnSubFinish7601607,
        ["7601608"] = self.OnSubFinish7601608,
        ["7601609"] = self.OnSubFinish7601609,
        ["7601630"] = self.OnSubFinish7601630,
        ["7601610"] = self.OnSubFinish7601610,
        ["7601611"] = self.OnSubFinish7601611,
        ["7601625"] = self.OnSubFinish7601625,
        ["7601612"] = self.OnSubFinish7601612,
        ["7601628"] = self.OnSubFinish7601628,
        ["7601632"] = self.OnSubFinish7601632,
        ["7601613"] = self.OnSubFinish7601613,
        ["7601614"] = self.OnSubFinish7601614,
        ["7601615"] = self.OnSubFinish7601615,
        ["7601616"] = self.OnSubFinish7601616,
        ["7601629"] = self.OnSubFinish7601629,
        ["7601631"] = self.OnSubFinish7601631,
        ["7601617"] = self.OnSubFinish7601617,
        ["7601618"] = self.OnSubFinish7601618,
        ["7601619"] = self.OnSubFinish7601619,
        ["7601620"] = self.OnSubFinish7601620,
        ["7601626"] = self.OnSubFinish7601626,
        ["7601621"] = self.OnSubFinish7601621,
        ["7601622"] = self.OnSubFinish7601622,
        ["7601623"] = self.OnSubFinish7601623,
        ["7601624"] = self.OnSubFinish7601624
    }
end

function Quest76016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76016:Start()
    print("Start")
end

function Quest76016:OnDestroy()
    print("OnDestroy")
end

function Quest76016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76016:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7601602Trigger")
    this:ActorDestroy("Q7601606Trigger")
    this:ActorDestroy("Q7601608Trigger")
    this:ActorDestroy("Q7601612Trigger")
    this:ActorDestroy("Q7601617Trigger")
    this:ActorDestroy("Q7601623Trigger")
    this:ActorDestroy("Q7601601Trigger")
    this:ActorDestroy("Q7601610Trigger")
    this:ActorDestroy("Q7601611Trigger")
    this:ActorDestroy("Q7601616Trigger")
    this:ActorDestroy("Q7601601Trigger_start")
    this:ActorDestroy("Q7601601Trigger_1")
    this:ActorDestroy("Q7601625Trigger")
    this:ActorDestroy("Q7601625Trigger_Reminder")
    this:ActorDestroy("Q7601606Trigger_reminder")
    this:ActorDestroy("Q7601612Trigger_reminder")
    this:ActorDestroy("Q7601612igger")
    this:ActorDestroy("Q7601628Trigger")
    this:ActorDestroy("Q7601630Trigger")
end

function Quest76016:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76016:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76016:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76016:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76016:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76016:OnSubStart7601601(arg1)
    print("OnSubStart7601601")
    this:CreateQuestNpc(arg1, npcs.Npc21836.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21836.alias, 76016):DoFreeStyle(4090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21932.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21932.alias, 76016):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21933.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7601601Trigger_1", "Actor/Gadget/Q7601601Trigger_1", 70900002, 0, points._Q7601601Trigger_1Point_.pos, points._Q7601601Trigger_1Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7601601Trigger", "Actor/Gadget/Q7601601Trigger", 70900002, 0, points._Q7601601TriggerPoint_.pos, points._Q7601601TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601601(arg1)
    print("OnSubFinish7601601")
end

function Quest76016:OnSubStart7601602(arg1)
    print("OnSubStart7601602")
    this:GetQuestNpcActor(npcs.Npc21836.alias, 76016):DoFreeStyle(4090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21932.alias, 76016):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7601602Trigger", "Actor/Gadget/Q7601602Trigger", 70900002, 0, points._Q7601602TriggerPoint_.pos, points._Q7601602TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7601602Trigger", "Actor/Gadget/Q7601602Trigger", 70900002, 0, points._Q7601602TriggerPoint_.pos, points._Q7601602TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601602(arg1)
    print("OnSubFinish7601602")
end

function Quest76016:OnSubStart7601603(arg1)
    print("OnSubStart7601603")
    this:NpcCreateWithNpcTrigger(npcs.Npc21836.id, 0, 15, 7601603)
end

function Quest76016:OnSubFinish7601603(arg1)
    print("OnSubFinish7601603")
    this:QuestNarratorTask(datas.NarratorWithId_7601604, nil)
end

function Quest76016:OnSubStart7601605(arg1)
    print("OnSubStart7601605")
    this:CreateQuestNpc(arg1, npcs.Npc21836.id, 0, false, 0)
end

function Quest76016:OnSubFinish7601605(arg1)
    print("OnSubFinish7601605")
end

function Quest76016:OnSubStart7601604(arg1)
    print("OnSubStart7601604")
end

function Quest76016:OnSubFinish7601604(arg1)
    print("OnSubFinish7601604")
end

function Quest76016:OnSubStart7601627(arg1)
    print("OnSubStart7601627")
    this:CreateQuestNpc(arg1, npcs.Npc21932.id, 0, false, 0)
end

function Quest76016:OnSubFinish7601627(arg1)
    print("OnSubFinish7601627")
    this:SafeDestroyQuestNpc(npcs.Npc21933.alias, 3)
end

function Quest76016:OnSubStart7601606(arg1)
    print("OnSubStart7601606")
    this:CreateQuestNpc(arg1, npcs.Npc21836.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7601606Trigger", "Actor/Gadget/Q7601606Trigger", 70900002, 0, points._Q7601606TriggerPoint_.pos, points._Q7601606TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7601606Trigger", "Actor/Gadget/Q7601606Trigger", 70900002, 0, points._Q7601606TriggerPoint_.pos, points._Q7601606TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601606(arg1)
    print("OnSubFinish7601606")
end

function Quest76016:OnSubStart7601607(arg1)
    print("OnSubStart7601607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601607, 0, 8, 0, npcs.Npc21836.id)
end

function Quest76016:OnSubFinish7601607(arg1)
    print("OnSubFinish7601607")
    this:SafeDestroyQuestNpc(npcs.Npc21836.alias, 3)
end

function Quest76016:OnSubStart7601608(arg1)
    print("OnSubStart7601608")
    this:CreateQuestNpc(arg1, npcs.Npc21836.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7601608Trigger", "Actor/Gadget/Q7601608Trigger", 70900002, 0, points._Q7601608TriggerPoint_.pos, points._Q7601608TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7601608Trigger", "Actor/Gadget/Q7601608Trigger", 70900002, 0, points._Q7601608TriggerPoint_.pos, points._Q7601608TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601608(arg1)
    print("OnSubFinish7601608")
end

function Quest76016:OnSubStart7601609(arg1)
    print("OnSubStart7601609")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601609, 0, 20, 0, npcs.Npc21836.id)
end

function Quest76016:OnSubFinish7601609(arg1)
    print("OnSubFinish7601609")
    this:SafeDestroyQuestNpc(npcs.Npc21836.alias, 3)
end

function Quest76016:OnSubStart7601630(arg1)
    print("OnSubStart7601630")
    actorMgr:CreateActorWithPos("Q7601630Trigger", "Actor/Gadget/Q7601630Trigger", 70900002, 0, points._Q7601630TriggerPoint_.pos, points._Q7601630TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601630(arg1)
    print("OnSubFinish7601630")
end

function Quest76016:OnSubStart7601610(arg1)
    print("OnSubStart7601610")
    actorMgr:CreateActorWithPos("Q7601610Trigger", "Actor/Gadget/Q7601610Trigger", 70900002, 0, points._Q7601610TriggerPoint_.pos, points._Q7601610TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601610(arg1)
    print("OnSubFinish7601610")
    this:QuestNarratorTask(datas.NarratorWithId_7601610, nil)
end

function Quest76016:OnSubStart7601611(arg1)
    print("OnSubStart7601611")
    actorMgr:CreateActorWithPos("Q7601611Trigger", "Actor/Gadget/Q7601611Trigger", 70900002, 0, points._Q7601611TriggerPoint_.pos, points._Q7601611TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601611(arg1)
    print("OnSubFinish7601611")
end

function Quest76016:OnSubStart7601625(arg1)
    print("OnSubStart7601625")
    actorMgr:CreateActorWithPos("Q7601625Trigger_Reminder", "Actor/Gadget/Q7601625Trigger_Reminder", 70900002, 0, points._Q7601625Trigger_ReminderPoint_.pos, points._Q7601625Trigger_ReminderPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7601625Trigger", "Actor/Gadget/Q7601625Trigger", 70900002, 0, points._Q7601625TriggerPoint_.pos, points._Q7601625TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601625(arg1)
    print("OnSubFinish7601625")
end

function Quest76016:OnSubStart7601612(arg1)
    print("OnSubStart7601612")
end

function Quest76016:OnSubFinish7601612(arg1)
    print("OnSubFinish7601612")
end

function Quest76016:OnSubStart7601628(arg1)
    print("OnSubStart7601628")
end

function Quest76016:OnSubFinish7601628(arg1)
    print("OnSubFinish7601628")
end

function Quest76016:OnSubStart7601632(arg1)
    print("OnSubStart7601632")
    actorMgr:CreateActorWithPos("Q7601628Trigger", "Actor/Gadget/Q7601628Trigger", 70900002, 0, points._Q7601628TriggerPoint_.pos, points._Q7601628TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601632(arg1)
    print("OnSubFinish7601632")
end

function Quest76016:OnSubStart7601613(arg1)
    print("OnSubStart7601613")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601613, 0, 12, 0, npcs.Npc21836.id)
    this:CreateQuestNpc(arg1, npcs.Npc21934.id, 0, false, 0)
end

function Quest76016:OnSubFinish7601613(arg1)
    print("OnSubFinish7601613")
end

function Quest76016:OnSubStart7601614(arg1)
    print("OnSubStart7601614")
end

function Quest76016:OnSubFinish7601614(arg1)
    print("OnSubFinish7601614")
    this:NpcDestroyImmediately(3, npcs.Npc21836.alias)
    this:NpcDestroyImmediately(3, npcs.Npc21934.alias)
end

function Quest76016:OnSubStart7601615(arg1)
    print("OnSubStart7601615")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601615, 0, 20, 0, npcs.Npc21836.id)
    this:CreateQuestNpc(arg1, npcs.Npc21934.id, 0, false, 0)
end

function Quest76016:OnSubFinish7601615(arg1)
    print("OnSubFinish7601615")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21836.alias)
end

function Quest76016:OnSubStart7601616(arg1)
    print("OnSubStart7601616")
end

function Quest76016:OnSubFinish7601616(arg1)
    print("OnSubFinish7601616")
end

function Quest76016:OnSubStart7601629(arg1)
    print("OnSubStart7601629")
end

function Quest76016:OnSubFinish7601629(arg1)
    print("OnSubFinish7601629")
end

function Quest76016:OnSubStart7601631(arg1)
    print("OnSubStart7601631")
    actorMgr:CreateActorWithPos("Q7601616Trigger", "Actor/Gadget/Q7601616Trigger", 70900002, 0, points._Q7601616TriggerPoint_.pos, points._Q7601616TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601631(arg1)
    print("OnSubFinish7601631")
end

function Quest76016:OnSubStart7601617(arg1)
    print("OnSubStart7601617")
    actorMgr:CreateActorWithPos("Q7601617Trigger", "Actor/Gadget/Q7601617Trigger", 70900002, 0, points._Q7601617TriggerPoint_.pos, points._Q7601617TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7601617Trigger", "Actor/Gadget/Q7601617Trigger", 70900002, 0, points._Q7601617TriggerPoint_.pos, points._Q7601617TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601617(arg1)
    print("OnSubFinish7601617")
end

function Quest76016:OnSubStart7601618(arg1)
    print("OnSubStart7601618")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601618, 0, 20, 0, npcs.Npc21836.id)
end

function Quest76016:OnSubFinish7601618(arg1)
    print("OnSubFinish7601618")
end

function Quest76016:OnSubStart7601619(arg1)
    print("OnSubStart7601619")
end

function Quest76016:OnSubFinish7601619(arg1)
    print("OnSubFinish7601619")
    this:SafeDestroyQuestNpc(npcs.Npc21932.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21836.alias, 3)
end

function Quest76016:OnSubStart7601620(arg1)
    print("OnSubStart7601620")
    this:PlayCutsceneIndex(7601620, function(arg1)
        actorUtils.FinishQuestID(false, 7601620)
    end, nil, nil, false)
end

function Quest76016:OnSubFinish7601620(arg1)
    print("OnSubFinish7601620")
end

function Quest76016:OnSubStart7601626(arg1)
    print("OnSubStart7601626")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601626, 0, 20, 0, npcs.Npc21836.id)
    this:CreateQuestNpc(arg1, npcs.Npc21932.id, 0, false, 0)
end

function Quest76016:OnSubFinish7601626(arg1)
    print("OnSubFinish7601626")
end

function Quest76016:OnSubStart7601621(arg1)
    print("OnSubStart7601621")
end

function Quest76016:OnSubFinish7601621(arg1)
    print("OnSubFinish7601621")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData, 5, nil, nil, nil)
end

function Quest76016:OnSubStart7601622(arg1)
    print("OnSubStart7601622")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601622, 0, 20, 0, npcs.Paimon.id)
end

function Quest76016:OnSubFinish7601622(arg1)
    print("OnSubFinish7601622")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76016:OnSubStart7601623(arg1)
    print("OnSubStart7601623")
    actorMgr:CreateActorWithPos("Q7601623Trigger", "Actor/Gadget/Q7601623Trigger", 70900002, 0, points._Q7601623TriggerPoint_.pos, points._Q7601623TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7601623Trigger", "Actor/Gadget/Q7601623Trigger", 70900002, 0, points._Q7601623TriggerPoint_.pos, points._Q7601623TriggerPoint_.rot, true, false, 3)
end

function Quest76016:OnSubFinish7601623(arg1)
    print("OnSubFinish7601623")
end

function Quest76016:OnSubStart7601624(arg1)
    print("OnSubStart7601624")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601624, 0, 80, 0, npcs.Npc21836.id)
end

function Quest76016:OnSubFinish7601624(arg1)
    print("OnSubFinish7601624")
    this:SafeDestroyQuestNpc(npcs.Npc21932.alias, 3)
    this:CreateQuestNpc(arg1, npcs.Npc21934.id, 0, false, 0)
end

return Quest76016
