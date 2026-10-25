require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40247 = class("Quest40247", QuestActorProxy)
Quest40247.defaultAlias = "Quest40247"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40247:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40247:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4024701"] = self.OnSubStart4024701,
        ["4024702"] = self.OnSubStart4024702,
        ["4024703"] = self.OnSubStart4024703,
        ["4024704"] = self.OnSubStart4024704,
        ["4024705"] = self.OnSubStart4024705,
        ["4024706"] = self.OnSubStart4024706,
        ["4024707"] = self.OnSubStart4024707,
        ["4024708"] = self.OnSubStart4024708,
        ["4024709"] = self.OnSubStart4024709,
        ["4024710"] = self.OnSubStart4024710,
        ["4024711"] = self.OnSubStart4024711,
        ["4024714"] = self.OnSubStart4024714,
        ["4024712"] = self.OnSubStart4024712,
        ["4024713"] = self.OnSubStart4024713
    }
end

function Quest40247:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4024701"] = self.OnSubFinish4024701,
        ["4024702"] = self.OnSubFinish4024702,
        ["4024703"] = self.OnSubFinish4024703,
        ["4024704"] = self.OnSubFinish4024704,
        ["4024705"] = self.OnSubFinish4024705,
        ["4024706"] = self.OnSubFinish4024706,
        ["4024707"] = self.OnSubFinish4024707,
        ["4024708"] = self.OnSubFinish4024708,
        ["4024709"] = self.OnSubFinish4024709,
        ["4024710"] = self.OnSubFinish4024710,
        ["4024711"] = self.OnSubFinish4024711,
        ["4024714"] = self.OnSubFinish4024714,
        ["4024712"] = self.OnSubFinish4024712,
        ["4024713"] = self.OnSubFinish4024713
    }
end

function Quest40247:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40247:Start()
    print("Start")
end

function Quest40247:OnDestroy()
    print("OnDestroy")
end

function Quest40247:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40247:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40247:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4024703N1336Trigger")
    this:DestroyNpcTrigger("Q4024701N1073Trigger")
    this:DestroyNpcTrigger("Q4024704N1073Trigger")
    this:DestroyNpcTrigger("Q4024711N1080Trigger")
    this:DestroyNpcTrigger("Q4024712N1336Trigger")
    this:ActorDestroy("Q4024702Trigger", 40247)
    this:ActorDestroy("Q4024701Trigger", 40247)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 1161)
    this:CancelRangeStoryByQuest(134024701)
    this:RecycleAllRes()
end

function Quest40247:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4024702Trigger", 40247)
    this:ActorDestroy("Q4024701Trigger", 40247)
end

function Quest40247:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 402471401 then
        actorUtils.FinishQuestWithParam({false}, {4024714})
    end
end

function Quest40247:ActorDestroy(arg1, arg2)
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

function Quest40247:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40247:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40247:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40247:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40247:OnSubStart4024701(arg1)
    print("OnSubStart4024701")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1073.id, 0, 4024701, 40, true)
    actorMgr:CreateActorWithPos("Q4024701Trigger", "Actor/Gadget/Q4024701Trigger", 70900002, 0, points._Q4024701TriggerPoint_.pos, points._Q4024701TriggerPoint_.rot, true, false, 3, nil, 0, 40247)
end

function Quest40247:OnSubFinish4024701(arg1)
    print("OnSubFinish4024701")
    this:NpcDestroyImmediately(1085, npcs.Npc1073.alias)
    this:ActorDestroy("Q4024701Trigger", 40247)
end

function Quest40247:OnSubStart4024702(arg1)
    print("OnSubStart4024702")
    actorMgr:CreateActorWithPos("Q4024702Trigger", "Actor/Gadget/Q4024702Trigger", 70900002, 0, points._Q4024702TriggerPoint_.pos, points._Q4024702TriggerPoint_.rot, true, false, 3, nil, 0, 40247)
end

function Quest40247:OnSubFinish4024702(arg1)
    print("OnSubFinish4024702")
end

function Quest40247:OnSubStart4024703(arg1)
    print("OnSubStart4024703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024703, 0, 15, 0, npcs.Npc1336.id)
end

function Quest40247:OnSubFinish4024703(arg1)
    print("OnSubFinish4024703")
    this:NpcDestroyImmediately(3, npcs.Npc1336.alias)
end

function Quest40247:OnSubStart4024704(arg1)
    print("OnSubStart4024704")
    this:NpcCreateWithNpcTrigger(npcs.Npc1073.id, 0, 40, 4024704)
end

function Quest40247:OnSubFinish4024704(arg1)
    print("OnSubFinish4024704")
    this:NpcDestroyImmediately(1161, npcs.Npc1073.alias)
end

function Quest40247:OnSubStart4024705(arg1)
    print("OnSubStart4024705")
end

function Quest40247:OnSubFinish4024705(arg1)
    print("OnSubFinish4024705")
end

function Quest40247:OnSubStart4024706(arg1)
    print("OnSubStart4024706")
end

function Quest40247:OnSubFinish4024706(arg1)
    print("OnSubFinish4024706")
end

function Quest40247:OnSubStart4024707(arg1)
    print("OnSubStart4024707")
end

function Quest40247:OnSubFinish4024707(arg1)
    print("OnSubFinish4024707")
end

function Quest40247:OnSubStart4024708(arg1)
    print("OnSubStart4024708")
end

function Quest40247:OnSubFinish4024708(arg1)
    print("OnSubFinish4024708")
end

function Quest40247:OnSubStart4024709(arg1)
    print("OnSubStart4024709")
end

function Quest40247:OnSubFinish4024709(arg1)
    print("OnSubFinish4024709")
end

function Quest40247:OnSubStart4024710(arg1)
    print("OnSubStart4024710")
    this:DeployRangeStoryByQuest(134024701, 1161, {x = 109.21, y = 16.217, z = 66.072}, 80, 100)
end

function Quest40247:OnSubFinish4024710(arg1)
    print("OnSubFinish4024710")
    this:QuestNarratorTask(datas.NarratorWithId4024710, nil)
end

function Quest40247:OnSubStart4024711(arg1)
    print("OnSubStart4024711")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024711, 0, 5, 0, npcs.Npc1080.id)
    this:DeployRangeStoryByQuest(134024701, 1161, {x = 109.21, y = 16.217, z = 66.072}, 80, 100)
end

function Quest40247:OnSubFinish4024711(arg1)
    print("OnSubFinish4024711")
    this:NpcDestroyImmediately(1161, npcs.Npc1080.alias)
    this:CancelRangeStoryByQuest(134024701)
end

function Quest40247:OnSubStart4024714(arg1)
    print("OnSubStart4024714")
end

function Quest40247:OnSubFinish4024714(arg1)
    print("OnSubFinish4024714")
end

function Quest40247:OnSubStart4024712(arg1)
    print("OnSubStart4024712")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024712, 0, 40, 0, npcs.Npc1336.id)
end

function Quest40247:OnSubFinish4024712(arg1)
    print("OnSubFinish4024712")
    this:NpcDestroyImmediately(1161, npcs.Npc1336.alias)
end

function Quest40247:OnSubStart4024713(arg1)
    print("OnSubStart4024713")
end

function Quest40247:OnSubFinish4024713(arg1)
    print("OnSubFinish4024713")
end

return Quest40247
