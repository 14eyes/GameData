require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16001 = class("Quest16001", QuestActorProxy)
Quest16001.defaultAlias = "Quest16001"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16001:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1600101"] = self.OnSubStart1600101,
        ["1600102"] = self.OnSubStart1600102,
        ["1600103"] = self.OnSubStart1600103,
        ["1600104"] = self.OnSubStart1600104,
        ["1600110"] = self.OnSubStart1600110,
        ["1600105"] = self.OnSubStart1600105,
        ["1600111"] = self.OnSubStart1600111,
        ["1600106"] = self.OnSubStart1600106,
        ["1600107"] = self.OnSubStart1600107,
        ["1600108"] = self.OnSubStart1600108,
        ["1600112"] = self.OnSubStart1600112,
        ["1600109"] = self.OnSubStart1600109
    }
end

function Quest16001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1600101"] = self.OnSubFinish1600101,
        ["1600102"] = self.OnSubFinish1600102,
        ["1600103"] = self.OnSubFinish1600103,
        ["1600104"] = self.OnSubFinish1600104,
        ["1600110"] = self.OnSubFinish1600110,
        ["1600105"] = self.OnSubFinish1600105,
        ["1600111"] = self.OnSubFinish1600111,
        ["1600106"] = self.OnSubFinish1600106,
        ["1600107"] = self.OnSubFinish1600107,
        ["1600108"] = self.OnSubFinish1600108,
        ["1600112"] = self.OnSubFinish1600112,
        ["1600109"] = self.OnSubFinish1600109
    }
end

function Quest16001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1600105"] = self.OnSubFailed1600105,
        ["1600106"] = self.OnSubFailed1600106,
        ["1600107"] = self.OnSubFailed1600107,
        ["1600108"] = self.OnSubFailed1600108
    }
end

function Quest16001:Start()
    print("Start")
end

function Quest16001:OnDestroy()
    print("OnDestroy")
end

function Quest16001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16001:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1600110Trigger")
    this:ActorDestroy("Q1600109Trigger")
end

function Quest16001:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest16001:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16001:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16001:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16001:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest16001:OnSubStart1600101(arg1)
    print("OnSubStart1600101")
    actorUtils.FinishQuestID(false, 1600101)
end

function Quest16001:OnSubFinish1600101(arg1)
    print("OnSubFinish1600101")
    this:QuestNarratorTask(datas.NarratorWithId_1600101, nil)
    this:SetNavigationByMainId(16001, true)
end

function Quest16001:OnSubStart1600102(arg1)
    print("OnSubStart1600102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1320.id, 0, 10, 1600102)
end

function Quest16001:OnSubFinish1600102(arg1)
    print("OnSubFinish1600102")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:ClearNarratorTask()
end

function Quest16001:OnSubStart1600103(arg1)
    print("OnSubStart1600103")
    this:NpcCreateWithNpcTrigger(npcs.Wendy.id, 0, 15, 1600103)
    this:GetQuestNpcActor(npcs.Wendy.alias, 16001):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:DeployRangeStoryByQuest(121600102, 3, {x = 2300.407, y = 229.99, z = -813.688}, 100, 120)
end

function Quest16001:OnSubFinish1600103(arg1)
    print("OnSubFinish1600103")
    this:CancelRangeStoryByQuest(121600102)
end

function Quest16001:OnSubStart1600104(arg1)
    print("OnSubStart1600104")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600104, 0, 15, 1, npcs.Npc1320.id)
    this:CreateQuestNpc(arg1, npcs.Wendy.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Wendy.alias, 16001):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Wendy.alias, 16001):DisableInteeHeadCtrl(true)
end

function Quest16001:OnSubFinish1600104(arg1)
    print("OnSubFinish1600104")
    this:NpcDestroyImmediately(3, npcs.Npc1320.alias)
    this:NpcDestroyImmediately(3, npcs.Wendy.alias)
end

function Quest16001:OnSubStart1600110(arg1)
    print("OnSubStart1600110")
    actorMgr:CreateActorWithPos("Q1600110Trigger", "Actor/Gadget/Q1600110Trigger", 70900002, 0, points._Q1600110TriggerPoint_.pos, points._Q1600110TriggerPoint_.rot, true, false, 3)
end

function Quest16001:OnSubFinish1600110(arg1)
    print("OnSubFinish1600110")
    this:ActorDestroy("Q1600110Trigger")
end

function Quest16001:OnSubStart1600105(arg1)
    print("OnSubStart1600105")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600105, true, 1600105)
    this:DeployRangeStoryByQuest(121600100, 20297, {x = 875.877, y = 64.098, z = 866.076}, 40, 60)
end

function Quest16001:OnSubFinish1600105(arg1)
    print("OnSubFinish1600105")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
end

function Quest16001:OnSubFailed1600105(arg1)
    print("OnSubFailed1600105")
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:ClearNpcTriggerByQuestId(1600105)
    this:CancelRangeStoryByQuest(121600100)
end

function Quest16001:OnSubStart1600111(arg1)
    print("OnSubStart1600111")
end

function Quest16001:OnSubFinish1600111(arg1)
    print("OnSubFinish1600111")
end

function Quest16001:OnSubStart1600106(arg1)
    print("OnSubStart1600106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600106, 0, 3, 1, npcs.Npc1320.id)
    this:CreateQuestNpc(arg1, npcs.Npc15941.id, 0, false, 0)
    this:DeployRangeStoryByQuest(121600100, 20297, {x = 875.877, y = 64.098, z = 866.076}, 40, 60)
end

function Quest16001:OnSubFinish1600106(arg1)
    print("OnSubFinish1600106")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
    this:SafeDestroyQuestNpc(npcs.Npc15941.alias, 20297)
end

function Quest16001:OnSubFailed1600106(arg1)
    print("OnSubFailed1600106")
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15941.alias)
    this:ClearNpcTriggerByQuestId(1600106)
    this:CancelRangeStoryByQuest(121600100)
end

function Quest16001:OnSubStart1600107(arg1)
    print("OnSubStart1600107")
    this:CreateQuestNpc(arg1, npcs.Npc15893.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15894.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15895.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15896.id, 0, false, 0)
    actorUtils.ShowContext("MagicInkBar", 1)
    this:DeployRangeStoryByQuest(121600100, 20297, {x = 875.877, y = 64.098, z = 866.076}, 40, 60)
end

function Quest16001:OnSubFinish1600107(arg1)
    print("OnSubFinish1600107")
    this:SafeDestroyQuestNpc(npcs.Npc15893.alias, 20297)
    this:SafeDestroyQuestNpc(npcs.Npc15894.alias, 20297)
    this:SafeDestroyQuestNpc(npcs.Npc15895.alias, 20297)
    this:SafeDestroyQuestNpc(npcs.Npc15896.alias, 20297)
end

function Quest16001:OnSubFailed1600107(arg1)
    print("OnSubFailed1600107")
    actorUtils.ShowContext("MagicInkBar", 0)
    this:CancelRangeStoryByQuest(121600100)
    this:NpcDestroyImmediately(20297, npcs.Npc15893.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15894.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15895.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15896.alias)
end

function Quest16001:OnSubStart1600108(arg1)
    print("OnSubStart1600108")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600108, 0, 5, 1, npcs.Npc1320.id)
    this:DeployRangeStoryByQuest(121600100, 20297, {x = 875.877, y = 64.098, z = 866.076}, 40, 60)
    actorUtils.ShowContext("MagicInkBar", 1)
end

function Quest16001:OnSubFinish1600108(arg1)
    print("OnSubFinish1600108")
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:CancelRangeStoryByQuest(121600100)
    actorUtils.ShowContext("MagicInkBar", 0)
end

function Quest16001:OnSubFailed1600108(arg1)
    print("OnSubFailed1600108")
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:ClearNpcTriggerByQuestId(1600108)
    this:CancelRangeStoryByQuest(121600100)
    actorUtils.ShowContext("MagicInkBar", 0)
end

function Quest16001:OnSubStart1600112(arg1)
    print("OnSubStart1600112")
end

function Quest16001:OnSubFinish1600112(arg1)
    print("OnSubFinish1600112")
end

function Quest16001:OnSubStart1600109(arg1)
    print("OnSubStart1600109")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600109, true, 1600109)
    actorMgr:CreateActorWithPos("Q1600109Trigger", "Actor/Gadget/Q1600109Trigger", 70900002, 0, points._Q1600109TriggerPoint_.pos, points._Q1600109TriggerPoint_.rot, true, false, 20297)
end

function Quest16001:OnSubFinish1600109(arg1)
    print("OnSubFinish1600109")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:ActorDestroy("Q1600109Trigger")
end

return Quest16001
