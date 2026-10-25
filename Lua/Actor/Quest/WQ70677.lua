require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70677 = class("Quest70677", QuestActorProxy)
Quest70677.defaultAlias = "Quest70677"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70677:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70677:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7067701"] = self.OnSubStart7067701}
end

function Quest70677:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7067701"] = self.OnSubFinish7067701}
end

function Quest70677:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70677:Start()
    print("Start")
end

function Quest70677:OnDestroy()
    print("OnDestroy")
end

function Quest70677:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70677:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70677:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70677:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest70677:OnSubStart7067701(arg1)
    print("OnSubStart7067701")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc9500Data.id, 7067701, 0, 40, 1, true)
    actorUtils.BanRoleCombatPos(1)
    actorUtils.BanRoleCombatPos(2)
    actorUtils.BanRoleCombatPos(3)
    actorUtils.BanRoleCombatPos(4)
end

function Quest70677:OnSubFinish7067701(arg1)
    print("OnSubFinish7067701")
    actorUtils.FreeRoleCombatPos(1)
    actorUtils.FreeRoleCombatPos(2)
    actorUtils.FreeRoleCombatPos(3)
    actorUtils.FreeRoleCombatPos(4)
    this:SafeDestroyQuestNpc(npcs.Npc9500Data.alias, 48000)
end

return Quest70677
