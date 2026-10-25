require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77502 = class("Quest77502", QuestActorProxy)
Quest77502.defaultAlias = "Quest77502"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77502:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77502:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7750201"] = self.OnSubStart7750201}
end

function Quest77502:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7750201"] = self.OnSubFinish7750201}
end

function Quest77502:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77502:Start()
    print("Start")
end

function Quest77502:OnDestroy()
    print("OnDestroy")
end

function Quest77502:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77502:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77502:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7750201N16999Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc16999.alias, 3)
    this:RecycleAllRes()
end

function Quest77502:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77502:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77502:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77502:OnSubStart7750201(arg1)
    print("OnSubStart7750201")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 10, 7750201)
end

function Quest77502:OnSubFinish7750201(arg1)
    print("OnSubFinish7750201")
    this:NpcDestroyImmediately(3, npcs.Npc16999.alias)
end

return Quest77502
