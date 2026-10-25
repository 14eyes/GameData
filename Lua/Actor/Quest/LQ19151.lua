require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19151 = class("Quest19151", QuestActorProxy)
Quest19151.defaultAlias = "Quest19151"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19151:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19151:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1915101"] = self.OnSubStart1915101,
        ["1915104"] = self.OnSubStart1915104,
        ["1915102"] = self.OnSubStart1915102,
        ["1915103"] = self.OnSubStart1915103
    }
end

function Quest19151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1915101"] = self.OnSubFinish1915101,
        ["1915104"] = self.OnSubFinish1915104,
        ["1915102"] = self.OnSubFinish1915102,
        ["1915103"] = self.OnSubFinish1915103
    }
end

function Quest19151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19151:Start()
    print("Start")
end

function Quest19151:OnDestroy()
    print("OnDestroy")
end

function Quest19151:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19151:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19151:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc12905Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1073)
    actorMgr:DestroyEntityActor("Q19151Trigger", 1073, false)
    actorMgr:DestroyEntityActor("Q1915103t", 1073, false)
end

function Quest19151:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19151:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19151:OnSubStart1915101(arg1)
    print("OnSubStart1915101")
    this:CreateQuestNpc(arg1, npcs.Npc12905Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc12905Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915101)
end

function Quest19151:OnSubFinish1915101(arg1)
    print("OnSubFinish1915101")
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1073)
end

function Quest19151:OnSubStart1915104(arg1)
    print("OnSubStart1915104")
    this:CreateQuestNpc(arg1, npcs.Npc12905Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc12905Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q19151Trigger", "Actor/Gadget/Q19151Trigger", 70900002, 0, sceneData:GetDummyPoint(1073, "C1915103_N512").pos, sceneData:GetDummyPoint(1073, "C1915103_N512").rot, true, false, 1073)
end

function Quest19151:OnSubFinish1915104(arg1)
    print("OnSubFinish1915104")
    this:ActorDestroy("Q19151Trigger")
end

function Quest19151:OnSubStart1915102(arg1)
    print("OnSubStart1915102")
    this:GetQuestNpcActor(npcs.Npc12905Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest19151:OnSubFinish1915102(arg1)
    print("OnSubFinish1915102")
end

function Quest19151:OnSubStart1915103(arg1)
    print("OnSubStart1915103")
    this:GetQuestNpcActor(npcs.Npc12905Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915103)
    this:CreateQuestNpcWithTriggerBlack("Q1915103t", 1915103, 512, 2, 20, 1)
end

function Quest19151:OnSubFinish1915103(arg1)
    print("OnSubFinish1915103")
    this:SafeDestroyQuestNpc(npcs.Npc12905Data.alias, 1073)
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 1073)
end

return Quest19151
