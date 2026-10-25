require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77506 = class("Quest77506", QuestActorProxy)
Quest77506.defaultAlias = "Quest77506"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77506:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77506:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7750601"] = self.OnSubStart7750601}
end

function Quest77506:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7750601"] = self.OnSubFinish7750601}
end

function Quest77506:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77506:Start()
    print("Start")
end

function Quest77506:OnDestroy()
    print("OnDestroy")
end

function Quest77506:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77506:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77506:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7750601N1018Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 3)
    this:RecycleAllRes()
end

function Quest77506:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77506:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77506:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77506:OnSubStart7750601(arg1)
    print("OnSubStart7750601")
    this:NpcCreateWithNpcTrigger(npcs.Npc1018.id, 0, 8, 7750601)
end

function Quest77506:OnSubFinish7750601(arg1)
    print("OnSubFinish7750601")
    this:NpcDestroyWithDither(3, npcs.Npc1018.alias)
end

return Quest77506
