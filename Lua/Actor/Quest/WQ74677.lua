require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74677 = class("Quest74677", QuestActorProxy)
Quest74677.defaultAlias = "Quest74677"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74677:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74677:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7467701"] = self.OnSubStart7467701}
end

function Quest74677:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7467701"] = self.OnSubFinish7467701}
end

function Quest74677:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74677:Start()
    print("Start")
end

function Quest74677:OnDestroy()
    print("OnDestroy")
end

function Quest74677:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74677:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74677:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30483Data.alias, 3)
end

function Quest74677:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74677:OnSubStart7467701(arg1)
    print("OnSubStart7467701")
    this:CreateQuestNpc(arg1, npcs.Npc30483Data.id, 0)
end

function Quest74677:OnSubFinish7467701(arg1)
    print("OnSubFinish7467701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30483Data.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1662)
    end)
end

return Quest74677
