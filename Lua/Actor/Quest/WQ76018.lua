require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76018 = class("Quest76018", QuestActorProxy)
Quest76018.defaultAlias = "Quest76018"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76018:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7601801"] = self.OnSubStart7601801,
        ["7601802"] = self.OnSubStart7601802,
        ["7601803"] = self.OnSubStart7601803,
        ["7601819"] = self.OnSubStart7601819,
        ["7601820"] = self.OnSubStart7601820,
        ["7601821"] = self.OnSubStart7601821,
        ["7601818"] = self.OnSubStart7601818,
        ["7601804"] = self.OnSubStart7601804,
        ["7601805"] = self.OnSubStart7601805,
        ["7601806"] = self.OnSubStart7601806,
        ["7601822"] = self.OnSubStart7601822,
        ["7601825"] = self.OnSubStart7601825,
        ["7601807"] = self.OnSubStart7601807,
        ["7601808"] = self.OnSubStart7601808,
        ["7601823"] = self.OnSubStart7601823,
        ["7601826"] = self.OnSubStart7601826,
        ["7601809"] = self.OnSubStart7601809,
        ["7601817"] = self.OnSubStart7601817,
        ["7601810"] = self.OnSubStart7601810,
        ["7601811"] = self.OnSubStart7601811,
        ["7601812"] = self.OnSubStart7601812,
        ["7601814"] = self.OnSubStart7601814,
        ["7601813"] = self.OnSubStart7601813,
        ["7601824"] = self.OnSubStart7601824,
        ["7601815"] = self.OnSubStart7601815,
        ["7601816"] = self.OnSubStart7601816
    }
end

function Quest76018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7601801"] = self.OnSubFinish7601801,
        ["7601802"] = self.OnSubFinish7601802,
        ["7601803"] = self.OnSubFinish7601803,
        ["7601819"] = self.OnSubFinish7601819,
        ["7601820"] = self.OnSubFinish7601820,
        ["7601821"] = self.OnSubFinish7601821,
        ["7601818"] = self.OnSubFinish7601818,
        ["7601804"] = self.OnSubFinish7601804,
        ["7601805"] = self.OnSubFinish7601805,
        ["7601806"] = self.OnSubFinish7601806,
        ["7601822"] = self.OnSubFinish7601822,
        ["7601825"] = self.OnSubFinish7601825,
        ["7601807"] = self.OnSubFinish7601807,
        ["7601808"] = self.OnSubFinish7601808,
        ["7601823"] = self.OnSubFinish7601823,
        ["7601826"] = self.OnSubFinish7601826,
        ["7601809"] = self.OnSubFinish7601809,
        ["7601817"] = self.OnSubFinish7601817,
        ["7601810"] = self.OnSubFinish7601810,
        ["7601811"] = self.OnSubFinish7601811,
        ["7601812"] = self.OnSubFinish7601812,
        ["7601814"] = self.OnSubFinish7601814,
        ["7601813"] = self.OnSubFinish7601813,
        ["7601824"] = self.OnSubFinish7601824,
        ["7601815"] = self.OnSubFinish7601815,
        ["7601816"] = self.OnSubFinish7601816
    }
end

function Quest76018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7601823"] = self.OnSubFailed7601823}
end

function Quest76018:Start()
    print("Start")
end

function Quest76018:OnDestroy()
    print("OnDestroy")
end

function Quest76018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76018:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7601804Trigger", 0)
    this:ActorDestroy("Q7601807Trigger", 0)
    this:ActorDestroy("Q7601810Trigger", 0)
end

function Quest76018:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7601809)
    end

    if arg1 == 2 then
        actorUtils.FinishQuestID(false, 7601812)
    end
end

function Quest76018:ActorDestroy(arg1, arg2)
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

function Quest76018:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76018:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76018:OnSubStart7601801(arg1)
    print("OnSubStart7601801")
    this:CreateQuestNpc(arg1, npcs.Npc21923_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21923_1.alias, 76018):DoFreeStyle(6, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22131.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22132.id, 0, false, 0)
end

function Quest76018:OnSubFinish7601801(arg1)
    print("OnSubFinish7601801")
    this:QuestNarratorTask(datas.NarratorWithId_7601802, nil)
end

function Quest76018:OnSubStart7601802(arg1)
    print("OnSubStart7601802")
    this:GetQuestNpcActor(npcs.Npc21923_1.alias, 76018):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest76018:OnSubFinish7601802(arg1)
    print("OnSubFinish7601802")
end

function Quest76018:OnSubStart7601803(arg1)
    print("OnSubStart7601803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601803, 0, 20, 0.5, npcs.Paimon.id)
    this:GetQuestNpcActor(npcs.Npc21923_1.alias, 76018):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest76018:OnSubFinish7601803(arg1)
    print("OnSubFinish7601803")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76018:OnSubStart7601819(arg1)
    print("OnSubStart7601819")
    this:GetQuestNpcActor(npcs.Npc21923_1.alias, 76018):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest76018:OnSubFinish7601819(arg1)
    print("OnSubFinish7601819")
end

function Quest76018:OnSubStart7601820(arg1)
    print("OnSubStart7601820")
    this:RequestInteraction(npcs.Npc21923_1.alias, "", true)
end

function Quest76018:OnSubFinish7601820(arg1)
    print("OnSubFinish7601820")
    this:SafeDestroyQuestNpc(npcs.Npc21923_1.alias, 3)
end

function Quest76018:OnSubStart7601821(arg1)
    print("OnSubStart7601821")
end

function Quest76018:OnSubFinish7601821(arg1)
    print("OnSubFinish7601821")
end

function Quest76018:OnSubStart7601818(arg1)
    print("OnSubStart7601818")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601818, 0, 20, 1, npcs.Npc21923_1.id)
end

function Quest76018:OnSubFinish7601818(arg1)
    print("OnSubFinish7601818")
    this:SafeDestroyQuestNpc(npcs.Npc21923_1.alias, 3)
end

function Quest76018:OnSubStart7601804(arg1)
    print("OnSubStart7601804")
    actorMgr:CreateActorWithPos("Q7601804Trigger", "Actor/Gadget/Q7601804Trigger", 70900002, 0, points._Q7601804TriggerPoint_.pos, points._Q7601804TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76018:OnSubFinish7601804(arg1)
    print("OnSubFinish7601804")
end

function Quest76018:OnSubStart7601805(arg1)
    print("OnSubStart7601805")
end

function Quest76018:OnSubFinish7601805(arg1)
    print("OnSubFinish7601805")
end

function Quest76018:OnSubStart7601806(arg1)
    print("OnSubStart7601806")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601806, 0, 20, 0.5, npcs.Paimon.id)
    this:NpcCreateWithBlackscreen(0, npcs.Npc21923_1.id, arg1)
end

function Quest76018:OnSubFinish7601806(arg1)
    print("OnSubFinish7601806")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21923_1.alias, 3)
end

function Quest76018:OnSubStart7601822(arg1)
    print("OnSubStart7601822")
end

function Quest76018:OnSubFinish7601822(arg1)
    print("OnSubFinish7601822")
end

function Quest76018:OnSubStart7601825(arg1)
    print("OnSubStart7601825")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601825, 0, 30, 0, npcs.Npc21923_1.id)
end

function Quest76018:OnSubFinish7601825(arg1)
    print("OnSubFinish7601825")
    this:SafeDestroyQuestNpc(npcs.Npc21923_1.alias, 3)
end

function Quest76018:OnSubStart7601807(arg1)
    print("OnSubStart7601807")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601807, 0, 5, 0.5, npcs.Paimon.id)
    actorMgr:CreateActorWithPos("Q7601807Trigger", "Actor/Gadget/Q7601807Trigger", 70900002, 0, points._Q7601807TriggerPoint_.pos, points._Q7601807TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76018:OnSubFinish7601807(arg1)
    print("OnSubFinish7601807")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76018:OnSubStart7601808(arg1)
    print("OnSubStart7601808")
end

function Quest76018:OnSubFinish7601808(arg1)
    print("OnSubFinish7601808")
end

function Quest76018:OnSubStart7601823(arg1)
    print("OnSubStart7601823")
end

function Quest76018:OnSubFinish7601823(arg1)
    print("OnSubFinish7601823")
end

function Quest76018:OnSubFailed7601823(arg1)
    print("OnSubFailed7601823")
    this:RecycleAllRes()
end

function Quest76018:OnSubStart7601826(arg1)
    print("OnSubStart7601826")
end

function Quest76018:OnSubFinish7601826(arg1)
    print("OnSubFinish7601826")
end

function Quest76018:OnSubStart7601809(arg1)
    print("OnSubStart7601809")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601809, 0, 15, 0.5, npcs.Npc21923_1.id)
end

function Quest76018:OnSubFinish7601809(arg1)
    print("OnSubFinish7601809")
    this:SafeDestroyQuestNpc(npcs.Npc21923_1.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_76018017, nil)
end

function Quest76018:OnSubStart7601817(arg1)
    print("OnSubStart7601817")
end

function Quest76018:OnSubFinish7601817(arg1)
    print("OnSubFinish7601817")
end

function Quest76018:OnSubStart7601810(arg1)
    print("OnSubStart7601810")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601810, 0, 10, 1, npcs.Npc21923_1.id)
    actorMgr:CreateActorWithPos("Q7601810Trigger", "Actor/Gadget/Q7601810Trigger", 70900002, 0, points._Q7601810TriggerPoint_.pos, points._Q7601810TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76018:OnSubFinish7601810(arg1)
    print("OnSubFinish7601810")
    this:SafeDestroyQuestNpc(npcs.Npc21923_1.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_760180112, nil)
end

function Quest76018:OnSubStart7601811(arg1)
    print("OnSubStart7601811")
end

function Quest76018:OnSubFinish7601811(arg1)
    print("OnSubFinish7601811")
end

function Quest76018:OnSubStart7601812(arg1)
    print("OnSubStart7601812")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601812, 0, 30, 0.5, npcs.Npc21923_1.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601812, 0, 30, 1, npcs.Paimon.id)
end

function Quest76018:OnSubFinish7601812(arg1)
    print("OnSubFinish7601812")
    this:SafeDestroyQuestNpc(npcs.Npc21923_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76018:OnSubStart7601814(arg1)
    print("OnSubStart7601814")
end

function Quest76018:OnSubFinish7601814(arg1)
    print("OnSubFinish7601814")
    this:QuestNarratorTask(datas.NarratorWithId_760181301, nil)
end

function Quest76018:OnSubStart7601813(arg1)
    print("OnSubStart7601813")
end

function Quest76018:OnSubFinish7601813(arg1)
    print("OnSubFinish7601813")
end

function Quest76018:OnSubStart7601824(arg1)
    print("OnSubStart7601824")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601824, 0, 5, 1, npcs.Npc21923_1.id)
end

function Quest76018:OnSubFinish7601824(arg1)
    print("OnSubFinish7601824")
    this:SafeDestroyQuestNpc(npcs.Npc21923_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22132.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22131.alias, 3)
end

function Quest76018:OnSubStart7601815(arg1)
    print("OnSubStart7601815")
    this:PlayCutsceneIndex(7601815, function(arg1)
        actorUtils.FinishQuestID(false, 7601815)
    end, nil, nil, false)
end

function Quest76018:OnSubFinish7601815(arg1)
    print("OnSubFinish7601815")
end

function Quest76018:OnSubStart7601816(arg1)
    print("OnSubStart7601816")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601816, 0, 20, 0.5, npcs.Paimon.id)
end

function Quest76018:OnSubFinish7601816(arg1)
    print("OnSubFinish7601816")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

return Quest76018
