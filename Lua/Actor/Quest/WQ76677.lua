require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76677 = class("Quest76677", QuestActorProxy)
Quest76677.defaultAlias = "Quest76677"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76677:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76677:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7667701"] = self.OnSubStart7667701}
end

function Quest76677:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7667701"] = self.OnSubFinish7667701}
end

function Quest76677:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76677:Start()
    print("Start")
end

function Quest76677:OnDestroy()
    print("OnDestroy")
end

function Quest76677:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76677:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76677:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76677:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76677:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76677:OnSubStart7667701(arg1)
    print("OnSubStart7667701")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7667701, 0, 15, 1, npcs.Npc1310.id)
    end)
end

function Quest76677:OnSubFinish7667701(arg1)
    print("OnSubFinish7667701")
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 3)
end

return Quest76677
