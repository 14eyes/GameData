require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70086 = class("Quest70086", QuestActorProxy)
Quest70086.defaultAlias = "Quest70086"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70086:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70086:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7008601"] = self.OnSubStart7008601}
end

function Quest70086:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7008601"] = self.OnSubFinish7008601}
end

function Quest70086:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70086:Start()
    print("Start")
end

function Quest70086:OnDestroy()
    print("OnDestroy")
end

function Quest70086:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70086:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70086:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70086:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70086:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70086:OnSubStart7008601(arg1)
    print("OnSubStart7008601")
    this:CreateQuestNpc(arg1, npcs.Npc1751.id, 0, false, 0)
end

function Quest70086:OnSubFinish7008601(arg1)
    print("OnSubFinish7008601")
    this:NpcDestroyImmediately(103, npcs.Npc1751.alias)
end

return Quest70086
