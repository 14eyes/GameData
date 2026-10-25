require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79066 = class("Quest79066", QuestActorProxy)
Quest79066.defaultAlias = "Quest79066"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79066:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79066:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7906601"] = self.OnSubStart7906601,
        ["7906605"] = self.OnSubStart7906605,
        ["7906606"] = self.OnSubStart7906606,
        ["7906610"] = self.OnSubStart7906610,
        ["7906611"] = self.OnSubStart7906611,
        ["7906607"] = self.OnSubStart7906607,
        ["7906602"] = self.OnSubStart7906602,
        ["7906603"] = self.OnSubStart7906603,
        ["7906608"] = self.OnSubStart7906608,
        ["7906609"] = self.OnSubStart7906609,
        ["7906612"] = self.OnSubStart7906612,
        ["7906604"] = self.OnSubStart7906604
    }
end

function Quest79066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7906601"] = self.OnSubFinish7906601,
        ["7906605"] = self.OnSubFinish7906605,
        ["7906606"] = self.OnSubFinish7906606,
        ["7906610"] = self.OnSubFinish7906610,
        ["7906611"] = self.OnSubFinish7906611,
        ["7906607"] = self.OnSubFinish7906607,
        ["7906602"] = self.OnSubFinish7906602,
        ["7906603"] = self.OnSubFinish7906603,
        ["7906608"] = self.OnSubFinish7906608,
        ["7906609"] = self.OnSubFinish7906609,
        ["7906612"] = self.OnSubFinish7906612,
        ["7906604"] = self.OnSubFinish7906604
    }
end

function Quest79066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79066:Start()
    print("Start")
end

function Quest79066:OnDestroy()
    print("OnDestroy")
end

function Quest79066:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79066:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79066:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79066:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest79066:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest79066:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest79066:OnSubStart7906601(arg1)
    print("OnSubStart7906601")
    this:CreateQuestNpc(arg1, npcs.Npc21470Data.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21471Data.id, 7906601, 0, 5)
    this:CreateQuestNpc(arg1, npcs.Npc21472Data.id, 0, false, 0)
end

function Quest79066:OnSubFinish7906601(arg1)
    print("OnSubFinish7906601")
end

function Quest79066:OnSubStart7906605(arg1)
    print("OnSubStart7906605")
    this:CreateQuestNpc(arg1, npcs.Npc21470Data.id, 0, false, 0)
end

function Quest79066:OnSubFinish7906605(arg1)
    print("OnSubFinish7906605")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21470Data.alias)
end

function Quest79066:OnSubStart7906606(arg1)
    print("OnSubStart7906606")
end

function Quest79066:OnSubFinish7906606(arg1)
    print("OnSubFinish7906606")
end

function Quest79066:OnSubStart7906610(arg1)
    print("OnSubStart7906610")
end

function Quest79066:OnSubFinish7906610(arg1)
    print("OnSubFinish7906610")
end

function Quest79066:OnSubStart7906611(arg1)
    print("OnSubStart7906611")
end

function Quest79066:OnSubFinish7906611(arg1)
    print("OnSubFinish7906611")
end

function Quest79066:OnSubStart7906607(arg1)
    print("OnSubStart7906607")
    this:CreateQuestNpc(arg1, npcs.Npc21470Data.id, 0, false, 0)
end

function Quest79066:OnSubFinish7906607(arg1)
    print("OnSubFinish7906607")
end

function Quest79066:OnSubStart7906602(arg1)
    print("OnSubStart7906602")
    this:NpcCreateWithNpcTrigger(npcs.Npc21470Data.id, 7906602, 0, 15)
end

function Quest79066:OnSubFinish7906602(arg1)
    print("OnSubFinish7906602")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21470Data.alias)
end

function Quest79066:OnSubStart7906603(arg1)
    print("OnSubStart7906603")
end

function Quest79066:OnSubFinish7906603(arg1)
    print("OnSubFinish7906603")
end

function Quest79066:OnSubStart7906608(arg1)
    print("OnSubStart7906608")
    this:NpcCreateWithNpcTrigger(npcs.Npc21470Data.id, 7906608, 0, 25)
end

function Quest79066:OnSubFinish7906608(arg1)
    print("OnSubFinish7906608")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21470Data.alias)
end

function Quest79066:OnSubStart7906609(arg1)
    print("OnSubStart7906609")
end

function Quest79066:OnSubFinish7906609(arg1)
    print("OnSubFinish7906609")
end

function Quest79066:OnSubStart7906612(arg1)
    print("OnSubStart7906612")
end

function Quest79066:OnSubFinish7906612(arg1)
    print("OnSubFinish7906612")
end

function Quest79066:OnSubStart7906604(arg1)
    print("OnSubStart7906604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21470Data.id, 7906604, 0, 50, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21471Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21472Data.id, 0, false, 0)
end

function Quest79066:OnSubFinish7906604(arg1)
    print("OnSubFinish7906604")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21470Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21471Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21472Data.alias)
end

return Quest79066
