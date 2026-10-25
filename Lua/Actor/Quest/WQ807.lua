require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest807 = class("Quest807", QuestActorProxy)
Quest807.defaultAlias = "Quest807"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest807:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest807:OnSubStartHandlerBuild()
    self.subStartHandlers = {["80701"] = self.OnSubStart80701}
end

function Quest807:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["80701"] = self.OnSubFinish80701}
end

function Quest807:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest807:Start()
    print("Start")
end

function Quest807:OnDestroy()
    print("OnDestroy")
end

function Quest807:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest807:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest807:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest807:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest807:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest807:OnSubStart80701(arg1)
    print("OnSubStart80701")
    this:CreateQuestNpc(arg1, npcs.Npc4019.id, 0, false, 0)
    this:NpcCreateWithNoBlack(npcs.Npc1318.id, 0, 5, 80701, true, 80701)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1045.id, 0, false, 0.5, nil)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4019.alias, 0)
    this:NpcWalkToTaskEasy(questNpcActor, {x = 2282.454, y = 224.005, z = -850.222}, nil)
    local v = this:GetQuestNpcActor(npcs.Npc1045.alias, 0)
    this:NpcWalkToTaskEasy(v, {x = 2282.502, y = 229.111, z = -850.206}, nil)
end

function Quest807:OnSubFinish80701(arg1)
    print("OnSubFinish80701")
    this:SafeDestroyQuestNpc(npcs.Npc4019.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
end

return Quest807
