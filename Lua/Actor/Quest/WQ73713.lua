require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73713 = class("Quest73713", QuestActorProxy)
Quest73713.defaultAlias = "Quest73713"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest73713:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest73713:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7371301"] = self.OnSubStart7371301}
end

function Quest73713:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7371301"] = self.OnSubFinish7371301}
end

function Quest73713:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73713:Start()
    print("Start")
end

function Quest73713:OnDestroy()
    print("OnDestroy")
end

function Quest73713:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73713:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73713:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7371301N30969Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc30969.alias, 3)
    this:RecycleAllRes()
end

function Quest73713:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest73713:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest73713:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest73713:OnSubStart7371301(arg1)
    print("OnSubStart7371301")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7371301, 0, 10, 1, npcs.Npc30969.id)
end

function Quest73713:OnSubFinish7371301(arg1)
    print("OnSubFinish7371301")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30969.alias)
end

return Quest73713
