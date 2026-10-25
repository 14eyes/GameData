require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74531 = class("Quest74531", QuestActorProxy)
Quest74531.defaultAlias = "Quest74531"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74531:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74531:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7453101"] = self.OnSubStart7453101}
end

function Quest74531:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7453101"] = self.OnSubFinish7453101}
end

function Quest74531:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74531:Start()
    print("Start")
end

function Quest74531:OnDestroy()
    print("OnDestroy")
end

function Quest74531:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74531:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74531:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30920.alias, 3)
    this:DestroyNpcTrigger("Q7453101N30920Trigger")
end

function Quest74531:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74531:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74531:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74531:OnSubStart7453101(arg1)
    print("OnSubStart7453101")
    this:NpcCreateWithNpcTrigger(npcs.Npc30920.id, 0, 10, 7453101)
end

function Quest74531:OnSubFinish7453101(arg1)
    print("OnSubFinish7453101")
    this:NpcDestroyImmediately(3, npcs.Npc30920.alias)
end

return Quest74531
