require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75304 = class("Quest75304", QuestActorProxy)
Quest75304.defaultAlias = "Quest75304"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75304:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75304:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7530401"] = self.OnSubStart7530401}
end

function Quest75304:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7530401"] = self.OnSubFinish7530401}
end

function Quest75304:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75304:Start()
    print("Start")
end

function Quest75304:OnDestroy()
    print("OnDestroy")
end

function Quest75304:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75304:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75304:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7530401N31169Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc31169.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31170.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31171.alias, 3)
    this:RecycleAllRes()
end

function Quest75304:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75304:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75304:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75304:OnSubStart7530401(arg1)
    print("OnSubStart7530401")
    this:NpcCreateWithNpcTrigger(npcs.Npc31169.id, 0, 8, 7530401)
    this:CreateQuestNpc(arg1, npcs.Npc31170.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31171.id, 0, false, 0)
end

function Quest75304:OnSubFinish7530401(arg1)
    print("OnSubFinish7530401")
    this:NpcDestroyImmediately(3, npcs.Npc31169.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31170.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31171.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2890, nil)
    end)
end

return Quest75304
