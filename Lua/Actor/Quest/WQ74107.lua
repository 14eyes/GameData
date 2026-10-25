require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74107 = class("Quest74107", QuestActorProxy)
Quest74107.defaultAlias = "Quest74107"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74107:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74107:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7410701"] = self.OnSubStart7410701}
end

function Quest74107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7410701"] = self.OnSubFinish7410701}
end

function Quest74107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74107:Start()
    print("Start")
end

function Quest74107:OnDestroy()
    print("OnDestroy")
end

function Quest74107:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74107:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74107:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74107:OnSubStart7410701(arg1)
    print("OnSubStart7410701")
    this:CreateQuestNpc(arg1, npcs.Npc5131Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc5131Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5132Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc5132Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest74107:OnSubFinish7410701(arg1)
    print("OnSubFinish7410701")
    this:SafeDestroyQuestNpc(npcs.Npc5131Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5132Data.alias, 3)
end

return Quest74107
