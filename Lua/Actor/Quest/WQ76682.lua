require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76682 = class("Quest76682", QuestActorProxy)
Quest76682.defaultAlias = "Quest76682"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76682:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76682:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7668201"] = self.OnSubStart7668201}
end

function Quest76682:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7668201"] = self.OnSubFinish7668201}
end

function Quest76682:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76682:Start()
    print("Start")
end

function Quest76682:OnDestroy()
    print("OnDestroy")
end

function Quest76682:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76682:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76682:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76682:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76682:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76682:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76682:OnSubStart7668201(arg1)
    print("OnSubStart7668201")
    this:NpcCreateWithNpcTrigger(npcs.Npc22406.id, 0, 50, 7668201)
end

function Quest76682:OnSubFinish7668201(arg1)
    print("OnSubFinish7668201")
    this:NpcDestroyImmediately(102, npcs.Npc22406.alias)
end

return Quest76682
