require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77508 = class("Quest77508", QuestActorProxy)
Quest77508.defaultAlias = "Quest77508"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77508:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77508:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7750801"] = self.OnSubStart7750801}
end

function Quest77508:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7750801"] = self.OnSubFinish7750801}
end

function Quest77508:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77508:Start()
    print("Start")
end

function Quest77508:OnDestroy()
    print("OnDestroy")
end

function Quest77508:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77508:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77508:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7750801N1034Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:RecycleAllRes()
end

function Quest77508:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77508:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77508:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77508:OnSubStart7750801(arg1)
    print("OnSubStart7750801")
    this:NpcCreateWithNpcTrigger(npcs.Npc1034.id, 0, 8, 7750801)
end

function Quest77508:OnSubFinish7750801(arg1)
    print("OnSubFinish7750801")
    this:NpcDestroyWithDither(3, npcs.Npc1034.alias)
end

return Quest77508
