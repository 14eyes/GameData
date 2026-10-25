require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71677 = class("Quest71677", QuestActorProxy)
Quest71677.defaultAlias = "Quest71677"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71677:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71677:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7167701"] = self.OnSubStart7167701}
end

function Quest71677:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7167701"] = self.OnSubFinish7167701}
end

function Quest71677:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71677:Start()
    print("Start")
end

function Quest71677:OnDestroy()
    print("OnDestroy")
end

function Quest71677:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71677:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71677:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc31101.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31163.alias, 3)
    this:RecycleAllRes()
end

function Quest71677:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71677:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71677:OnSubStart7167701(arg1)
    print("OnSubStart7167701")
    this:CreateQuestNpc(arg1, npcs.Npc31101.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31163.id, 0, false, 0)
end

function Quest71677:OnSubFinish7167701(arg1)
    print("OnSubFinish7167701")
    this:NpcDestroyImmediately(3, npcs.Npc31101.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31163.alias)
end

return Quest71677
