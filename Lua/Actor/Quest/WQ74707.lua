require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74707 = class("Quest74707", QuestActorProxy)
Quest74707.defaultAlias = "Quest74707"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74707:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74707:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470701"] = self.OnSubStart7470701}
end

function Quest74707:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470701"] = self.OnSubFinish7470701}
end

function Quest74707:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74707:Start()
    print("Start")
end

function Quest74707:OnDestroy()
    print("OnDestroy")
end

function Quest74707:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74707:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74707:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7470701N1318Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1082.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc31017.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc31018.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc31019.alias, 1161)
    this:RecycleAllRes()
end

function Quest74707:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74707:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74707:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74707:OnSubStart7470701(arg1)
    print("OnSubStart7470701")
    this:CreateQuestNpc(arg1, npcs.Npc1073.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1082.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 5, 7470701)
    this:CreateQuestNpc(arg1, npcs.Npc31017.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31018.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31019.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1073.alias, 74707):SitOnChair(0, false)
end

function Quest74707:OnSubFinish7470701(arg1)
    print("OnSubFinish7470701")
    this:NpcDestroyImmediately(1161, npcs.Npc1073.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc1082.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc1318.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc31017.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc31018.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc31019.alias)
end

return Quest74707
