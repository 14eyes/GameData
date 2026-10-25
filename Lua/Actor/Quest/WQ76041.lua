require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76041 = class("Quest76041", QuestActorProxy)
Quest76041.defaultAlias = "Quest76041"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76041:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7604101"] = self.OnSubStart7604101,
        ["7604102"] = self.OnSubStart7604102,
        ["7604103"] = self.OnSubStart7604103,
        ["7604104"] = self.OnSubStart7604104
    }
end

function Quest76041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7604101"] = self.OnSubFinish7604101,
        ["7604102"] = self.OnSubFinish7604102,
        ["7604103"] = self.OnSubFinish7604103,
        ["7604104"] = self.OnSubFinish7604104
    }
end

function Quest76041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76041:Start()
    print("Start")
end

function Quest76041:OnDestroy()
    print("OnDestroy")
end

function Quest76041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76041:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76041:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7604101Trigger")
end

function Quest76041:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76041:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76041:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76041:OnSubStart7604101(arg1)
    print("OnSubStart7604101")
    this:CreateQuestNpc(arg1, npcs.Npc22110.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22111.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7604101Trigger", "Actor/Gadget/Q7604101Trigger", 70900002, 0, points._Q7604101TriggerPoint_.pos, points._Q7604101TriggerPoint_.rot, true, false, 3)
end

function Quest76041:OnSubFinish7604101(arg1)
    print("OnSubFinish7604101")
end

function Quest76041:OnSubStart7604102(arg1)
    print("OnSubStart7604102")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7604102, 0, 60, 0, npcs.Npc22110.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7604102, 0, 60, 0, npcs.Npc22111.id)
end

function Quest76041:OnSubFinish7604102(arg1)
    print("OnSubFinish7604102")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22110.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22111.alias)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_760419901, nil)
    end)
end

function Quest76041:OnSubStart7604103(arg1)
    print("OnSubStart7604103")
end

function Quest76041:OnSubFinish7604103(arg1)
    print("OnSubFinish7604103")
end

function Quest76041:OnSubStart7604104(arg1)
    print("OnSubStart7604104")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7604104, 0, 40, 0, npcs.Paimon.id)
end

function Quest76041:OnSubFinish7604104(arg1)
    print("OnSubFinish7604104")
    this:NpcDestroyWithBlackscreen(3, npcs.Paimon.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

return Quest76041
