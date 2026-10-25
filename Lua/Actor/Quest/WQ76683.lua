require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76683 = class("Quest76683", QuestActorProxy)
Quest76683.defaultAlias = "Quest76683"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76683:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76683:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7668301"] = self.OnSubStart7668301}
end

function Quest76683:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7668301"] = self.OnSubFinish7668301}
end

function Quest76683:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76683:Start()
    print("Start")
end

function Quest76683:OnDestroy()
    print("OnDestroy")
end

function Quest76683:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76683:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76683:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q7668301Trigger", 76683)
    this:SafeDestroyQuestNpc(npcs.Npc31074.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31084.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31085.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17041.alias, 3)
    this:RecycleAllRes()
end

function Quest76683:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7668301Trigger", 76683)
end

function Quest76683:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76683:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76683:OnSubStart7668301(arg1)
    print("OnSubStart7668301")
    this:CreateQuestNpc(arg1, npcs.Npc31074.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31084.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31085.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31086.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17040.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17041.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7668301Trigger", "Actor/Gadget/Q7668301Trigger", 70900002, 0, points._Q7668301TriggerPoint_.pos, points._Q7668301TriggerPoint_.rot, true, false, 3, nil, 0, 76683)
end

function Quest76683:OnSubFinish7668301(arg1)
    print("OnSubFinish7668301")
    this:NpcDestroyImmediately(3, npcs.Npc31074.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31084.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31085.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31086.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17040.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17041.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2768, nil)
    end)
end

return Quest76683
