require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75673 = class("Quest75673", QuestActorProxy)
Quest75673.defaultAlias = "Quest75673"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75673:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75673:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7567301"] = self.OnSubStart7567301}
end

function Quest75673:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7567301"] = self.OnSubFinish7567301}
end

function Quest75673:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75673:Start()
    print("Start")
end

function Quest75673:OnDestroy()
    print("OnDestroy")
end

function Quest75673:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75673:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75673:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7567301N22084Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc22084.alias, 3)
    this:RecycleAllRes()
end

function Quest75673:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75673:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75673:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75673:OnSubStart7567301(arg1)
    print("OnSubStart7567301")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7567301, 0, 20, 1, npcs.Npc22084.id)
end

function Quest75673:OnSubFinish7567301(arg1)
    print("OnSubFinish7567301")
    this:NpcDestroyImmediately(3, npcs.Npc22084.alias)
end

return Quest75673
