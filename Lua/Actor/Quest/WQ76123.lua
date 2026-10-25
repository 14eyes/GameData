require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76123 = class("Quest76123", QuestActorProxy)
Quest76123.defaultAlias = "Quest76123"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76123:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76123:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7612301"] = self.OnSubStart7612301}
end

function Quest76123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7612301"] = self.OnSubFinish7612301}
end

function Quest76123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76123:Start()
    print("Start")
end

function Quest76123:OnDestroy()
    print("OnDestroy")
end

function Quest76123:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76123:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76123:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7189.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7190.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7191.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16119.alias, 3)
    this:ActorDestroy("Q76123guer")
    this:DestroyNpcTrigger("Q7612301N1318Trigger")
end

function Quest76123:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76123guer")
end

function Quest76123:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76123:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76123:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76123:OnSubStart7612301(arg1)
    print("OnSubStart7612301")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 15, 7612301)
    this:CreateQuestNpc(arg1, npcs.Npc7189.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7189.alias, 76123):DoFreeStyle(3, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7190.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7190.alias, 76123):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7191.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16119.id, 0, false, 0)
end

function Quest76123:OnSubFinish7612301(arg1)
    print("OnSubFinish7612301")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
    this:SafeDestroyQuestNpc(npcs.Npc7189.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7190.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7191.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16119.alias, 3)
end

return Quest76123
