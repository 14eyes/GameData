require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40216 = class("Quest40216", QuestActorProxy)
Quest40216.defaultAlias = "Quest40216"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest40216:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest40216:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4021601"] = self.OnSubStart4021601}
end

function Quest40216:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4021601"] = self.OnSubFinish4021601}
end

function Quest40216:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40216:Start()
    print("Start")
end

function Quest40216:OnDestroy()
    print("OnDestroy")
end

function Quest40216:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40216:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40216:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc15897.alias, 3)
    this:DestroyNpcTrigger("Q4021601N15897Trigger")
end

function Quest40216:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40216:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40216:OnSubStart4021601(arg1)
    print("OnSubStart4021601")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4021601, 0, 5, 0, npcs.Npc15897.id)
end

function Quest40216:OnSubFinish4021601(arg1)
    print("OnSubFinish4021601")
    this:SafeDestroyQuestNpc(npcs.Npc15897.alias, 3)
end

return Quest40216
