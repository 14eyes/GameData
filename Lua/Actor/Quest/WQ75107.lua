require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75107 = class("Quest75107", QuestActorProxy)
Quest75107.defaultAlias = "Quest75107"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75107:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75107:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7510701"] = self.OnSubStart7510701,
        ["7510713"] = self.OnSubStart7510713,
        ["7510714"] = self.OnSubStart7510714,
        ["7510715"] = self.OnSubStart7510715,
        ["7510716"] = self.OnSubStart7510716,
        ["7510717"] = self.OnSubStart7510717,
        ["7510703"] = self.OnSubStart7510703,
        ["7510719"] = self.OnSubStart7510719,
        ["7510704"] = self.OnSubStart7510704,
        ["7510711"] = self.OnSubStart7510711,
        ["7510706"] = self.OnSubStart7510706,
        ["7510707"] = self.OnSubStart7510707,
        ["7510712"] = self.OnSubStart7510712,
        ["7510708"] = self.OnSubStart7510708,
        ["7510718"] = self.OnSubStart7510718,
        ["7510709"] = self.OnSubStart7510709,
        ["7510710"] = self.OnSubStart7510710,
        ["7510705"] = self.OnSubStart7510705,
        ["7510702"] = self.OnSubStart7510702
    }
end

function Quest75107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7510701"] = self.OnSubFinish7510701,
        ["7510713"] = self.OnSubFinish7510713,
        ["7510714"] = self.OnSubFinish7510714,
        ["7510715"] = self.OnSubFinish7510715,
        ["7510716"] = self.OnSubFinish7510716,
        ["7510717"] = self.OnSubFinish7510717,
        ["7510703"] = self.OnSubFinish7510703,
        ["7510719"] = self.OnSubFinish7510719,
        ["7510704"] = self.OnSubFinish7510704,
        ["7510711"] = self.OnSubFinish7510711,
        ["7510706"] = self.OnSubFinish7510706,
        ["7510707"] = self.OnSubFinish7510707,
        ["7510712"] = self.OnSubFinish7510712,
        ["7510708"] = self.OnSubFinish7510708,
        ["7510718"] = self.OnSubFinish7510718,
        ["7510709"] = self.OnSubFinish7510709,
        ["7510710"] = self.OnSubFinish7510710,
        ["7510705"] = self.OnSubFinish7510705,
        ["7510702"] = self.OnSubFinish7510702
    }
end

function Quest75107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7510712"] = self.OnSubFailed7510712}
end

function Quest75107:Start()
    print("Start")
end

function Quest75107:OnDestroy()
    print("OnDestroy")
end

function Quest75107:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75107:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75107:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc21688.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21754.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21753.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21686.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21687.alias, 3)
    this:ActorDestroy("Q7510706_trigger")
    this:ActorDestroy("Q7510709_trigger")
    this:DestroyNpcTrigger("Q7510710N21688Trigger")
    this:DestroyNpcTrigger("Q7510707N21754Trigger")
    this:DestroyNpcTrigger("Q7510704N21688Trigger")
    this:DestroyNpcTrigger("Q7510701N21688Trigger")
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Q7510703")
    this:SafeDestroyQuestNpc(npcs.Npc21688.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21686.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21687.alias, 3)
    this:ActorDestroy("Q7510706_trigger")
    this:ActorDestroy("Q7510709_trigger")
end

function Quest75107:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75107:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest75107:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75107:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75107:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75107:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg4, arg1, arg6, arg2, arg5, arg3)
end

function Quest75107:OnSubStart7510701(arg1)
    print("OnSubStart7510701")
    this:NpcCreateWithNpcTrigger(npcs.Npc21688.id, 0, 15, 7510701)
    this:GetQuestNpcActor(npcs.Npc21688.alias, 75107):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21687.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest75107:OnSubFinish7510701(arg1)
    print("OnSubFinish7510701")
    this:SafeDestroyQuestNpc(npcs.Npc21688.alias, 3)
    this:SetNavigationByMainId(75107, true)
end

function Quest75107:OnSubStart7510713(arg1)
    print("OnSubStart7510713")
end

function Quest75107:OnSubFinish7510713(arg1)
    print("OnSubFinish7510713")
end

function Quest75107:OnSubStart7510714(arg1)
    print("OnSubStart7510714")
end

function Quest75107:OnSubFinish7510714(arg1)
    print("OnSubFinish7510714")
end

function Quest75107:OnSubStart7510715(arg1)
    print("OnSubStart7510715")
end

function Quest75107:OnSubFinish7510715(arg1)
    print("OnSubFinish7510715")
end

function Quest75107:OnSubStart7510716(arg1)
    print("OnSubStart7510716")
end

function Quest75107:OnSubFinish7510716(arg1)
    print("OnSubFinish7510716")
end

function Quest75107:OnSubStart7510717(arg1)
    print("OnSubStart7510717")
end

function Quest75107:OnSubFinish7510717(arg1)
    print("OnSubFinish7510717")
end

function Quest75107:OnSubStart7510703(arg1)
    print("OnSubStart7510703")
    this:CreateQuestNpc(arg1, npcs.Npc21687.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(6, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21753.id, 0, false, 0)
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7510703, 0, 30, "Q7510703", 20, npcs.Npc21460.id)
end

function Quest75107:OnSubFinish7510703(arg1)
    print("OnSubFinish7510703")
end

function Quest75107:OnSubStart7510719(arg1)
    print("OnSubStart7510719")
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(6, true, nil, true, true, false, false)
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7510719, 0, 30, "Q7510703", 20, npcs.Npc21460.id)
end

function Quest75107:OnSubFinish7510719(arg1)
    print("OnSubFinish7510719")
    this:SafeDestroyQuestNpc(npcs.Npc21753.alias, 3)
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Q7510703")
end

function Quest75107:OnSubStart7510704(arg1)
    print("OnSubStart7510704")
    this:CreateQuestNpc(arg1, npcs.Npc21687.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(6, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21688.id, 0, 7510704, 30)
end

function Quest75107:OnSubFinish7510704(arg1)
    print("OnSubFinish7510704")
    this:SafeDestroyQuestNpc(npcs.Npc21688.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowBlackScreenWithDialogText(0, 2, 0.5, nil, nil, nil, 0, false, true)
    end)
end

function Quest75107:OnSubStart7510711(arg1)
    print("OnSubStart7510711")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21686.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21687.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc21686.alias, 75107):DoFreeStyle(3, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(1, true, nil, true, true, false, false)
    end)
end

function Quest75107:OnSubFinish7510711(arg1)
    print("OnSubFinish7510711")
    this:NatsaurusVehicleOff()
end

function Quest75107:OnSubStart7510706(arg1)
    print("OnSubStart7510706")
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21686.alias, 75107):DoFreeStyle(3, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7510706_trigger", "Actor/Gadget/Q7510706_trigger", 70900002, 0, points._Q7510706_triggerPoint_.pos, points._Q7510706_triggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7510706TP", "Actor/Gadget/Q7510706TP", 70900002, 0, points._Q7510706TPPoint_.pos, points._Q7510706TPPoint_.rot, true, false, nil)
end

function Quest75107:OnSubFinish7510706(arg1)
    print("OnSubFinish7510706")
    this:ActorDestroy("Q7510706TP")
end

function Quest75107:OnSubStart7510707(arg1)
    print("OnSubStart7510707")
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21686.alias, 75107):DoFreeStyle(3, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21754.id, 0, 7510707, 50)
    actorMgr:CreateActorWithPos("Q7510706TP", "Actor/Gadget/Q7510706TP", 70900002, 0, points._Q7510706TPPoint_.pos, points._Q7510706TPPoint_.rot, true, false, nil)
end

function Quest75107:OnSubFinish7510707(arg1)
    print("OnSubFinish7510707")
    this:SafeDestroyQuestNpc(npcs.Npc21754.alias, 3)
    this:ActorDestroy("Q7510706TP")
end

function Quest75107:OnSubStart7510712(arg1)
    print("OnSubStart7510712")
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21686.alias, 75107):DoFreeStyle(3, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7510706TP", "Actor/Gadget/Q7510706TP", 70900002, 0, points._Q7510706TPPoint_.pos, points._Q7510706TPPoint_.rot, true, false, nil)
end

function Quest75107:OnSubFinish7510712(arg1)
    print("OnSubFinish7510712")
    this:TransmitPlayerByQuestId(7510712, 1, nil, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7510708, nil)
    end, nil)

    this:ActorDestroy("Q7510706TP")
end

function Quest75107:OnSubFailed7510712(arg1)
    print("OnSubFailed7510712")
    this:TransmitPlayerByQuestId(7510712, 1, nil, nil, nil)
end

function Quest75107:OnSubStart7510708(arg1)
    print("OnSubStart7510708")
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21686.alias, 75107):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75107:OnSubFinish7510708(arg1)
    print("OnSubFinish7510708")
end

function Quest75107:OnSubStart7510718(arg1)
    print("OnSubStart7510718")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Paimon.id, 0, 7510718, 20)
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21686.alias, 75107):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75107:OnSubFinish7510718(arg1)
    print("OnSubFinish7510718")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21686.alias, 3)
end

function Quest75107:OnSubStart7510709(arg1)
    print("OnSubStart7510709")
    this:CreateQuestNpc(arg1, npcs.Npc21687.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21688.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7510709_trigger", "Actor/Gadget/Q7510709_trigger", 70900002, 0, points._Q7510709_triggerPoint_.pos, points._Q7510709_triggerPoint_.rot, true, false, 3)
end

function Quest75107:OnSubFinish7510709(arg1)
    print("OnSubFinish7510709")
end

function Quest75107:OnSubStart7510710(arg1)
    print("OnSubStart7510710")
    this:GetQuestNpcActor(npcs.Npc21687.alias, 75107):DoFreeStyle(1, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc21688.id, 0, 30, 7510710)
end

function Quest75107:OnSubFinish7510710(arg1)
    print("OnSubFinish7510710")
    this:SafeDestroyQuestNpc(npcs.Npc21688.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21687.alias, 3)
    this:RequestInteraction(npcs.Npc21688.alias, "", true)
end

function Quest75107:OnSubStart7510705(arg1)
    print("OnSubStart7510705")
    this:CreateQuestNpc(arg1, npcs.Npc21686.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21686.alias, "", true)
end

function Quest75107:OnSubFinish7510705(arg1)
    print("OnSubFinish7510705")
end

function Quest75107:OnSubStart7510702(arg1)
    print("OnSubStart7510702")
    this:CreateQuestNpc(arg1, npcs.Npc21688.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21687.id, 0, false, 0)
end

function Quest75107:OnSubFinish7510702(arg1)
    print("OnSubFinish7510702")
end

return Quest75107
