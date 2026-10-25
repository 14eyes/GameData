require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77666 = class("Quest77666", QuestActorProxy)
Quest77666.defaultAlias = "Quest77666"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77666:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77666:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7766601"] = self.OnSubStart7766601,
        ["7766609"] = self.OnSubStart7766609,
        ["7766602"] = self.OnSubStart7766602,
        ["7766605"] = self.OnSubStart7766605,
        ["7766606"] = self.OnSubStart7766606,
        ["7766607"] = self.OnSubStart7766607,
        ["7766608"] = self.OnSubStart7766608,
        ["7766604"] = self.OnSubStart7766604,
        ["7766603"] = self.OnSubStart7766603
    }
end

function Quest77666:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7766601"] = self.OnSubFinish7766601,
        ["7766609"] = self.OnSubFinish7766609,
        ["7766602"] = self.OnSubFinish7766602,
        ["7766605"] = self.OnSubFinish7766605,
        ["7766606"] = self.OnSubFinish7766606,
        ["7766607"] = self.OnSubFinish7766607,
        ["7766608"] = self.OnSubFinish7766608,
        ["7766604"] = self.OnSubFinish7766604,
        ["7766603"] = self.OnSubFinish7766603
    }
end

function Quest77666:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7766602"] = self.OnSubFailed7766602,
        ["7766605"] = self.OnSubFailed7766605,
        ["7766606"] = self.OnSubFailed7766606,
        ["7766607"] = self.OnSubFailed7766607,
        ["7766608"] = self.OnSubFailed7766608
    }
end

function Quest77666:Start()
    print("Start")
end

function Quest77666:OnDestroy()
    print("OnDestroy")
end

function Quest77666:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77666:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77666:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7766601N1339Trigger")
    this:DestroyNpcTrigger("Q7766602N1341Trigger")
    this:DestroyNpcTrigger("Q7766604N1339Trigger")
    this:DestroyNpcTrigger("Q7766606N1341Trigger")
    this:DestroyNpcTrigger("Q7766608N1341Trigger")
    this:ActorDestroy("Q77666Trigger", 77666)
    this:ActorDestroy("Q77666Trigger_1", 77666)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1339.alias, 1162)
    this:SafeDestroyQuestNpc(npcs.Npc1341.alias, 20382)
    this:SafeDestroyQuestNpc(npcs.Npc3516.alias, 20382)
    this:SafeDestroyQuestNpc(npcs.Npc3517.alias, 20382)
    this:RecycleAllRes()
end

function Quest77666:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q77666Trigger", 77666)
    this:ActorDestroy("Q77666Trigger_1", 77666)
end

function Quest77666:ActorDestroy(arg1, arg2)
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

function Quest77666:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77666:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77666:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77666:OnSubStart7766601(arg1)
    print("OnSubStart7766601")
    this:AfterInterCall(function(arg1)
        actorMgr:DestroyNpcActorByAlias("Npc780877665")
        actorMgr:DestroyNpcActorByAlias("Npc1339_177665")
    end)

    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1339.id, 0, 7766601, 200, true)
    if this:GetQuestVar(7766601, 2) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7766601, function(arg1)
            this:SetQuestVarByMainId(2, 1)
        end)
    end
end

function Quest77666:OnSubFinish7766601(arg1)
    print("OnSubFinish7766601")
    this:PlayerEnterDungeonByData({entrySceneId = 1162, pointId = 3, dungeonId = 1350, questId = 7766601, questPointCfgId = 1}, datas.__EmbedClientConfig_6, nil, nil)
    this:SetNavigationByMainId(77666, true)
    this:ClearNarratorTask()
end

function Quest77666:OnSubStart7766609(arg1)
    print("OnSubStart7766609")
end

function Quest77666:OnSubFinish7766609(arg1)
    print("OnSubFinish7766609")
    this:ClearNarratorTask()
end

function Quest77666:OnSubStart7766602(arg1)
    print("OnSubStart7766602")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1341.id, 0, 7766602, 150, true)
end

function Quest77666:OnSubFinish7766602(arg1)
    print("OnSubFinish7766602")
    this:NpcDestroyImmediately(20382, npcs.Npc1341.alias)
end

function Quest77666:OnSubFailed7766602(arg1)
    print("OnSubFailed7766602")
    this:RecycleAllRes()
end

function Quest77666:OnSubStart7766605(arg1)
    print("OnSubStart7766605")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7766602, nil)
    end)
end

function Quest77666:OnSubFinish7766605(arg1)
    print("OnSubFinish7766605")
    this:ClearNarratorTask()
end

function Quest77666:OnSubFailed7766605(arg1)
    print("OnSubFailed7766605")
    this:RecycleAllRes()
end

function Quest77666:OnSubStart7766606(arg1)
    print("OnSubStart7766606")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7766606, 0, 100, 2, npcs.Npc1341.id)
end

function Quest77666:OnSubFinish7766606(arg1)
    print("OnSubFinish7766606")
    this:NpcDestroyImmediately(20382, npcs.Npc1341.alias)
end

function Quest77666:OnSubFailed7766606(arg1)
    print("OnSubFailed7766606")
    this:RecycleAllRes()
end

function Quest77666:OnSubStart7766607(arg1)
    print("OnSubStart7766607")
    this:CreateQuestNpc(arg1, npcs.Npc3516.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc3516.alias, 77666):DoFreeStyle(4180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc3517.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc3517.alias, 77666):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest77666:OnSubFinish7766607(arg1)
    print("OnSubFinish7766607")
end

function Quest77666:OnSubFailed7766607(arg1)
    print("OnSubFailed7766607")
    this:RecycleAllRes()
end

function Quest77666:OnSubStart7766608(arg1)
    print("OnSubStart7766608")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7766608, 0, 150, 2, npcs.Npc1341.id)
end

function Quest77666:OnSubFinish7766608(arg1)
    print("OnSubFinish7766608")
    this:NpcDestroyImmediately(20382, npcs.Npc1341.alias)
    this:NpcDestroyImmediately(20382, npcs.Npc3516.alias)
    this:NpcDestroyImmediately(20382, npcs.Npc3517.alias)
end

function Quest77666:OnSubFailed7766608(arg1)
    print("OnSubFailed7766608")
    this:RecycleAllRes()
end

function Quest77666:OnSubStart7766604(arg1)
    print("OnSubStart7766604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7766604, 0, 200, 2, npcs.Npc1339.id)
    actorMgr:CreateActorWithPos("Q77666Trigger_1", "Actor/Gadget/Q77666Trigger_1", 70900002, 0, points._Q77666Trigger_1Point_.pos, points._Q77666Trigger_1Point_.rot, true, false, 20382, nil, 0, 77666)
end

function Quest77666:OnSubFinish7766604(arg1)
    print("OnSubFinish7766604")
    this:NpcDestroyImmediately(1162, npcs.Npc1339.alias)
    this:ActionSafeCall(function(arg1_2)
        actorUtils.ShowContext("ReputationSnezhnayaPage", 0, "0;1;0;2;1")
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1341.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1338.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        actorMgr:CreateActorWithPos("Q77666Trigger", "Actor/Gadget/Q77666Trigger", 70900002, 0, points._Q77666TriggerPoint_.pos, points._Q77666TriggerPoint_.rot, true, false, 1162, nil, 0, 77666)
    end)
end

function Quest77666:OnSubStart7766603(arg1)
    print("OnSubStart7766603")
end

function Quest77666:OnSubFinish7766603(arg1)
    print("OnSubFinish7766603")
end

return Quest77666
