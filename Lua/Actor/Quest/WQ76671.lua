require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76671 = class("Quest76671", QuestActorProxy)
Quest76671.defaultAlias = "Quest76671"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76671:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76671:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7667101"] = self.OnSubStart7667101,
        ["7667102"] = self.OnSubStart7667102,
        ["7667103"] = self.OnSubStart7667103,
        ["7667104"] = self.OnSubStart7667104,
        ["7667107"] = self.OnSubStart7667107,
        ["7667106"] = self.OnSubStart7667106,
        ["7667105"] = self.OnSubStart7667105,
        ["7667108"] = self.OnSubStart7667108,
        ["7667109"] = self.OnSubStart7667109,
        ["7667110"] = self.OnSubStart7667110
    }
end

function Quest76671:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7667101"] = self.OnSubFinish7667101,
        ["7667102"] = self.OnSubFinish7667102,
        ["7667103"] = self.OnSubFinish7667103,
        ["7667104"] = self.OnSubFinish7667104,
        ["7667107"] = self.OnSubFinish7667107,
        ["7667106"] = self.OnSubFinish7667106,
        ["7667105"] = self.OnSubFinish7667105,
        ["7667108"] = self.OnSubFinish7667108,
        ["7667109"] = self.OnSubFinish7667109,
        ["7667110"] = self.OnSubFinish7667110
    }
end

function Quest76671:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76671:Start()
    print("Start")
end

function Quest76671:OnDestroy()
    print("OnDestroy")
end

function Quest76671:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76671:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76671:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76671:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q76671Trigger")
    this:ActorDestroy("Q76671Trigger_1")
    this:ActorDestroy("Q76671Trigger_2")
    this:ActorDestroy("Q76671Trigger_3")
end

function Quest76671:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76671:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76671:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76671:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76671:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76671:OnSubStart7667101(arg1)
    print("OnSubStart7667101")
    actorMgr:CreateActorWithPos("Q76671Trigger_2", "Actor/Gadget/Q76671Trigger_2", 70900002, 0, points._Q76671Trigger_2Point_.pos, points._Q76671Trigger_2Point_.rot, true, false, 3)
end

function Quest76671:OnSubFinish7667101(arg1)
    print("OnSubFinish7667101")
    this:ActorDestroy("Q76671Trigger_2")
end

function Quest76671:OnSubStart7667102(arg1)
    print("OnSubStart7667102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1324.id, 0, 20, 7667102)
    this:CreateQuestNpc(arg1, npcs.Npc7608.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
end

function Quest76671:OnSubFinish7667102(arg1)
    print("OnSubFinish7667102")
end

function Quest76671:OnSubStart7667103(arg1)
    print("OnSubStart7667103")
    this:CreateQuestNpc(arg1, npcs.Npc1324.id, 0, false, 0)
    this:DeployRangeStoryByQuest(147667101, 3, {x = 6068.015, y = 223.175, z = 9891.713}, 80, 100)
end

function Quest76671:OnSubFinish7667103(arg1)
    print("OnSubFinish7667103")
    this:CancelRangeStoryByQuest(147667101)
end

function Quest76671:OnSubStart7667104(arg1)
    print("OnSubStart7667104")
    this:NpcCreateWithNpcTrigger(npcs.Npc1324.id, 0, 8, 7667104)
end

function Quest76671:OnSubFinish7667104(arg1)
    print("OnSubFinish7667104")
    this:NpcDestroyImmediately(3, npcs.Npc1324.alias)
end

function Quest76671:OnSubStart7667107(arg1)
    print("OnSubStart7667107")
    this:CreateQuestNpc(arg1, npcs.Npc7611.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q76671Trigger", "Actor/Gadget/Q76671Trigger", 70900002, 0, points._Q76671TriggerPoint_.pos, points._Q76671TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q76671Trigger_1", "Actor/Gadget/Q76671Trigger_1", 70900002, 0, points._Q76671Trigger_1Point_.pos, points._Q76671Trigger_1Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q76671Trigger_3", "Actor/Gadget/Q76671Trigger_3", 70900002, 0, points._Q76671Trigger_3Point_.pos, points._Q76671Trigger_3Point_.rot, true, false, 3)
end

function Quest76671:OnSubFinish7667107(arg1)
    print("OnSubFinish7667107")
    this:ActorDestroy("Q76671Trigger")
    this:ActorDestroy("Q76671Trigger_1")
    this:ActorDestroy("Q76671Trigger_3")
end

function Quest76671:OnSubStart7667106(arg1)
    print("OnSubStart7667106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7667106, 0, 10, 2, npcs.Npc1324.id)
end

function Quest76671:OnSubFinish7667106(arg1)
    print("OnSubFinish7667106")
    this:NpcDestroyImmediately(3, npcs.Npc1324.alias)
    this:ClearNarratorTask()
end

function Quest76671:OnSubStart7667105(arg1)
    print("OnSubStart7667105")
    this:CreateQuestNpc(arg1, npcs.Npc7611.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7611.alias, 76671):DoFreeStyle(1070, true, nil, true, true, false, true)
end

function Quest76671:OnSubFinish7667105(arg1)
    print("OnSubFinish7667105")
    this:NpcDestroyImmediately(3, npcs.Npc7611.alias)
end

function Quest76671:OnSubStart7667108(arg1)
    print("OnSubStart7667108")
end

function Quest76671:OnSubFinish7667108(arg1)
    print("OnSubFinish7667108")
end

function Quest76671:OnSubStart7667109(arg1)
    print("OnSubStart7667109")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7667109, 0, 30, 2, npcs.Npc1324.id)
end

function Quest76671:OnSubFinish7667109(arg1)
    print("OnSubFinish7667109")
    this:NpcDestroyImmediately(3, npcs.Npc1324.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76671:OnSubStart7667110(arg1)
    print("OnSubStart7667110")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1324.id, 0, 7667110, 10, true)
end

function Quest76671:OnSubFinish7667110(arg1)
    print("OnSubFinish7667110")
    this:NpcDestroyImmediately(3, npcs.Npc1324.alias)
end

return Quest76671
