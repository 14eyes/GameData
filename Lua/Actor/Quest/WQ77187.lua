require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77187 = class("Quest77187", QuestActorProxy)
Quest77187.defaultAlias = "Quest77187"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77187:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77187:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7718701"] = self.OnSubStart7718701}
end

function Quest77187:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7718701"] = self.OnSubFinish7718701}
end

function Quest77187:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77187:Start()
    print("Start")
end

function Quest77187:OnDestroy()
    print("OnDestroy")
end

function Quest77187:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77187:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77187:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77187:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77187:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77187:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77187:OnSubStart7718701(arg1)
    print("OnSubStart7718701")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7718701, 0, 30, 0.5, npcs.Npc1335.id)
        this:DeployStoryByQuest(147718700)
    end)
end

function Quest77187:OnSubFinish7718701(arg1)
    print("OnSubFinish7718701")
    this:NpcDestroyImmediately(3, npcs.Npc1335.alias)
    this:CancelAllStory()
end

return Quest77187
