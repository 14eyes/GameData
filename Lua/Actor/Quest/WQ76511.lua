require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76511 = class("Quest76511", QuestActorProxy)
Quest76511.defaultAlias = "Quest76511"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76511:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76511:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7651101"] = self.OnSubStart7651101}
end

function Quest76511:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7651101"] = self.OnSubFinish7651101}
end

function Quest76511:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76511:Start()
    print("Start")
end

function Quest76511:OnDestroy()
    print("OnDestroy")
end

function Quest76511:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76511:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76511:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7651101N31059Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc31059.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31062.alias, 3)
    this:RecycleAllRes()
end

function Quest76511:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76511:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76511:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76511:OnSubStart7651101(arg1)
    print("OnSubStart7651101")
    this:NpcCreateWithNpcTrigger(npcs.Npc31059.id, 0, 15, 7651101)
    this:CreateQuestNpc(arg1, npcs.Npc31062.id, 0, false, 0)
end

function Quest76511:OnSubFinish7651101(arg1)
    print("OnSubFinish7651101")
    this:NpcDestroyImmediately(3, npcs.Npc31059.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31062.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2675, nil)
    end)
end

return Quest76511
