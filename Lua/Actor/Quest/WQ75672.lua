require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75672 = class("Quest75672", QuestActorProxy)
Quest75672.defaultAlias = "Quest75672"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75672:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75672:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7567201"] = self.OnSubStart7567201}
end

function Quest75672:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7567201"] = self.OnSubFinish7567201}
end

function Quest75672:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75672:Start()
    print("Start")
end

function Quest75672:OnDestroy()
    print("OnDestroy")
end

function Quest75672:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75672:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75672:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7567201N31057Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc31057.alias, 3)
    this:RecycleAllRes()
end

function Quest75672:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75672:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75672:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75672:OnSubStart7567201(arg1)
    print("OnSubStart7567201")
    this:NpcCreateWithNpcTrigger(npcs.Npc31057.id, 0, 7, 7567201)
end

function Quest75672:OnSubFinish7567201(arg1)
    print("OnSubFinish7567201")
    this:NpcDestroyImmediately(3, npcs.Npc31057.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2618, nil)
    end)
end

return Quest75672
