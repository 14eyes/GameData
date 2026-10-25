require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74247 = class("Quest74247", QuestActorProxy)
Quest74247.defaultAlias = "Quest74247"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74247:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74247:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7424701"] = self.OnSubStart7424701}
end

function Quest74247:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7424701"] = self.OnSubFinish7424701}
end

function Quest74247:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7424701"] = self.OnSubFailed7424701}
end

function Quest74247:Start()
    print("Start")
end

function Quest74247:OnDestroy()
    print("OnDestroy")
end

function Quest74247:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74247:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74247:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74247:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74247:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74247:OnSubStart7424701(arg1)
    print("OnSubStart7424701")
    this:CreateQuestNpc(arg1, npcs.Npc16078.id, 0, false, 0)
end

function Quest74247:OnSubFinish7424701(arg1)
    print("OnSubFinish7424701")
    this:NpcDestroyImmediately(3, npcs.Npc16078.alias)
end

function Quest74247:OnSubFailed7424701(arg1)
    print("OnSubFailed7424701")
    this:NpcDestroyImmediately(3, npcs.Npc16078.alias)
end

return Quest74247
