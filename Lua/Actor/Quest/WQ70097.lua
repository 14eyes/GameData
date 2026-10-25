require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70097 = class("Quest70097", QuestActorProxy)
Quest70097.defaultAlias = "Quest70097"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70097:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70097:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7009701"] = self.OnSubStart7009701, ["7009702"] = self.OnSubStart7009702}
end

function Quest70097:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7009701"] = self.OnSubFinish7009701, ["7009702"] = self.OnSubFinish7009702}
end

function Quest70097:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70097:Start()
    print("Start")
end

function Quest70097:OnDestroy()
    print("OnDestroy")
end

function Quest70097:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70097:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70097:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70097:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70097:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70097:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70097:OnSubStart7009701(arg1)
    print("OnSubStart7009701")
    this:CreateQuestNpc(arg1, npcs.Npc1825.id, 0, false, 0)
end

function Quest70097:OnSubFinish7009701(arg1)
    print("OnSubFinish7009701")
    this:NpcDestroyImmediately(103, npcs.Npc1825.alias)
end

function Quest70097:OnSubStart7009702(arg1)
    print("OnSubStart7009702")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7009702, 0, 30, 1, npcs.Npc1825.id)
end

function Quest70097:OnSubFinish7009702(arg1)
    print("OnSubFinish7009702")
    this:NpcDestroyImmediately(103, npcs.Npc1825.alias)
end

return Quest70097
