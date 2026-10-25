require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70080 = class("Quest70080", QuestActorProxy)
Quest70080.defaultAlias = "Quest70080"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70080:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70080:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7008001"] = self.OnSubStart7008001}
end

function Quest70080:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7008001"] = self.OnSubFinish7008001}
end

function Quest70080:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70080:Start()
    print("Start")
end

function Quest70080:OnDestroy()
    print("OnDestroy")
end

function Quest70080:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70080:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70080:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70080:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70080:OnSubStart7008001(arg1)
    print("OnSubStart7008001")
    this:CreateQuestNpc(arg1, npcs.Npc22294.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22295.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22296.id, 0, false, 0)
end

function Quest70080:OnSubFinish7008001(arg1)
    print("OnSubFinish7008001")
    this:SafeDestroyQuestNpc(npcs.Npc22294.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22295.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22296.alias, 103)
end

return Quest70080
