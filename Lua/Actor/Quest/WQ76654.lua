require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76654 = class("Quest76654", QuestActorProxy)
Quest76654.defaultAlias = "Quest76654"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76654:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76654:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7665401"] = self.OnSubStart7665401}
end

function Quest76654:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7665401"] = self.OnSubFinish7665401}
end

function Quest76654:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76654:Start()
    print("Start")
end

function Quest76654:OnDestroy()
    print("OnDestroy")
end

function Quest76654:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76654:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76654:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76654:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76654:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76654:OnSubStart7665401(arg1)
    print("OnSubStart7665401")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7665401, 0, 20, 1, npcs.Npc1315.id)
    end)
end

function Quest76654:OnSubFinish7665401(arg1)
    print("OnSubFinish7665401")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
end

return Quest76654
