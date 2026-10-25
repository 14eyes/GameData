require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76208 = class("Quest76208", QuestActorProxy)
Quest76208.defaultAlias = "Quest76208"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76208:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76208:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7620801"] = self.OnSubStart7620801}
end

function Quest76208:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7620801"] = self.OnSubFinish7620801}
end

function Quest76208:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76208:Start()
    print("Start")
end

function Quest76208:OnDestroy()
    print("OnDestroy")
end

function Quest76208:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76208:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76208:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76208:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76208:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76208:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76208:OnSubStart7620801(arg1)
    print("OnSubStart7620801")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7620801, 0, 50, 1, npcs.Paimon.id)
end

function Quest76208:OnSubFinish7620801(arg1)
    print("OnSubFinish7620801")
    this:NpcDestroyImmediately(102, npcs.Paimon.alias)
end

return Quest76208
