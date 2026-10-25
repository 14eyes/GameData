require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75305 = class("Quest75305", QuestActorProxy)
Quest75305.defaultAlias = "Quest75305"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75305:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75305:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7530501"] = self.OnSubStart7530501}
end

function Quest75305:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7530501"] = self.OnSubFinish7530501}
end

function Quest75305:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75305:Start()
    print("Start")
end

function Quest75305:OnDestroy()
    print("OnDestroy")
end

function Quest75305:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75305:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75305:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7530501N31169Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc31169.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31170.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31171.alias, 3)
    this:RecycleAllRes()
end

function Quest75305:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75305:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75305:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75305:OnSubStart7530501(arg1)
    print("OnSubStart7530501")
    this:NpcCreateWithNpcTrigger(npcs.Npc31169.id, 0, 10, 7530501)
    this:CreateQuestNpc(arg1, npcs.Npc31170.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31171.id, 0, false, 0)
end

function Quest75305:OnSubFinish7530501(arg1)
    print("OnSubFinish7530501")
    this:NpcDestroyImmediately(3, npcs.Npc31169.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31170.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31171.alias)
end

return Quest75305
