require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40111 = class("Quest40111", QuestActorProxy)
Quest40111.defaultAlias = "Quest40111"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest40111:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40111:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4011101"] = self.OnSubStart4011101,
        ["4011102"] = self.OnSubStart4011102,
        ["4011103"] = self.OnSubStart4011103,
        ["4011104"] = self.OnSubStart4011104,
        ["4011105"] = self.OnSubStart4011105,
        ["4011106"] = self.OnSubStart4011106
    }
end

function Quest40111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4011101"] = self.OnSubFinish4011101,
        ["4011102"] = self.OnSubFinish4011102,
        ["4011103"] = self.OnSubFinish4011103,
        ["4011104"] = self.OnSubFinish4011104,
        ["4011105"] = self.OnSubFinish4011105,
        ["4011106"] = self.OnSubFinish4011106
    }
end

function Quest40111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40111:Start()
    print("Start")
end

function Quest40111:OnDestroy()
    print("OnDestroy")
end

function Quest40111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40111:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30357Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30358Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.GaiaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1567Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1433Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4011103Trigger", 3, false)
end

function Quest40111:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40111:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40111:OnSubStart4011101(arg1)
    print("OnSubStart4011101")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc30357Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc30358Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1070Data.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.GaiaData.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1567Data.id, 5)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1433Data.id, 6)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1060Data.id, 7)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1433Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1060Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30357Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc30358Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1070Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.GaiaData.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1433Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1060Data.alias):DoFreeStyle(1090, true, nil, true, true, true, true)
    end)
end

function Quest40111:OnSubFinish4011101(arg1)
    print("OnSubFinish4011101")
    this:GetQuestNpcActor(npcs.Npc30357Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30358Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1433Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1060Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc30357Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30358Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.GaiaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1567Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1433Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 3)
end

function Quest40111:OnSubStart4011102(arg1)
    print("OnSubStart4011102")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1070Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1021Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc10211Data.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1032Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2039Data.id, 5)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1021Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1032Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2039Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1070Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1130, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1060, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc10211Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc2039Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
    end)
end

function Quest40111:OnSubFinish4011102(arg1)
    print("OnSubFinish4011102")
    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1032Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc2039Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2039Data.alias, 3)
end

function Quest40111:OnSubStart4011103(arg1)
    print("OnSubStart4011103")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1070Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1044Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1049Data.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1038Data.id, 4)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1069Data.id, 5)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1037Data.id, 6)
    actorMgr:CreateActorWithPos("Q4011103Trigger", "Actor/Gadget/Q4011103Trigger", 70900002, 0, points.TPos_Q4011103Trigger.pos, points.TPos_Q4011103Trigger.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1070Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1069Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1038Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1037Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1070Data.alias):DoFreeStyle(1110, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1069Data.alias):DoFreeStyle(1090, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(1240, true, nil, true, true, true, true)
        this:GetQuestNpcActor(npcs.Npc1038Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    end)
end

function Quest40111:OnSubFinish4011103(arg1)
    print("OnSubFinish4011103")
    this:ActorDestroy("Q4011103Trigger")
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1069Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1038Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1037Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
end

function Quest40111:OnSubStart4011104(arg1)
    print("OnSubStart4011104")
end

function Quest40111:OnSubFinish4011104(arg1)
    print("OnSubFinish4011104")
end

function Quest40111:OnSubStart4011105(arg1)
    print("OnSubStart4011105")
    actorUtils.FinishQuestID(false, 4011105)
end

function Quest40111:OnSubFinish4011105(arg1)
    print("OnSubFinish4011105")
end

function Quest40111:OnSubStart4011106(arg1)
    print("OnSubStart4011106")
end

function Quest40111:OnSubFinish4011106(arg1)
    print("OnSubFinish4011106")
end

return Quest40111
