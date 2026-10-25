require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77510 = class("Quest77510", QuestActorProxy)
Quest77510.defaultAlias = "Quest77510"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77510:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77510:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7751001"] = self.OnSubStart7751001}
end

function Quest77510:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7751001"] = self.OnSubFinish7751001}
end

function Quest77510:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77510:Start()
    print("Start")
end

function Quest77510:OnDestroy()
    print("OnDestroy")
end

function Quest77510:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77510:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77510:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7751001N1089Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    this:RecycleAllRes()
end

function Quest77510:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77510:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77510:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77510:OnSubStart7751001(arg1)
    print("OnSubStart7751001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 8, 7751001)
end

function Quest77510:OnSubFinish7751001(arg1)
    print("OnSubFinish7751001")
    this:NpcDestroyWithDither(3, npcs.Npc1089.alias)
end

return Quest77510
