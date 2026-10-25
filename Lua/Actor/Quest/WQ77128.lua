require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77128 = class("Quest77128", QuestActorProxy)
Quest77128.defaultAlias = "Quest77128"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77128:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77128:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7712801"] = self.OnSubStart7712801,
        ["7712816"] = self.OnSubStart7712816,
        ["7712815"] = self.OnSubStart7712815,
        ["7712811"] = self.OnSubStart7712811,
        ["7712802"] = self.OnSubStart7712802,
        ["7712803"] = self.OnSubStart7712803,
        ["7712810"] = self.OnSubStart7712810,
        ["7712809"] = self.OnSubStart7712809,
        ["7712804"] = self.OnSubStart7712804,
        ["7712805"] = self.OnSubStart7712805,
        ["7712806"] = self.OnSubStart7712806,
        ["7712807"] = self.OnSubStart7712807,
        ["7712819"] = self.OnSubStart7712819,
        ["7712814"] = self.OnSubStart7712814,
        ["7712812"] = self.OnSubStart7712812,
        ["7712813"] = self.OnSubStart7712813,
        ["7712808"] = self.OnSubStart7712808,
        ["7712817"] = self.OnSubStart7712817,
        ["7712818"] = self.OnSubStart7712818
    }
end

function Quest77128:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7712801"] = self.OnSubFinish7712801,
        ["7712816"] = self.OnSubFinish7712816,
        ["7712815"] = self.OnSubFinish7712815,
        ["7712811"] = self.OnSubFinish7712811,
        ["7712802"] = self.OnSubFinish7712802,
        ["7712803"] = self.OnSubFinish7712803,
        ["7712810"] = self.OnSubFinish7712810,
        ["7712809"] = self.OnSubFinish7712809,
        ["7712804"] = self.OnSubFinish7712804,
        ["7712805"] = self.OnSubFinish7712805,
        ["7712806"] = self.OnSubFinish7712806,
        ["7712807"] = self.OnSubFinish7712807,
        ["7712819"] = self.OnSubFinish7712819,
        ["7712814"] = self.OnSubFinish7712814,
        ["7712812"] = self.OnSubFinish7712812,
        ["7712813"] = self.OnSubFinish7712813,
        ["7712808"] = self.OnSubFinish7712808,
        ["7712817"] = self.OnSubFinish7712817,
        ["7712818"] = self.OnSubFinish7712818
    }
end

function Quest77128:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7712801"] = self.OnSubFailed7712801,
        ["7712811"] = self.OnSubFailed7712811,
        ["7712802"] = self.OnSubFailed7712802,
        ["7712810"] = self.OnSubFailed7712810,
        ["7712809"] = self.OnSubFailed7712809,
        ["7712819"] = self.OnSubFailed7712819,
        ["7712812"] = self.OnSubFailed7712812,
        ["7712813"] = self.OnSubFailed7712813,
        ["7712808"] = self.OnSubFailed7712808,
        ["7712818"] = self.OnSubFailed7712818
    }
end

function Quest77128:Start()
    print("Start")
end

function Quest77128:OnDestroy()
    print("OnDestroy")
end

function Quest77128:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77128:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77128:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77128:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7712802Trigger", 77128)
    this:ActorDestroy("Q7712804Trigger", 77128)
    this:ActorDestroy("Q7712805Trigger", 77128)
    this:ActorDestroy("Q7712805Trigger_1", 77128)
    this:ActorDestroy("Q7712811Trigger_1", 77128)
    this:ActorDestroy("Q7712812Trigger", 77128)
end

function Quest77128:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 102 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest77128:ActorDestroy(arg1, arg2)
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

function Quest77128:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77128:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77128:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77128:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77128:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77128:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77128:OnSubStart7712801(arg1)
    print("OnSubStart7712801")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc22361.id, 0, 7712801, 15, true)
end

function Quest77128:OnSubFinish7712801(arg1)
    print("OnSubFinish7712801")
    this:SafeDestroyQuestNpc(npcs.Npc22361.alias, 3)
    this:SetNavigationByMainId(77131, true)
end

function Quest77128:OnSubFailed7712801(arg1)
    print("OnSubFailed7712801")
    this:RecycleAllRes()
end

function Quest77128:OnSubStart7712816(arg1)
    print("OnSubStart7712816")
end

function Quest77128:OnSubFinish7712816(arg1)
    print("OnSubFinish7712816")
end

function Quest77128:OnSubStart7712815(arg1)
    print("OnSubStart7712815")
end

function Quest77128:OnSubFinish7712815(arg1)
    print("OnSubFinish7712815")
end

function Quest77128:OnSubStart7712811(arg1)
    print("OnSubStart7712811")
    this:CreateQuestNpc(arg1, npcs.Npc7655.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7712811Trigger_1", "Actor/Gadget/Q7712811Trigger_1", 70900002, 0, points._Q7712811Trigger_1Point_.pos, points._Q7712811Trigger_1Point_.rot, true, false, 3, nil, 0, 77128)
end

function Quest77128:OnSubFinish7712811(arg1)
    print("OnSubFinish7712811")
    this:SafeDestroyQuestNpc(npcs.Npc7655.alias, 3)
end

function Quest77128:OnSubFailed7712811(arg1)
    print("OnSubFailed7712811")
    this:RecycleAllRes()
end

function Quest77128:OnSubStart7712802(arg1)
    print("OnSubStart7712802")
    this:CreateQuestNpc(arg1, npcs.Npc22550.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22515.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7712802Trigger", "Actor/Gadget/Q7712802Trigger", 70900002, 0, points._Q7712802TriggerPoint_.pos, points._Q7712802TriggerPoint_.rot, true, false, 3, nil, 0, 77128)
    actorMgr:CreateActorWithPos("Q7712802Trigger_1", "Actor/Gadget/Q7712802Trigger_1", 70900002, 0, points._Q7712802Trigger_1Point_.pos, points._Q7712802Trigger_1Point_.rot, true, false, 3, nil, 0, 77128)
end

function Quest77128:OnSubFinish7712802(arg1)
    print("OnSubFinish7712802")
    this:SafeDestroyQuestNpc(npcs.Npc22550.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22515.alias, 3)
end

function Quest77128:OnSubFailed7712802(arg1)
    print("OnSubFailed7712802")
    this:RecycleAllRes()
end

function Quest77128:OnSubStart7712803(arg1)
    print("OnSubStart7712803")
    actorUtils.FinishQuestWithParam({false}, {7712803})
end

function Quest77128:OnSubFinish7712803(arg1)
    print("OnSubFinish7712803")
    this:SafeDestroyQuestNpc(npcs.Npc22546.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7875.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_7712803, nil)
end

function Quest77128:OnSubStart7712810(arg1)
    print("OnSubStart7712810")
end

function Quest77128:OnSubFinish7712810(arg1)
    print("OnSubFinish7712810")
    if this:GetSubQuestState(7712809) == 3 then
    end
end

function Quest77128:OnSubFailed7712810(arg1)
    print("OnSubFailed7712810")
    this:RecycleAllRes()
end

function Quest77128:OnSubStart7712809(arg1)
    print("OnSubStart7712809")
end

function Quest77128:OnSubFinish7712809(arg1)
    print("OnSubFinish7712809")
    if this:GetSubQuestState(7712810) == 3 then
    end
end

function Quest77128:OnSubFailed7712809(arg1)
    print("OnSubFailed7712809")
    this:RecycleAllRes()
end

function Quest77128:OnSubStart7712804(arg1)
    print("OnSubStart7712804")
    this:NpcCreateWithNpcTrigger(npcs.Npc22318.id, 0, 10, 7712804)
    actorMgr:CreateActorWithPos("Q7712804Trigger", "Actor/Gadget/Q7712804Trigger", 70900002, 0, points._Q7712804TriggerPoint_.pos, points._Q7712804TriggerPoint_.rot, true, false, 3, nil, 0, 77128)
end

function Quest77128:OnSubFinish7712804(arg1)
    print("OnSubFinish7712804")
    this:SafeDestroyQuestNpc(npcs.Npc22546.alias, 3)
end

function Quest77128:OnSubStart7712805(arg1)
    print("OnSubStart7712805")
    this:CreateQuestNpc(arg1, npcs.Npc22318.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7712805Trigger", "Actor/Gadget/Q7712805Trigger", 70900002, 0, points._Q7712805TriggerPoint_.pos, points._Q7712805TriggerPoint_.rot, true, false, 3, nil, 0, 77128)
    actorMgr:CreateActorWithPos("Q7712805Trigger_1", "Actor/Gadget/Q7712805Trigger_1", 70900002, 0, points._Q7712805Trigger_1Point_.pos, points._Q7712805Trigger_1Point_.rot, true, false, 3, nil, 0, 77128)
end

function Quest77128:OnSubFinish7712805(arg1)
    print("OnSubFinish7712805")
    this:SafeDestroyQuestNpc(npcs.Npc22546.alias, 3)
end

function Quest77128:OnSubStart7712806(arg1)
    print("OnSubStart7712806")
    this:CreateQuestNpc(arg1, npcs.Npc22318.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7712806, 0, 10, 0.5, npcs.Npc22361.id)
end

function Quest77128:OnSubFinish7712806(arg1)
    print("OnSubFinish7712806")
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData, function(arg1)
        this:AfterMainPageActiveSafeCall(nil)
        this:SafeDestroyQuestNpc(npcs.Npc22318.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc22361.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc7654.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc22546.alias, 3)
    end, nil, nil)
end

function Quest77128:OnSubStart7712807(arg1)
    print("OnSubStart7712807")
    this:PlayCutsceneIndex(7710414, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7712807})
    end, nil, nil, false)
end

function Quest77128:OnSubFinish7712807(arg1)
    print("OnSubFinish7712807")
    this:SafeDestroyQuestNpc(npcs.Npc22318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22546.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_7712807, nil)
end

function Quest77128:OnSubStart7712819(arg1)
    print("OnSubStart7712819")
end

function Quest77128:OnSubFinish7712819(arg1)
    print("OnSubFinish7712819")
    this:SafeDestroyQuestNpc(npcs.Npc22546.alias, 3)
end

function Quest77128:OnSubFailed7712819(arg1)
    print("OnSubFailed7712819")
    this:RecycleAllRes()
end

function Quest77128:OnSubStart7712814(arg1)
    print("OnSubStart7712814")
    this:CallDelayByQuest("", 0.3, nil)
    actorUtils.FinishQuestWithParam({false}, {7712814})
end

function Quest77128:OnSubFinish7712814(arg1)
    print("OnSubFinish7712814")
    this:NpcDestroyWithDither(3, npcs.Npc7655.alias)
end

function Quest77128:OnSubStart7712812(arg1)
    print("OnSubStart7712812")
    this:NpcCreateWithNpcTrigger(npcs.Npc22361.id, 0, 20, 7712812)
    actorMgr:CreateActorWithPos("Q7712812Trigger", "Actor/Gadget/Q7712812Trigger", 70900002, 0, points._Q7712812TriggerPoint_.pos, points._Q7712812TriggerPoint_.rot, true, false, 3, nil, 0, 77128)
end

function Quest77128:OnSubFinish7712812(arg1)
    print("OnSubFinish7712812")
end

function Quest77128:OnSubFailed7712812(arg1)
    print("OnSubFailed7712812")
    this:RecycleAllRes()
end

function Quest77128:OnSubStart7712813(arg1)
    print("OnSubStart7712813")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc22361.id, 0, 7712813, 15, true)
    this:NpcCreateWithBlackscreen(0, npcs.Npc7655.id, arg1)
end

function Quest77128:OnSubFinish7712813(arg1)
    print("OnSubFinish7712813")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22361.alias)
end

function Quest77128:OnSubFailed7712813(arg1)
    print("OnSubFailed7712813")
    this:RecycleAllRes()
end

function Quest77128:OnSubStart7712808(arg1)
    print("OnSubStart7712808")
end

function Quest77128:OnSubFinish7712808(arg1)
    print("OnSubFinish7712808")
    this:QuestNarratorTask(datas.NarratorWithId_7712808, nil)
    this:SetNavigationByMainId(77107, true)
end

function Quest77128:OnSubFailed7712808(arg1)
    print("OnSubFailed7712808")
    this:RecycleAllRes()
end

function Quest77128:OnSubStart7712817(arg1)
    print("OnSubStart7712817")
end

function Quest77128:OnSubFinish7712817(arg1)
    print("OnSubFinish7712817")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, function(arg1)
        this:AfterMainPageActiveSafeCall(nil)
    end, nil, nil)
end

function Quest77128:OnSubStart7712818(arg1)
    print("OnSubStart7712818")
end

function Quest77128:OnSubFinish7712818(arg1)
    print("OnSubFinish7712818")
end

function Quest77128:OnSubFailed7712818(arg1)
    print("OnSubFailed7712818")
    this:RecycleAllRes()
end

return Quest77128
