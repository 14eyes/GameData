require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7010 = class("Quest7010", QuestActorProxy)
Quest7010.defaultAlias = "Quest7010"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest7010:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest7010:OnSubStartHandlerBuild()
    self.subStartHandlers = {["701001"] = self.OnSubStart701001}
end

function Quest7010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["701001"] = self.OnSubFinish701001}
end

function Quest7010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest7010:Start()
    print("Start")
end

function Quest7010:OnDestroy()
    print("OnDestroy")
end

function Quest7010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7010:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest7010:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7010:OnSubStart701001(arg1)
    print("OnSubStart701001")
    this:CreateQuestNpc(arg1, npcs.Npc17288.id, 0, false, 0)
end

function Quest7010:OnSubFinish701001(arg1)
    print("OnSubFinish701001")
    this:NpcDestroyImmediately(20352, npcs.Npc17288.alias)
end

return Quest7010
