require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74532 = class("Quest74532", QuestActorProxy)
Quest74532.defaultAlias = "Quest74532"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74532:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74532:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7453201"] = self.OnSubStart7453201}
end

function Quest74532:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7453201"] = self.OnSubFinish7453201}
end

function Quest74532:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74532:Start()
    print("Start")
end

function Quest74532:OnDestroy()
    print("OnDestroy")
end

function Quest74532:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74532:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74532:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7453201N31002Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc31001.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31002.alias, 3)
    this:RecycleAllRes()
end

function Quest74532:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74532:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74532:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74532:OnSubStart7453201(arg1)
    print("OnSubStart7453201")
    this:CreateQuestNpc(arg1, npcs.Npc31001.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc31001.alias, 74532):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc31002.id, 0, 15, 7453201)
    this:GetQuestNpcActor(npcs.Npc31002.alias, 74532):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74532:OnSubFinish7453201(arg1)
    print("OnSubFinish7453201")
    this:NpcDestroyImmediately(3, npcs.Npc31001.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31002.alias)
end

return Quest74532
