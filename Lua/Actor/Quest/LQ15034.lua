require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15034 = class("Quest15034", QuestActorProxy)
Quest15034.defaultAlias = "Quest15034"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15034:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503410"] = self.OnSubStart1503410,
        ["1503414"] = self.OnSubStart1503414,
        ["1503411"] = self.OnSubStart1503411,
        ["1503401"] = self.OnSubStart1503401,
        ["1503402"] = self.OnSubStart1503402,
        ["1503412"] = self.OnSubStart1503412,
        ["1503403"] = self.OnSubStart1503403,
        ["1503404"] = self.OnSubStart1503404,
        ["1503413"] = self.OnSubStart1503413,
        ["1503405"] = self.OnSubStart1503405,
        ["1503406"] = self.OnSubStart1503406,
        ["1503407"] = self.OnSubStart1503407,
        ["1503408"] = self.OnSubStart1503408,
        ["1503409"] = self.OnSubStart1503409
    }
end

function Quest15034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503410"] = self.OnSubFinish1503410,
        ["1503414"] = self.OnSubFinish1503414,
        ["1503411"] = self.OnSubFinish1503411,
        ["1503401"] = self.OnSubFinish1503401,
        ["1503402"] = self.OnSubFinish1503402,
        ["1503412"] = self.OnSubFinish1503412,
        ["1503403"] = self.OnSubFinish1503403,
        ["1503404"] = self.OnSubFinish1503404,
        ["1503413"] = self.OnSubFinish1503413,
        ["1503405"] = self.OnSubFinish1503405,
        ["1503406"] = self.OnSubFinish1503406,
        ["1503407"] = self.OnSubFinish1503407,
        ["1503408"] = self.OnSubFinish1503408,
        ["1503409"] = self.OnSubFinish1503409
    }
end

function Quest15034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1503403"] = self.OnSubFailed1503403}
end

function Quest15034:Start()
    print("Start")
end

function Quest15034:OnDestroy()
    print("OnDestroy")
end

function Quest15034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15034:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1503410Trigger")
    this:ActorDestroy("Q1503412Trigger")
    this:ActorDestroy("Q1503404Trigger")
    this:ActorDestroy("Q1503406Trigger")
    this:ActorDestroy("Q1503413Trigger")
end

function Quest15034:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15034:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest15034:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15034:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15034:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest15034:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest15034:OnSubStart1503410(arg1)
    print("OnSubStart1503410")
    this:ActionSafeCall(function(arg1)
        if this:GetQuestVar(1503410, 0) == 0 then
            this:SetQuestVarByMainId(0, 1)
            this:QuestNarratorTask(datas.NarratorWithId_1503401, function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId_1503403, function(arg1)
                    this:QuestNarratorTask(datas.NarratorWithId_1503404, function(arg1)
                        actorUtils.FinishQuestID(false, 1503410)
                    end)
                end)
            end)
        else
            if this:GetQuestVar(1503410, 0) == 1 then
                this:ClearNarratorTask()
                actorUtils.FinishQuestID(false, 1503410)
            end
        end
    end)
end

function Quest15034:OnSubFinish1503410(arg1)
    print("OnSubFinish1503410")
end

function Quest15034:OnSubStart1503414(arg1)
    print("OnSubStart1503414")
    this:LevelReadySafeCall(function(arg1)
        this:DeployStoryByQuest(121503400)
    end)
end

function Quest15034:OnSubFinish1503414(arg1)
    print("OnSubFinish1503414")
end

function Quest15034:OnSubStart1503411(arg1)
    print("OnSubStart1503411")
end

function Quest15034:OnSubFinish1503411(arg1)
    print("OnSubFinish1503411")
    this:LevelReadySafeCall(function(arg1)
        this:CancelStoryByQuest(121503400)
        this:ClearNarratorTask()
    end)
end

function Quest15034:OnSubStart1503401(arg1)
    print("OnSubStart1503401")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1068.id, 0, 1503401, 30, true)
end

function Quest15034:OnSubFinish1503401(arg1)
    print("OnSubFinish1503401")
    this:NpcDestroyImmediately(1082, npcs.Npc1068.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterBeginDialog", 2075)
    end)
end

function Quest15034:OnSubStart1503402(arg1)
    print("OnSubStart1503402")
    this:CreateQuestNpc(arg1, npcs.Npc15305.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15286.id, 0, false, 0)
end

function Quest15034:OnSubFinish1503402(arg1)
    print("OnSubFinish1503402")
end

function Quest15034:OnSubStart1503412(arg1)
    print("OnSubStart1503412")
    actorMgr:CreateActorWithPos("Q1503412Trigger", "Actor/Gadget/Q1503412Trigger", 70900002, 0, points._Q1503412TriggerPoint_.pos, points._Q1503412TriggerPoint_.rot, true, false, 1082)
end

function Quest15034:OnSubFinish1503412(arg1)
    print("OnSubFinish1503412")
    this:ActorDestroy("Q1503412Trigger")
end

function Quest15034:OnSubStart1503403(arg1)
    print("OnSubStart1503403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15306.id, 0, 1503403, 49, true)
end

function Quest15034:OnSubFinish1503403(arg1)
    print("OnSubFinish1503403")
    this:NpcDestroyImmediately(20272, npcs.Npc15306.alias)
    this:NpcDestroyImmediately(1082, npcs.Npc15286.alias)
end

function Quest15034:OnSubFailed1503403(arg1)
    print("OnSubFailed1503403")
    this:DestroyQuestNpcActor(npcs.Npc15306.alias, 20272)
    this:DestroyNpcTrigger("Q1503403N15306Trigger")
end

function Quest15034:OnSubStart1503404(arg1)
    print("OnSubStart1503404")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15305.id, 0, 1503404, 30, true)
    actorMgr:CreateActorWithPos("Q1503404Trigger", "Actor/Gadget/Q1503404Trigger", 70900002, 0, points._Q1503404TriggerPoint_.pos, points._Q1503404TriggerPoint_.rot, true, false, 20272)
end

function Quest15034:OnSubFinish1503404(arg1)
    print("OnSubFinish1503404")
    this:NpcDestroyImmediately(1082, npcs.Npc15305.alias)
    this:ActorDestroy("Q1503404Trigger")
end

function Quest15034:OnSubStart1503413(arg1)
    print("OnSubStart1503413")
    actorMgr:CreateActorWithPos("Q1503413Trigger", "Actor/Gadget/Q1503413Trigger", 70900002, 0, points._Q1503413TriggerPoint_.pos, points._Q1503413TriggerPoint_.rot, true, false, 1082)
end

function Quest15034:OnSubFinish1503413(arg1)
    print("OnSubFinish1503413")
    this:ActorDestroy("Q1503413Trigger")
end

function Quest15034:OnSubStart1503405(arg1)
    print("OnSubStart1503405")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1311.id, 0, 1503405, 30, true)
end

function Quest15034:OnSubFinish1503405(arg1)
    print("OnSubFinish1503405")
    this:NpcDestroyImmediately(20275, npcs.Npc1311.alias)
end

function Quest15034:OnSubStart1503406(arg1)
    print("OnSubStart1503406")
    this:CreateQuestNpc(arg1, npcs.Npc1068.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 15034):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503406, 0, 40, 1, npcs.Npc15306.id)
    this:CreateQuestNpc(arg1, npcs.Npc15430.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15431.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15432.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15433.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15434.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1503406Trigger", "Actor/Gadget/Q1503406Trigger", 70900002, 0, points._Q1503406TriggerPoint_.pos, points._Q1503406TriggerPoint_.rot, true, false, 20275)
end

function Quest15034:OnSubFinish1503406(arg1)
    print("OnSubFinish1503406")
    this:NpcDestroyImmediately(3, npcs.Npc15306.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15430.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15431.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc15432.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15433.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15434.alias)
    this:ActorDestroy("Q1503406Trigger")
end

function Quest15034:OnSubStart1503407(arg1)
    print("OnSubStart1503407")
    this:GetQuestNpcActor(npcs.Npc1068.alias, 15034):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15034:OnSubFinish1503407(arg1)
    print("OnSubFinish1503407")
end

function Quest15034:OnSubStart1503408(arg1)
    print("OnSubStart1503408")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1503408, 0, 30, 1, npcs.Npc1311.id)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 15034):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15034:OnSubFinish1503408(arg1)
    print("OnSubFinish1503408")
    this:NpcDestroyImmediately(3, npcs.Npc1311.alias)
end

function Quest15034:OnSubStart1503409(arg1)
    print("OnSubStart1503409")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1311.id, 0, 1503409, 49, true)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 15034):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15034:OnSubFinish1503409(arg1)
    print("OnSubFinish1503409")
    this:NpcDestroyImmediately(20272, npcs.Npc1311.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1068.alias)
end

return Quest15034
