require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77507 = class("Quest77507", QuestActorProxy)
Quest77507.defaultAlias = "Quest77507"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77507:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77507:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7750701"] = self.OnSubStart7750701}
end

function Quest77507:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7750701"] = self.OnSubFinish7750701}
end

function Quest77507:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77507:Start()
    print("Start")
end

function Quest77507:OnDestroy()
    print("OnDestroy")
end

function Quest77507:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77507:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77507:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7750701N10204Trigger")
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:RecycleAllRes()
end

function Quest77507:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77507:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77507:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77507:OnSubStart7750701(arg1)
    print("OnSubStart7750701")
    this:NpcCreateWithNpcTrigger(npcs.Xiao.id, 0, 5, 7750701)
end

function Quest77507:OnSubFinish7750701(arg1)
    print("OnSubFinish7750701")
    this:NpcDestroyWithDither(3, npcs.Xiao.alias)
end

return Quest77507
