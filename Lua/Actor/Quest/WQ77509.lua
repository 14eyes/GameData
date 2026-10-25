require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77509 = class("Quest77509", QuestActorProxy)
Quest77509.defaultAlias = "Quest77509"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77509:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77509:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7750901"] = self.OnSubStart7750901}
end

function Quest77509:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7750901"] = self.OnSubFinish7750901}
end

function Quest77509:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77509:Start()
    print("Start")
end

function Quest77509:OnDestroy()
    print("OnDestroy")
end

function Quest77509:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77509:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77509:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7750901N1052Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1052.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:RecycleAllRes()
end

function Quest77509:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77509:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77509:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77509:OnSubStart7750901(arg1)
    print("OnSubStart7750901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1052.id, 0, 8, 7750901)
    this:CreateQuestNpc(arg1, npcs.Npc1059.id, 0, false, 0)
end

function Quest77509:OnSubFinish7750901(arg1)
    print("OnSubFinish7750901")
    this:NpcDestroyWithDither(3, npcs.Npc1052.alias)
    this:NpcDestroyWithDither(3, npcs.Npc1059.alias)
end

return Quest77509
