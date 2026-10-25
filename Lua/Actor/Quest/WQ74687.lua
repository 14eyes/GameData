require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74687 = class("Quest74687", QuestActorProxy)
Quest74687.defaultAlias = "Quest74687"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74687:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74687:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7468701"] = self.OnSubStart7468701}
end

function Quest74687:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7468701"] = self.OnSubFinish7468701}
end

function Quest74687:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74687:Start()
    print("Start")
end

function Quest74687:OnDestroy()
    print("OnDestroy")
end

function Quest74687:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74687:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74687:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30534.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30509.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30839.alias, 3)
end

function Quest74687:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74687:OnSubStart7468701(arg1)
    print("OnSubStart7468701")
    this:CreateQuestNpc(arg1, npcs.Npc30534.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30509.alias, 74687):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30839.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30839.alias, 74687):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74687:OnSubFinish7468701(arg1)
    print("OnSubFinish7468701")
    this:SafeDestroyQuestNpc(npcs.Npc30534.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30509.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30839.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2236, nil)
    end)
end

return Quest74687
