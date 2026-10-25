require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76674 = class("Quest76674", QuestActorProxy)
Quest76674.defaultAlias = "Quest76674"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76674:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76674:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7667401"] = self.OnSubStart7667401}
end

function Quest76674:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7667401"] = self.OnSubFinish7667401}
end

function Quest76674:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76674:Start()
    print("Start")
end

function Quest76674:OnDestroy()
    print("OnDestroy")
end

function Quest76674:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76674:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76674:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76674:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76674:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76674:OnSubStart7667401(arg1)
    print("OnSubStart7667401")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7667401, 0, 10, 1, npcs.Npc1322.id)
    end)
end

function Quest76674:OnSubFinish7667401(arg1)
    print("OnSubFinish7667401")
    this:SafeDestroyQuestNpc(npcs.Npc1322.alias, 3)
end

return Quest76674
