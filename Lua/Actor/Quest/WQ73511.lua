require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73511 = class("Quest73511", QuestActorProxy)
Quest73511.defaultAlias = "Quest73511"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73511:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73511:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7351101"] = self.OnSubStart7351101,
        ["7351102"] = self.OnSubStart7351102,
        ["7351103"] = self.OnSubStart7351103
    }
end

function Quest73511:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7351101"] = self.OnSubFinish7351101,
        ["7351102"] = self.OnSubFinish7351102,
        ["7351103"] = self.OnSubFinish7351103
    }
end

function Quest73511:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73511:Start()
    print("Start")
end

function Quest73511:OnDestroy()
    print("OnDestroy")
end

function Quest73511:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73511:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73511:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc4403Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    actorMgr:DestroyEntityActor("Q73511Trigger", 3, false)
end

function Quest73511:OnSubStart7351101(arg1)
    print("OnSubStart7351101")
    this:CreateQuestNpc(arg1, npcs.Npc4403Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30343Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc4403Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30343Data.alias):DisableInteeHeadCtrl(true)
end

function Quest73511:OnSubFinish7351101(arg1)
    print("OnSubFinish7351101")
    this:GetQuestNpcActor(npcs.Npc4403Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30343Data.alias):DisableInteeHeadCtrl(false)
end

function Quest73511:OnSubStart7351102(arg1)
    print("OnSubStart7351102")
    this:CreateQuestNpc(arg1, npcs.Npc30342Data.id, 1)
    actorMgr:CreateActorWithPos("Q73511Trigger", "Actor/Gadget/Q73511Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7351102_guide").pos, sceneData:GetDummyPoint(3, "Q7351102_guide").rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30342Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest73511:OnSubFinish7351102(arg1)
    print("OnSubFinish7351102")
    this:SafeDestroyQuestNpc(npcs.Npc4403Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
end

function Quest73511:OnSubStart7351103(arg1)
    print("OnSubStart7351103")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30342Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest73511:OnSubFinish7351103(arg1)
    print("OnSubFinish7351103")
    this:DestroyQuestNpcActor(npcs.Npc30342Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1370)
    end)
end

return Quest73511
