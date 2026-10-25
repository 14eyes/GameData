require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23035 = class("Quest23035", QuestActorProxy)
Quest23035.defaultAlias = "Quest23035"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest23035:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest23035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303501"] = self.OnSubStart2303501,
        ["2303502"] = self.OnSubStart2303502,
        ["2303503"] = self.OnSubStart2303503,
        ["2303504"] = self.OnSubStart2303504,
        ["2303505"] = self.OnSubStart2303505,
        ["2303506"] = self.OnSubStart2303506
    }
end

function Quest23035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303501"] = self.OnSubFinish2303501,
        ["2303502"] = self.OnSubFinish2303502,
        ["2303503"] = self.OnSubFinish2303503,
        ["2303504"] = self.OnSubFinish2303504,
        ["2303505"] = self.OnSubFinish2303505,
        ["2303506"] = self.OnSubFinish2303506
    }
end

function Quest23035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23035:Start()
    print("Start")
end

function Quest23035:OnDestroy()
    print("OnDestroy")
end

function Quest23035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc12717Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12717Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc13476Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc12717Data01.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data01.alias, 1074)
    actorMgr:GetActor("23035"):UnSpawn(gadgets.Gadget70710787Data.alias)
    actorMgr:DestroyEntityActor("Q2303502Trigger", 1074, false)
    actorMgr:DestroyEntityActor("Q2303505Trigger", 1074, false)
end

function Quest23035:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest23035:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest23035:OnSubStart2303501(arg1)
    print("OnSubStart2303501")
    this:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
end

function Quest23035:OnSubFinish2303501(arg1)
    print("OnSubFinish2303501")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc12717Data.alias)
end

function Quest23035:OnSubStart2303502(arg1)
    print("OnSubStart2303502")
    this:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
end

function Quest23035:OnSubFinish2303502(arg1)
    print("OnSubFinish2303502")
    this:SafeDestroyQuestNpc(npcs.Npc12717Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1074)
end

function Quest23035:OnSubStart2303503(arg1)
    print("OnSubStart2303503")
    this:UnSpawn(gadgets.Gadget70710787Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget70710787Data.id, 1, 0)
    this:CallDelay(5, function(arg1_2)
        this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12717Data.id, 1)
        this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1058Data.id, 2)
        this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest23035:OnSubFinish2303503(arg1)
    print("OnSubFinish2303503")
end

function Quest23035:OnSubStart2303504(arg1)
    print("OnSubStart2303504")
    this:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
end

function Quest23035:OnSubFinish2303504(arg1)
    print("OnSubFinish2303504")
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(false)
end

function Quest23035:OnSubStart2303505(arg1)
    print("OnSubStart2303505")
    this:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13476Data.id, 3)
end

function Quest23035:OnSubFinish2303505(arg1)
    print("OnSubFinish2303505")
    this:SafeDestroyQuestNpc(npcs.Npc13476Data.alias, 1074)
    this:UnSpawn(gadgets.Gadget70710787Data.alias)
end

function Quest23035:OnSubStart2303506(arg1)
    print("OnSubStart2303506")
    this:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 2)
    this:RequestInteraction(npcs.Npc12717Data.alias)
end

function Quest23035:OnSubFinish2303506(arg1)
    print("OnSubFinish2303506")
    this:CreateQuestNpc(arg1, npcs.Npc12717Data01.id, 3)
    this:GetQuestNpcActor(npcs.Npc12717Data01.alias):SitOnChair(0)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data01.id, 4)
    this:GetQuestNpcActor(npcs.Npc1058Data01.alias):SitOnChair(0)
    this:GetQuestNpcActor(npcs.Npc12717Data01.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data01.alias):DisableInteeHeadCtrl(true)
end

return Quest23035
