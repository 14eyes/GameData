require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74137 = class("Quest74137", QuestActorProxy)
Quest74137.defaultAlias = "Quest74137"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74137:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74137:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7413701"] = self.OnSubStart7413701}
end

function Quest74137:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7413701"] = self.OnSubFinish7413701}
end

function Quest74137:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74137:Start()
    print("Start")
end

function Quest74137:OnDestroy()
    print("OnDestroy")
end

function Quest74137:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74137:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74137:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30420Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5133Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7413701N30420Trigger", 3, false)
end

function Quest74137:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74137:OnSubStart7413701(arg1)
    print("OnSubStart7413701")
    this:NpcCreateWithNpcTrigger(npcs.Npc30420Data.id, 7413701, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc5133Data.id, 0)
end

function Quest74137:OnSubFinish7413701(arg1)
    print("OnSubFinish7413701")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("CollectUnderwaterMainPage", 0)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc30420Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5133Data.alias, 3)
end

return Quest74137
