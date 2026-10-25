require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16004 = class("Quest16004", QuestActorProxy)
Quest16004.defaultAlias = "Quest16004"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16004:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1600401"] = self.OnSubStart1600401,
        ["1600402"] = self.OnSubStart1600402,
        ["1600440"] = self.OnSubStart1600440,
        ["1600403"] = self.OnSubStart1600403,
        ["1600404"] = self.OnSubStart1600404,
        ["1600406"] = self.OnSubStart1600406,
        ["1600409"] = self.OnSubStart1600409,
        ["1600407"] = self.OnSubStart1600407,
        ["1600412"] = self.OnSubStart1600412,
        ["1600411"] = self.OnSubStart1600411,
        ["1600421"] = self.OnSubStart1600421,
        ["1600405"] = self.OnSubStart1600405,
        ["1600439"] = self.OnSubStart1600439,
        ["1600410"] = self.OnSubStart1600410,
        ["1600408"] = self.OnSubStart1600408,
        ["1600413"] = self.OnSubStart1600413,
        ["1600414"] = self.OnSubStart1600414,
        ["1600415"] = self.OnSubStart1600415,
        ["1600416"] = self.OnSubStart1600416,
        ["1600417"] = self.OnSubStart1600417,
        ["1600424"] = self.OnSubStart1600424,
        ["1600426"] = self.OnSubStart1600426,
        ["1600430"] = self.OnSubStart1600430,
        ["1600419"] = self.OnSubStart1600419,
        ["1600423"] = self.OnSubStart1600423,
        ["1600418"] = self.OnSubStart1600418,
        ["1600420"] = self.OnSubStart1600420,
        ["1600422"] = self.OnSubStart1600422,
        ["1600425"] = self.OnSubStart1600425,
        ["1600427"] = self.OnSubStart1600427,
        ["1600428"] = self.OnSubStart1600428,
        ["1600429"] = self.OnSubStart1600429,
        ["1600431"] = self.OnSubStart1600431,
        ["1600432"] = self.OnSubStart1600432,
        ["1600433"] = self.OnSubStart1600433,
        ["1600434"] = self.OnSubStart1600434,
        ["1600435"] = self.OnSubStart1600435,
        ["1600436"] = self.OnSubStart1600436,
        ["1600441"] = self.OnSubStart1600441,
        ["1600437"] = self.OnSubStart1600437,
        ["1600438"] = self.OnSubStart1600438
    }
end

function Quest16004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1600401"] = self.OnSubFinish1600401,
        ["1600402"] = self.OnSubFinish1600402,
        ["1600440"] = self.OnSubFinish1600440,
        ["1600403"] = self.OnSubFinish1600403,
        ["1600404"] = self.OnSubFinish1600404,
        ["1600406"] = self.OnSubFinish1600406,
        ["1600409"] = self.OnSubFinish1600409,
        ["1600407"] = self.OnSubFinish1600407,
        ["1600412"] = self.OnSubFinish1600412,
        ["1600411"] = self.OnSubFinish1600411,
        ["1600421"] = self.OnSubFinish1600421,
        ["1600405"] = self.OnSubFinish1600405,
        ["1600439"] = self.OnSubFinish1600439,
        ["1600410"] = self.OnSubFinish1600410,
        ["1600408"] = self.OnSubFinish1600408,
        ["1600413"] = self.OnSubFinish1600413,
        ["1600414"] = self.OnSubFinish1600414,
        ["1600415"] = self.OnSubFinish1600415,
        ["1600416"] = self.OnSubFinish1600416,
        ["1600417"] = self.OnSubFinish1600417,
        ["1600424"] = self.OnSubFinish1600424,
        ["1600426"] = self.OnSubFinish1600426,
        ["1600430"] = self.OnSubFinish1600430,
        ["1600419"] = self.OnSubFinish1600419,
        ["1600423"] = self.OnSubFinish1600423,
        ["1600418"] = self.OnSubFinish1600418,
        ["1600420"] = self.OnSubFinish1600420,
        ["1600422"] = self.OnSubFinish1600422,
        ["1600425"] = self.OnSubFinish1600425,
        ["1600427"] = self.OnSubFinish1600427,
        ["1600428"] = self.OnSubFinish1600428,
        ["1600429"] = self.OnSubFinish1600429,
        ["1600431"] = self.OnSubFinish1600431,
        ["1600432"] = self.OnSubFinish1600432,
        ["1600433"] = self.OnSubFinish1600433,
        ["1600434"] = self.OnSubFinish1600434,
        ["1600435"] = self.OnSubFinish1600435,
        ["1600436"] = self.OnSubFinish1600436,
        ["1600441"] = self.OnSubFinish1600441,
        ["1600437"] = self.OnSubFinish1600437,
        ["1600438"] = self.OnSubFinish1600438
    }
end

function Quest16004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1600406"] = self.OnSubFailed1600406,
        ["1600409"] = self.OnSubFailed1600409,
        ["1600407"] = self.OnSubFailed1600407,
        ["1600411"] = self.OnSubFailed1600411,
        ["1600419"] = self.OnSubFailed1600419,
        ["1600423"] = self.OnSubFailed1600423,
        ["1600418"] = self.OnSubFailed1600418,
        ["1600431"] = self.OnSubFailed1600431
    }
end

function Quest16004:Start()
    print("Start")
end

function Quest16004:OnDestroy()
    print("OnDestroy")
end

function Quest16004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16004:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1600417Trigger")
    this:ActorDestroy("Q1600440Trigger")
    this:ActorDestroy("Q1600415Trigger")
    this:ActorDestroy("Q1600414Trigger")
    this:ActorDestroy("Q1600414Trigger_1")
    this:ActorDestroy("Q1600414Trigger_2")
    this:ActorDestroy("Q1600425Trigger")
    this:ActorDestroy("Q1600425Trigger_1")
    this:ActorDestroy("Q1600425Trigger_2")
    this:ActorDestroy("Q1600410Trigger")
    this:ActorDestroy("Q1600408Trigger")
    this:ActorDestroy("Q1600422Trigger")
    this:ActorDestroy("Q1600420Trigger")
    this:ActorDestroy("Q1600433Trigger")
    this:ActorDestroy("Q1600432Trigger")
    this:ActorDestroy("Q1600434Trigger")
    this:ActorDestroy("Q1600437Trigger")
    this:ActorDestroy("Q1600438Trigger")
    this:ActorDestroy("Q1600405Trigger")
    this:ActorDestroy("Q1600418Trigger")
    this:ActorDestroy("Q1600439Trigger")
end

function Quest16004:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1600441)
    end
end

function Quest16004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest16004:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest16004:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest16004:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16004:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16004:OnSubStart1600401(arg1)
    print("OnSubStart1600401")
    actorUtils.FinishQuestID(false, 1600401)
end

function Quest16004:OnSubFinish1600401(arg1)
    print("OnSubFinish1600401")
    this:QuestNarratorTask(datas.NarratorWithId_1600401, nil)
    this:SetNavigationByMainId(16004, true)
end

function Quest16004:OnSubStart1600402(arg1)
    print("OnSubStart1600402")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1320.id, 0, 1600402, 10, true)
end

function Quest16004:OnSubFinish1600402(arg1)
    print("OnSubFinish1600402")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:ClearNarratorTask()
end

function Quest16004:OnSubStart1600440(arg1)
    print("OnSubStart1600440")
    actorMgr:CreateActorWithPos("Q1600440Trigger", "Actor/Gadget/Q1600440Trigger", 70900002, 0, points._Q1600440TriggerPoint_.pos, points._Q1600440TriggerPoint_.rot, true, false, 3)
end

function Quest16004:OnSubFinish1600440(arg1)
    print("OnSubFinish1600440")
    this:ActorDestroy("Q1600440Trigger")
end

function Quest16004:OnSubStart1600403(arg1)
    print("OnSubStart1600403")
    this:NpcCreateWithNoBlack(npcs.Npc15899.id, 0, 20, 1600403, true, 1600403)
    this:DeployStoryByQuest(121600403)
end

function Quest16004:OnSubFinish1600403(arg1)
    print("OnSubFinish1600403")
end

function Quest16004:OnSubStart1600404(arg1)
    print("OnSubStart1600404")
    this:CreateQuestNpc(arg1, npcs.Npc15899.id, 0, false, 0)
    actorUtils.FinishQuestID(false, 1600404)
    this:DeployStoryByQuest(121600403)
    actorUtils.ShowContext("MagicInkBar", 0)
    this:CancelRangeStoryByQuest(121600402)
end

function Quest16004:OnSubFinish1600404(arg1)
    print("OnSubFinish1600404")
end

function Quest16004:OnSubStart1600406(arg1)
    print("OnSubStart1600406")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600406, 0, 5, 1, npcs.Npc15975.id)
end

function Quest16004:OnSubFinish1600406(arg1)
    print("OnSubFinish1600406")
    this:SafeDestroyQuestNpc(npcs.Npc15975.alias, 20297)
end

function Quest16004:OnSubFailed1600406(arg1)
    print("OnSubFailed1600406")
    this:SafeDestroyQuestNpc(npcs.Npc15975.alias, 20297)
    this:ClearNpcTriggerByQuestId(1600406)
end

function Quest16004:OnSubStart1600409(arg1)
    print("OnSubStart1600409")
    this:DeployRangeStoryByQuest(121600401, 20297, {x = 2950.134, y = 73.057, z = 623.484}, 80, 100)
end

function Quest16004:OnSubFinish1600409(arg1)
    print("OnSubFinish1600409")
end

function Quest16004:OnSubFailed1600409(arg1)
    print("OnSubFailed1600409")
    this:CancelRangeStoryByQuest(121600401)
end

function Quest16004:OnSubStart1600407(arg1)
    print("OnSubStart1600407")
    this:CreateQuestNpc(arg1, npcs.Npc15976.id, 0, false, 0)
end

function Quest16004:OnSubFinish1600407(arg1)
    print("OnSubFinish1600407")
    this:SafeDestroyQuestNpc(npcs.Npc15976.alias, 20297)
end

function Quest16004:OnSubFailed1600407(arg1)
    print("OnSubFailed1600407")
    this:SafeDestroyQuestNpc(npcs.Npc15976.alias, 20297)
end

function Quest16004:OnSubStart1600412(arg1)
    print("OnSubStart1600412")
end

function Quest16004:OnSubFinish1600412(arg1)
    print("OnSubFinish1600412")
end

function Quest16004:OnSubStart1600411(arg1)
    print("OnSubStart1600411")
    this:CreateQuestNpc(arg1, npcs.Npc15885.id, 0, false, 0)
end

function Quest16004:OnSubFinish1600411(arg1)
    print("OnSubFinish1600411")
    this:SafeDestroyQuestNpc(npcs.Npc15885.alias, 20297)
end

function Quest16004:OnSubFailed1600411(arg1)
    print("OnSubFailed1600411")
    this:SafeDestroyQuestNpc(npcs.Npc15885.alias, 20297)
end

function Quest16004:OnSubStart1600421(arg1)
    print("OnSubStart1600421")
end

function Quest16004:OnSubFinish1600421(arg1)
    print("OnSubFinish1600421")
end

function Quest16004:OnSubStart1600405(arg1)
    print("OnSubStart1600405")
    this:DeployStoryByQuest(121600403)
    this:DeployRangeStoryByQuest(121600402, 20297, {x = 2911.128, y = 69.759, z = 625.789}, 80, 100)
    actorMgr:CreateActorWithPos("Q1600405Trigger", "Actor/Gadget/Q1600405Trigger", 70900002, 0, points._Q1600405TriggerPoint_.pos, points._Q1600405TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600405(arg1)
    print("OnSubFinish1600405")
    this:ActorDestroy("Q1600405Trigger")
    actorUtils.ShowContext("MagicInkBar", 0)
end

function Quest16004:OnSubStart1600439(arg1)
    print("OnSubStart1600439")
    actorMgr:CreateActorWithPos("Q1600439Trigger", "Actor/Gadget/Q1600439Trigger", 70900002, 0, points._Q1600439TriggerPoint_.pos, points._Q1600439TriggerPoint_.rot, true, false, 20297)
    this:DeployRangeStoryByQuest(121600402, 20297, {x = 2911.128, y = 69.759, z = 625.789}, 80, 100)
    this:DeployStoryByQuest(121600403)
    if sceneData.currSceneID == 20297 then
        if this:GetQuestVar(1600439, 3) == 0 then
            this:QuestNarratorTask(datas.NarratorWithId_1600439, nil)
            this:SetQuestVarByMainId(3, 1)
        end
    end
end

function Quest16004:OnSubFinish1600439(arg1)
    print("OnSubFinish1600439")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1600439Trigger")
    actorUtils.ShowContext("MagicInkBar", 0)
end

function Quest16004:OnSubStart1600410(arg1)
    print("OnSubStart1600410")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600410, true, 1600410)
    actorMgr:CreateActorWithPos("Q1600410Trigger", "Actor/Gadget/Q1600410Trigger", 70900002, 0, points._Q1600410TriggerPoint_.pos, points._Q1600410TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600410(arg1)
    print("OnSubFinish1600410")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
    this:ActorDestroy("Q1600410Trigger")
    this:CancelRangeStoryByQuest(121600401)
end

function Quest16004:OnSubStart1600408(arg1)
    print("OnSubStart1600408")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600408, true, 1600408)
    actorMgr:CreateActorWithPos("Q1600408Trigger", "Actor/Gadget/Q1600408Trigger", 70900002, 0, points._Q1600408TriggerPoint_.pos, points._Q1600408TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600408(arg1)
    print("OnSubFinish1600408")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
    this:ActorDestroy("Q1600408Trigger")
    this:CancelRangeStoryByQuest(121600402)
end

function Quest16004:OnSubStart1600413(arg1)
    print("OnSubStart1600413")
    this:NpcCreateWithNpcTrigger(npcs.Npc15899.id, 0, 15, 1600413)
    this:DeployStoryByQuest(121600403)
end

function Quest16004:OnSubFinish1600413(arg1)
    print("OnSubFinish1600413")
    this:CancelRangeStoryByQuest(121600402)
end

function Quest16004:OnSubStart1600414(arg1)
    print("OnSubStart1600414")
    actorMgr:CreateActorWithPos("Q1600414Trigger", "Actor/Gadget/Q1600414Trigger", 70900002, 0, points._Q1600414TriggerPoint_.pos, points._Q1600414TriggerPoint_.rot, true, false, 20297)
    actorMgr:CreateActorWithPos("Q1600414Trigger_1", "Actor/Gadget/Q1600414Trigger_1", 70900002, 0, points._Q1600414Trigger_1Point_.pos, points._Q1600414Trigger_1Point_.rot, true, false, 20297)
    actorMgr:CreateActorWithPos("Q1600414Trigger_2", "Actor/Gadget/Q1600414Trigger_2", 70900002, 0, points._Q1600414Trigger_2Point_.pos, points._Q1600414Trigger_2Point_.rot, true, false, 20297)
    this:DeployStoryByQuest(121600403)
end

function Quest16004:OnSubFinish1600414(arg1)
    print("OnSubFinish1600414")
    this:ActorDestroy("Q1600414Trigger")
    this:ActorDestroy("Q1600414Trigger_1")
    this:ActorDestroy("Q1600414Trigger_2")
end

function Quest16004:OnSubStart1600415(arg1)
    print("OnSubStart1600415")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q1600415Trigger", "Actor/Gadget/Q1600415Trigger", 70900002, 0, points._Q1600415TriggerPoint_.pos, points._Q1600415TriggerPoint_.rot, true, false, 20297)
        this:DeployStoryByQuest(121600403)
    end)
end

function Quest16004:OnSubFinish1600415(arg1)
    print("OnSubFinish1600415")
    this:ActorDestroy("Q1600415Trigger")
    this:CancelRangeStoryByQuest(121600402)
    actorUtils.ShowContext("MagicInkBar", 0)
end

function Quest16004:OnSubStart1600416(arg1)
    print("OnSubStart1600416")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600416, 0, 30, 1, npcs.Npc15899.id)
    this:DeployStoryByQuest(121600403)
end

function Quest16004:OnSubFinish1600416(arg1)
    print("OnSubFinish1600416")
    this:SafeDestroyQuestNpc(npcs.Npc15899.alias, 20297)
    this:CancelStoryByQuest(121600403)
end

function Quest16004:OnSubStart1600417(arg1)
    print("OnSubStart1600417")
    actorMgr:CreateActorWithPos("Q1600417Trigger", "Actor/Gadget/Q1600417Trigger", 70900002, 0, points._Q1600417TriggerPoint_.pos, points._Q1600417TriggerPoint_.rot, true, false, 20297)
    actorUtils.ShowContext("MagicInkBar", 0)
end

function Quest16004:OnSubFinish1600417(arg1)
    print("OnSubFinish1600417")
end

function Quest16004:OnSubStart1600424(arg1)
    print("OnSubStart1600424")
end

function Quest16004:OnSubFinish1600424(arg1)
    print("OnSubFinish1600424")
end

function Quest16004:OnSubStart1600426(arg1)
    print("OnSubStart1600426")
end

function Quest16004:OnSubFinish1600426(arg1)
    print("OnSubFinish1600426")
end

function Quest16004:OnSubStart1600430(arg1)
    print("OnSubStart1600430")
end

function Quest16004:OnSubFinish1600430(arg1)
    print("OnSubFinish1600430")
end

function Quest16004:OnSubStart1600419(arg1)
    print("OnSubStart1600419")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600419, 0, 5, 1, npcs.Npc15975.id)
    this:DeployRangeStoryByQuest(121600401, 20297, {x = 2950.134, y = 73.057, z = 623.484}, 80, 100)
    this:SetQuestVarByMainId(4, 0)
    this:SetQuestVarByMainId(5, 0)
end

function Quest16004:OnSubFinish1600419(arg1)
    print("OnSubFinish1600419")
    this:SafeDestroyQuestNpc(npcs.Npc15975.alias, 20297)
end

function Quest16004:OnSubFailed1600419(arg1)
    print("OnSubFailed1600419")
    this:SafeDestroyQuestNpc(npcs.Npc15975.alias, 20297)
    this:ClearNpcTriggerByQuestId(1600419)
    this:CancelRangeStoryByQuest(121600401)
end

function Quest16004:OnSubStart1600423(arg1)
    print("OnSubStart1600423")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600423, 0, 5, 1, npcs.Npc1320.id)
end

function Quest16004:OnSubFinish1600423(arg1)
    print("OnSubFinish1600423")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
end

function Quest16004:OnSubFailed1600423(arg1)
    print("OnSubFailed1600423")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
    this:ClearNpcTriggerByQuestId(1600423)
end

function Quest16004:OnSubStart1600418(arg1)
    print("OnSubStart1600418")
    this:DeployRangeStoryByQuest(121600405, 20297, {x = 2910.575, y = 69.13, z = 623.069}, 80, 90)
    actorMgr:CreateActorWithPos("Q1600418Trigger", "Actor/Gadget/Q1600418Trigger", 70900002, 0, points._Q1600418TriggerPoint_.pos, points._Q1600418TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600418(arg1)
    print("OnSubFinish1600418")
    this:ActorDestroy("Q1600418Trigger")
    this:CancelRangeStoryByQuest(121600405)
end

function Quest16004:OnSubFailed1600418(arg1)
    print("OnSubFailed1600418")
    this:ActorDestroy("Q1600418Trigger")
    this:CancelRangeStoryByQuest(121600405)
end

function Quest16004:OnSubStart1600420(arg1)
    print("OnSubStart1600420")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600420, true, 1600420)
    actorMgr:CreateActorWithPos("Q1600420Trigger", "Actor/Gadget/Q1600420Trigger", 70900002, 0, points._Q1600420TriggerPoint_.pos, points._Q1600420TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600420(arg1)
    print("OnSubFinish1600420")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
    this:ActorDestroy("Q1600420Trigger")
    this:CancelRangeStoryByQuest(121600401)
end

function Quest16004:OnSubStart1600422(arg1)
    print("OnSubStart1600422")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 20, 1600422, true, 1600422)
    actorMgr:CreateActorWithPos("Q1600422Trigger", "Actor/Gadget/Q1600422Trigger", 70900002, 0, points._Q1600422TriggerPoint_.pos, points._Q1600422TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600422(arg1)
    print("OnSubFinish1600422")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
    this:ActorDestroy("Q1600422Trigger")
end

function Quest16004:OnSubStart1600425(arg1)
    print("OnSubStart1600425")
    actorMgr:CreateActorWithPos("Q1600425Trigger", "Actor/Gadget/Q1600425Trigger", 70900002, 0, points._Q1600425TriggerPoint_.pos, points._Q1600425TriggerPoint_.rot, true, false, 20297)
    actorMgr:CreateActorWithPos("Q1600425Trigger_1", "Actor/Gadget/Q1600425Trigger_1", 70900002, 0, points._Q1600425Trigger_1Point_.pos, points._Q1600425Trigger_1Point_.rot, true, false, 20297)
    actorMgr:CreateActorWithPos("Q1600425Trigger_2", "Actor/Gadget/Q1600425Trigger_2", 70900002, 0, points._Q1600425Trigger_2Point_.pos, points._Q1600425Trigger_2Point_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600425(arg1)
    print("OnSubFinish1600425")
    this:ActorDestroy("Q1600425Trigger")
    this:ActorDestroy("Q1600425Trigger_1")
    this:ActorDestroy("Q1600425Trigger_2")
end

function Quest16004:OnSubStart1600427(arg1)
    print("OnSubStart1600427")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1320.id, 0, 1600427, 30, true)
end

function Quest16004:OnSubFinish1600427(arg1)
    print("OnSubFinish1600427")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
end

function Quest16004:OnSubStart1600428(arg1)
    print("OnSubStart1600428")
    this:DeployRangeStoryByQuest(121600404, 20297, {x = 2910.532, y = 69.228, z = 644.3}, 80, 100)
end

function Quest16004:OnSubFinish1600428(arg1)
    print("OnSubFinish1600428")
    this:CancelRangeStoryByQuest(121600404)
end

function Quest16004:OnSubStart1600429(arg1)
    print("OnSubStart1600429")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600429, 0, 60, 1, npcs.Npc1320.id)
    this:DeployRangeStoryByQuest(121600400, 20297, {x = 2910.691, y = 27.538, z = 652.878}, 400, 420)
end

function Quest16004:OnSubFinish1600429(arg1)
    print("OnSubFinish1600429")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
end

function Quest16004:OnSubStart1600431(arg1)
    print("OnSubStart1600431")
    this:DeployRangeStoryByQuest(121600400, 20297, {x = 2910.691, y = 27.538, z = 652.878}, 400, 420)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(nil)
        if sceneData.currSceneID == 20297 then
            if this:GetQuestVar(1600431, 0) == 2 then
                this:TransmitPlayerByData(arg1, 2, datas.TransmitData_1600431, nil, nil, nil)
            end
        end
    end)
end

function Quest16004:OnSubFinish1600431(arg1)
    print("OnSubFinish1600431")
end

function Quest16004:OnSubFailed1600431(arg1)
    print("OnSubFailed1600431")
    this:CancelRangeStoryByQuest(121600400)
end

function Quest16004:OnSubStart1600432(arg1)
    print("OnSubStart1600432")
    this:NpcCreateWithNoBlack(npcs.Npc15878.id, 0, 20, 1600432, true, 1600432)
    actorMgr:CreateActorWithPos("Q1600432Trigger", "Actor/Gadget/Q1600432Trigger", 70900002, 0, points._Q1600432TriggerPoint_.pos, points._Q1600432TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600432(arg1)
    print("OnSubFinish1600432")
    this:SafeDestroyQuestNpc(npcs.Npc15878.alias, 20297)
    this:ActorDestroy("Q1600432Trigger")
    this:CancelRangeStoryByQuest(121600400)
end

function Quest16004:OnSubStart1600433(arg1)
    print("OnSubStart1600433")
    this:NpcCreateWithNoBlack(npcs.Npc15878.id, 0, 20, 1600433, true, 1600433)
    actorMgr:CreateActorWithPos("Q1600433Trigger", "Actor/Gadget/Q1600433Trigger", 70900002, 0, points._Q1600433TriggerPoint_.pos, points._Q1600433TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600433(arg1)
    print("OnSubFinish1600433")
    this:SafeDestroyQuestNpc(npcs.Npc15878.alias, 20297)
    this:ActorDestroy("Q1600433Trigger")
end

function Quest16004:OnSubStart1600434(arg1)
    print("OnSubStart1600434")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 30, 1600434, true, 1600434)
    actorMgr:CreateActorWithPos("Q1600434Trigger", "Actor/Gadget/Q1600434Trigger", 70900002, 0, points._Q1600434TriggerPoint_.pos, points._Q1600434TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600434(arg1)
    print("OnSubFinish1600434")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
    this:ActorDestroy("Q1600434Trigger")
end

function Quest16004:OnSubStart1600435(arg1)
    print("OnSubStart1600435")
end

function Quest16004:OnSubFinish1600435(arg1)
    print("OnSubFinish1600435")
end

function Quest16004:OnSubStart1600436(arg1)
    print("OnSubStart1600436")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600436, 0, 50, 1, npcs.Npc2624.id)
end

function Quest16004:OnSubFinish1600436(arg1)
    print("OnSubFinish1600436")
    this:SafeDestroyQuestNpc(npcs.Npc2624.alias, 20297)
end

function Quest16004:OnSubStart1600441(arg1)
    print("OnSubStart1600441")
end

function Quest16004:OnSubFinish1600441(arg1)
    print("OnSubFinish1600441")
end

function Quest16004:OnSubStart1600437(arg1)
    print("OnSubStart1600437")
    this:NpcCreateWithNoBlack(npcs.Npc2624.id, 0, 10, 1600437, true, 1600437)
    actorMgr:CreateActorWithPos("Q1600437Trigger", "Actor/Gadget/Q1600437Trigger", 70900002, 0, points._Q1600437TriggerPoint_.pos, points._Q1600437TriggerPoint_.rot, true, false, 20297)
end

function Quest16004:OnSubFinish1600437(arg1)
    print("OnSubFinish1600437")
    this:SafeDestroyQuestNpc(npcs.Npc2624.alias, 3)
    this:ActorDestroy("Q1600437Trigger")
end

function Quest16004:OnSubStart1600438(arg1)
    print("OnSubStart1600438")
    this:NpcCreateWithNpcTrigger(npcs.Npc1321.id, 0, 10, 1600438)
    this:GetQuestNpcActor(npcs.Npc1321.alias, 16004):SitOnChair(0, true)
end

function Quest16004:OnSubFinish1600438(arg1)
    print("OnSubFinish1600438")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1321.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_1600438)
    this:CreateQuestOrphanNpc(arg1, npcs.Wendy.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_1600438)
    actorUtils.ShowContext("ChapterCompleteDialog", 2068)
    this:GetQuestNpcActor(npcs.Wendy.alias, 16004):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q1600438Trigger", "Actor/Gadget/Q1600438Trigger", 70900002, 0, points._Q1600438TriggerPoint_.pos, points._Q1600438TriggerPoint_.rot, true, false, 3)
end

return Quest16004
