require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76684 = class("Quest76684", QuestActorProxy)
Quest76684.defaultAlias = "Quest76684"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76684:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76684:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7668401"] = self.OnSubStart7668401}
end

function Quest76684:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7668401"] = self.OnSubFinish7668401}
end

function Quest76684:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76684:Start()
    print("Start")
end

function Quest76684:OnDestroy()
    print("OnDestroy")
end

function Quest76684:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76684:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76684:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7668401N31084Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc31074.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31084.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31086.alias, 3)
    this:RecycleAllRes()
end

function Quest76684:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76684:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76684:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76684:OnSubStart7668401(arg1)
    print("OnSubStart7668401")
    this:CreateQuestNpc(arg1, npcs.Npc31074.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc31084.id, 0, 15, 7668401)
    this:CreateQuestNpc(arg1, npcs.Npc31086.id, 0, false, 0)
end

function Quest76684:OnSubFinish7668401(arg1)
    print("OnSubFinish7668401")
    this:NpcDestroyImmediately(3, npcs.Npc31074.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31084.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31086.alias)
end

return Quest76684
