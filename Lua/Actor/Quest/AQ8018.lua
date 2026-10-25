require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8018 = class("Quest8018", QuestActorProxy)
Quest8018.defaultAlias = "Quest8018"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest8018:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest8018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["801801"] = self.OnSubStart801801,
        ["801815"] = self.OnSubStart801815,
        ["801816"] = self.OnSubStart801816,
        ["801817"] = self.OnSubStart801817,
        ["801802"] = self.OnSubStart801802,
        ["801814"] = self.OnSubStart801814,
        ["801803"] = self.OnSubStart801803,
        ["801809"] = self.OnSubStart801809,
        ["801818"] = self.OnSubStart801818,
        ["801819"] = self.OnSubStart801819,
        ["801820"] = self.OnSubStart801820,
        ["801804"] = self.OnSubStart801804,
        ["801805"] = self.OnSubStart801805,
        ["801806"] = self.OnSubStart801806,
        ["801807"] = self.OnSubStart801807,
        ["801808"] = self.OnSubStart801808,
        ["801810"] = self.OnSubStart801810,
        ["801821"] = self.OnSubStart801821,
        ["801822"] = self.OnSubStart801822,
        ["801811"] = self.OnSubStart801811,
        ["801812"] = self.OnSubStart801812,
        ["801813"] = self.OnSubStart801813
    }
end

function Quest8018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["801801"] = self.OnSubFinish801801,
        ["801815"] = self.OnSubFinish801815,
        ["801816"] = self.OnSubFinish801816,
        ["801817"] = self.OnSubFinish801817,
        ["801802"] = self.OnSubFinish801802,
        ["801814"] = self.OnSubFinish801814,
        ["801803"] = self.OnSubFinish801803,
        ["801809"] = self.OnSubFinish801809,
        ["801818"] = self.OnSubFinish801818,
        ["801819"] = self.OnSubFinish801819,
        ["801820"] = self.OnSubFinish801820,
        ["801804"] = self.OnSubFinish801804,
        ["801805"] = self.OnSubFinish801805,
        ["801806"] = self.OnSubFinish801806,
        ["801807"] = self.OnSubFinish801807,
        ["801808"] = self.OnSubFinish801808,
        ["801810"] = self.OnSubFinish801810,
        ["801821"] = self.OnSubFinish801821,
        ["801822"] = self.OnSubFinish801822,
        ["801811"] = self.OnSubFinish801811,
        ["801812"] = self.OnSubFinish801812,
        ["801813"] = self.OnSubFinish801813
    }
end

function Quest8018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest8018:Start()
    print("Start")
end

function Quest8018:OnDestroy()
    print("OnDestroy")
end

function Quest8018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8018:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q801802EnterDungeon")
    this:ActorDestroy("Q801808EnterDungeon")
    this:ActorDestroy("Q801808Trigger")
    this:ActorDestroy("Q801807Transmit")
    this:ActorDestroy("Q801811transmit")
end

function Quest8018:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 801822 then
        actorUtils.FinishQuestID(false, 801822)
    end
end

function Quest8018:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest8018:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest8018:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest8018:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest8018:OnSubStart801801(arg1)
    print("OnSubStart801801")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1091.id, 0, 10, 801801)
        this:CreateQuestNpc(arg1, npcs.Npc15204.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15204.alias, 8018):DoFreeStyle(1130, true, nil, true, true, false, true)
    end)
end

function Quest8018:OnSubFinish801801(arg1)
    print("OnSubFinish801801")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
end

function Quest8018:OnSubStart801815(arg1)
    print("OnSubStart801815")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801815, 0, 15, 1, npcs.Npc1022.id)
    this:GetQuestNpcActor(npcs.Npc15204.alias, 8018):DoFreeStyle(1130, true, nil, true, true, false, true)
end

function Quest8018:OnSubFinish801815(arg1)
    print("OnSubFinish801815")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 3)
end

function Quest8018:OnSubStart801816(arg1)
    print("OnSubStart801816")
    this:GetQuestNpcActor(npcs.Npc15204.alias, 8018):DoFreeStyle(1130, true, nil, true, true, false, true)
end

function Quest8018:OnSubFinish801816(arg1)
    print("OnSubFinish801816")
end

function Quest8018:OnSubStart801817(arg1)
    print("OnSubStart801817")
    this:NpcCreateWithNpcTrigger(npcs.Npc1022.id, 0, 15, 801817)
    this:GetQuestNpcActor(npcs.Npc1022.alias, 8018):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 8018):DoFreeStyle(1121, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15204.alias, 8018):DoFreeStyle(1130, true, nil, true, true, false, true)
end

function Quest8018:OnSubFinish801817(arg1)
    print("OnSubFinish801817")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
end

function Quest8018:OnSubStart801802(arg1)
    print("OnSubStart801802")
    this:GetQuestNpcActor(npcs.Npc15204.alias, 8018):DoFreeStyle(1130, true, nil, true, true, false, true)
end

function Quest8018:OnSubFinish801802(arg1)
    print("OnSubFinish801802")
    this:SafeDestroyQuestNpc(npcs.Npc15204.alias, 3)
end

function Quest8018:OnSubStart801814(arg1)
    print("OnSubStart801814")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1022.id, 0, 801814, 30, true)
end

function Quest8018:OnSubFinish801814(arg1)
    print("OnSubFinish801814")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 20265)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2241, nil)
    end)
end

function Quest8018:OnSubStart801803(arg1)
    print("OnSubStart801803")
end

function Quest8018:OnSubFinish801803(arg1)
    print("OnSubFinish801803")
end

function Quest8018:OnSubStart801809(arg1)
    print("OnSubStart801809")
end

function Quest8018:OnSubFinish801809(arg1)
    print("OnSubFinish801809")
end

function Quest8018:OnSubStart801818(arg1)
    print("OnSubStart801818")
end

function Quest8018:OnSubFinish801818(arg1)
    print("OnSubFinish801818")
end

function Quest8018:OnSubStart801819(arg1)
    print("OnSubStart801819")
end

function Quest8018:OnSubFinish801819(arg1)
    print("OnSubFinish801819")
end

function Quest8018:OnSubStart801820(arg1)
    print("OnSubStart801820")
end

function Quest8018:OnSubFinish801820(arg1)
    print("OnSubFinish801820")
end

function Quest8018:OnSubStart801804(arg1)
    print("OnSubStart801804")
    this:NpcCreateWithNpcTrigger(npcs.Npc15206.id, 0, 25, 801804)
end

function Quest8018:OnSubFinish801804(arg1)
    print("OnSubFinish801804")
    this:SafeDestroyQuestNpc(npcs.Npc15206.alias, 20265)
end

function Quest8018:OnSubStart801805(arg1)
    print("OnSubStart801805")
end

function Quest8018:OnSubFinish801805(arg1)
    print("OnSubFinish801805")
end

function Quest8018:OnSubStart801806(arg1)
    print("OnSubStart801806")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801806, 0, 45, 1, npcs.Npc1022.id)
end

function Quest8018:OnSubFinish801806(arg1)
    print("OnSubFinish801806")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 20265)
end

function Quest8018:OnSubStart801807(arg1)
    print("OnSubStart801807")
    actorMgr:CreateActorWithPos("Q801807Transmit", "Actor/Gadget/Q801807Transmit", 70900002, 0, points._Q801807TransmitPoint_.pos, points._Q801807TransmitPoint_.rot, true, false, 20265)
end

function Quest8018:OnSubFinish801807(arg1)
    print("OnSubFinish801807")
    this:ActorDestroy("Q801807Transmit")
end

function Quest8018:OnSubStart801808(arg1)
    print("OnSubStart801808")
    this:CreateQuestNpc(arg1, npcs.Npc15204.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q801808EnterDungeon", "Actor/Gadget/Q801808EnterDungeon", 70900002, 0, points._Q801808EnterDungeonPoint_.pos, points._Q801808EnterDungeonPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q801808Trigger", "Actor/Gadget/Q801808Trigger", 70900002, 0, points._Q801808TriggerPoint_.pos, points._Q801808TriggerPoint_.rot, true, false, 3)
end

function Quest8018:OnSubFinish801808(arg1)
    print("OnSubFinish801808")
    this:SafeDestroyQuestNpc(npcs.Npc15204.alias, 3)
    this:ActorDestroy("Q801808EnterDungeon")
    this:ActorDestroy("Q801808Trigger")
end

function Quest8018:OnSubStart801810(arg1)
    print("OnSubStart801810")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc15204.id, 0, 801810, 50, true)
end

function Quest8018:OnSubFinish801810(arg1)
    print("OnSubFinish801810")
    this:SafeDestroyQuestNpc(npcs.Npc15204.alias, 20266)
end

function Quest8018:OnSubStart801821(arg1)
    print("OnSubStart801821")
end

function Quest8018:OnSubFinish801821(arg1)
    print("OnSubFinish801821")
end

function Quest8018:OnSubStart801822(arg1)
    print("OnSubStart801822")
end

function Quest8018:OnSubFinish801822(arg1)
    print("OnSubFinish801822")
end

function Quest8018:OnSubStart801811(arg1)
    print("OnSubStart801811")
    actorMgr:CreateActorWithPos("Q801811transmit", "Actor/Gadget/Q801811transmit", 70900002, 0, points._Q801811transmitPoint_.pos, points._Q801811transmitPoint_.rot, true, false, 20266)
end

function Quest8018:OnSubFinish801811(arg1)
    print("OnSubFinish801811")
    this:ActorDestroy("Q801811transmit")
end

function Quest8018:OnSubStart801812(arg1)
    print("OnSubStart801812")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1096.id, 0, 801812, 10, true)
end

function Quest8018:OnSubFinish801812(arg1)
    print("OnSubFinish801812")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest8018:OnSubStart801813(arg1)
    print("OnSubStart801813")
    this:NpcCreateWithNpcTriggerAndBlackscreen(801813, 0, 10, 1, npcs.Paimon.id)
end

function Quest8018:OnSubFinish801813(arg1)
    print("OnSubFinish801813")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterCompleteDialog", 1506)
    end)
end

return Quest8018
