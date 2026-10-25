require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73714 = class("Quest73714", QuestActorProxy)
Quest73714.defaultAlias = "Quest73714"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest73714:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest73714:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7371401"] = self.OnSubStart7371401}
end

function Quest73714:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7371401"] = self.OnSubFinish7371401}
end

function Quest73714:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73714:Start()
    print("Start")
end

function Quest73714:OnDestroy()
    print("OnDestroy")
end

function Quest73714:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73714:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73714:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7371401N30969Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc30969.alias, 3)
    this:RecycleAllRes()
end

function Quest73714:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest73714:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest73714:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest73714:OnSubStart7371401(arg1)
    print("OnSubStart7371401")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7371401, 0, 10, 1, npcs.Npc30969.id)
end

function Quest73714:OnSubFinish7371401(arg1)
    print("OnSubFinish7371401")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30969.alias)
end

return Quest73714
