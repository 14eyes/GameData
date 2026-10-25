require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71676 = class("Quest71676", QuestActorProxy)
Quest71676.defaultAlias = "Quest71676"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71676:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71676:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7167601"] = self.OnSubStart7167601}
end

function Quest71676:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7167601"] = self.OnSubFinish7167601}
end

function Quest71676:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71676:Start()
    print("Start")
end

function Quest71676:OnDestroy()
    print("OnDestroy")
end

function Quest71676:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71676:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71676:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc2476.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31161.alias, 3)
    this:RecycleAllRes()
end

function Quest71676:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71676:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71676:OnSubStart7167601(arg1)
    print("OnSubStart7167601")
    this:CreateQuestNpc(arg1, npcs.Npc2476.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31161.id, 0, false, 0)
end

function Quest71676:OnSubFinish7167601(arg1)
    print("OnSubFinish7167601")
    this:NpcDestroyImmediately(3, npcs.Npc2476.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31161.alias)
end

return Quest71676
