require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71675 = class("Quest71675", QuestActorProxy)
Quest71675.defaultAlias = "Quest71675"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71675:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71675:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7167501"] = self.OnSubStart7167501}
end

function Quest71675:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7167501"] = self.OnSubFinish7167501}
end

function Quest71675:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71675:Start()
    print("Start")
end

function Quest71675:OnDestroy()
    print("OnDestroy")
end

function Quest71675:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71675:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71675:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc31100.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31162.alias, 3)
    this:RecycleAllRes()
end

function Quest71675:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71675:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71675:OnSubStart7167501(arg1)
    print("OnSubStart7167501")
    this:CreateQuestNpc(arg1, npcs.Npc31100.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31162.id, 0, false, 0)
end

function Quest71675:OnSubFinish7167501(arg1)
    print("OnSubFinish7167501")
    this:NpcDestroyImmediately(3, npcs.Npc31100.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31162.alias)
end

return Quest71675
