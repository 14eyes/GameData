require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76512 = class("Quest76512", QuestActorProxy)
Quest76512.defaultAlias = "Quest76512"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76512:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76512:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7651201"] = self.OnSubStart7651201}
end

function Quest76512:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7651201"] = self.OnSubFinish7651201}
end

function Quest76512:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76512:Start()
    print("Start")
end

function Quest76512:OnDestroy()
    print("OnDestroy")
end

function Quest76512:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76512:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76512:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7651201N31062Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc31024.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31025.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31059.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31060.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31061.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31062.alias, 3)
    this:RecycleAllRes()
end

function Quest76512:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76512:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76512:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76512:OnSubStart7651201(arg1)
    print("OnSubStart7651201")
    this:CreateQuestNpc(arg1, npcs.Npc31024.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31025.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31059.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31060.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31061.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc31062.id, 0, 15, 7651201)
end

function Quest76512:OnSubFinish7651201(arg1)
    print("OnSubFinish7651201")
    this:NpcDestroyImmediately(3, npcs.Npc31024.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31025.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31059.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31060.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31061.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31062.alias)
end

return Quest76512
