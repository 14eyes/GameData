require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76655 = class("Quest76655", QuestActorProxy)
Quest76655.defaultAlias = "Quest76655"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76655:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76655:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7665501"] = self.OnSubStart7665501}
end

function Quest76655:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7665501"] = self.OnSubFinish7665501}
end

function Quest76655:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76655:Start()
    print("Start")
end

function Quest76655:OnDestroy()
    print("OnDestroy")
end

function Quest76655:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76655:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76655:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76655:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76655:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76655:OnSubStart7665501(arg1)
    print("OnSubStart7665501")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7665501, 0, 15, 1, npcs.Npc1314.id)
    end)
end

function Quest76655:OnSubFinish7665501(arg1)
    print("OnSubFinish7665501")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
end

return Quest76655
