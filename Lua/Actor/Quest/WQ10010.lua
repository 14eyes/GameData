require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10010 = class("Quest10010", QuestActorProxy)
Quest10010.defaultAlias = "Quest10010"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest10010:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest10010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1001001"] = self.OnSubStart1001001,
        ["1001003"] = self.OnSubStart1001003,
        ["1001002"] = self.OnSubStart1001002,
        ["1001004"] = self.OnSubStart1001004,
        ["1001005"] = self.OnSubStart1001005,
        ["1001006"] = self.OnSubStart1001006,
        ["1001009"] = self.OnSubStart1001009,
        ["1001007"] = self.OnSubStart1001007,
        ["1001008"] = self.OnSubStart1001008
    }
end

function Quest10010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1001001"] = self.OnSubFinish1001001,
        ["1001003"] = self.OnSubFinish1001003,
        ["1001002"] = self.OnSubFinish1001002,
        ["1001004"] = self.OnSubFinish1001004,
        ["1001005"] = self.OnSubFinish1001005,
        ["1001006"] = self.OnSubFinish1001006,
        ["1001009"] = self.OnSubFinish1001009,
        ["1001007"] = self.OnSubFinish1001007,
        ["1001008"] = self.OnSubFinish1001008
    }
end

function Quest10010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest10010:Start()
    print("Start")
end

function Quest10010:OnDestroy()
    print("OnDestroy")
end

function Quest10010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10010:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1001002Trigger")
    this:ActorDestroy("Q1001006Trigger")
    this:ActorDestroy("Q1001002Trigger_1")
    this:ActorDestroy("Q1001009Trigger")
end

function Quest10010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest10010:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest10010:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest10010:OnSubStart1001001(arg1)
    print("OnSubStart1001001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001001, 0, 10, 1, npcs.Npc10090.id)
    this:DailyNpcSafeHideSelf(npcs.Npc1525.alias, true, 1)
end

function Quest10010:OnSubFinish1001001(arg1)
    print("OnSubFinish1001001")
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
    this:LightNotifyTo(npcs.Npc1525.alias, 0, true)
end

function Quest10010:OnSubStart1001003(arg1)
    print("OnSubStart1001003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001003, 0, 25, 1, npcs.Npc10090.id)
end

function Quest10010:OnSubFinish1001003(arg1)
    print("OnSubFinish1001003")
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
end

function Quest10010:OnSubStart1001002(arg1)
    print("OnSubStart1001002")
    actorMgr:CreateActorWithPos("Q1001002Trigger_1", "Actor/Gadget/Q1001002Trigger_1", 70900002, 0, points._Q1001002Trigger_1Point_.pos, points._Q1001002Trigger_1Point_.rot, true, false, 3)
end

function Quest10010:OnSubFinish1001002(arg1)
    print("OnSubFinish1001002")
end

function Quest10010:OnSubStart1001004(arg1)
    print("OnSubStart1001004")
end

function Quest10010:OnSubFinish1001004(arg1)
    print("OnSubFinish1001004")
end

function Quest10010:OnSubStart1001005(arg1)
    print("OnSubStart1001005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001005, 0, 30, 1, npcs.Npc10090.id)
end

function Quest10010:OnSubFinish1001005(arg1)
    print("OnSubFinish1001005")
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
end

function Quest10010:OnSubStart1001006(arg1)
    print("OnSubStart1001006")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001006, 0, 15, 1, npcs.Npc10090.id)
end

function Quest10010:OnSubFinish1001006(arg1)
    print("OnSubFinish1001006")
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
end

function Quest10010:OnSubStart1001009(arg1)
    print("OnSubStart1001009")
    actorMgr:CreateActorWithPos("Q1001009Trigger", "Actor/Gadget/Q1001009Trigger", 70900002, 0, points._Q1001009TriggerPoint_.pos, points._Q1001009TriggerPoint_.rot, true, false, 3)
end

function Quest10010:OnSubFinish1001009(arg1)
    print("OnSubFinish1001009")
end

function Quest10010:OnSubStart1001007(arg1)
    print("OnSubStart1001007")
end

function Quest10010:OnSubFinish1001007(arg1)
    print("OnSubFinish1001007")
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
end

function Quest10010:OnSubStart1001008(arg1)
    print("OnSubStart1001008")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1001008, 0, 30, 1, npcs.Npc10090.id)
end

function Quest10010:OnSubFinish1001008(arg1)
    print("OnSubFinish1001008")
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000029)
    end)
end

return Quest10010
