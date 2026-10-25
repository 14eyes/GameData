require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73706 = class("Quest73706", QuestActorProxy)
Quest73706.defaultAlias = "Quest73706"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest73706:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73706:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7370601"] = self.OnSubStart7370601}
end

function Quest73706:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7370601"] = self.OnSubFinish7370601}
end

function Quest73706:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73706:Start()
    print("Start")
end

function Quest73706:OnDestroy()
    print("OnDestroy")
end

function Quest73706:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73706:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73706:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q73706Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1067.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1051.alias, 3)
    this:DestroyQuestNpcActor(npcs.Ambor.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1052.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1059.alias, 3)
end

function Quest73706:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q73706Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1067.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1051.alias, 3)
    this:DestroyQuestNpcActor(npcs.Ambor.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1052.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1059.alias, 3)
end

function Quest73706:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest73706:OnSubStart7370601(arg1)
    print("OnSubStart7370601")
    this:CreateQuestNpc(arg1, npcs.Npc1067.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1051.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Ambor.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1052.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1059.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q73706Trigger", "Actor/Gadget/Q73706Trigger", 70900002, 0, points._Q73706TriggerPoint_.pos, points._Q73706TriggerPoint_.rot, true, false, 3)
end

function Quest73706:OnSubFinish7370601(arg1)
    print("OnSubFinish7370601")
    this:DestroyQuestNpcActor(npcs.Npc1067.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1051.alias, 3)
    this:DestroyQuestNpcActor(npcs.Ambor.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1052.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1059.alias, 3)
end

return Quest73706
