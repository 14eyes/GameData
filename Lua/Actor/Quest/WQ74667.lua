require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74667 = class("Quest74667", QuestActorProxy)
Quest74667.defaultAlias = "Quest74667"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74667:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74667:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466701"] = self.OnSubStart7466701}
end

function Quest74667:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466701"] = self.OnSubFinish7466701}
end

function Quest74667:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74667:Start()
    print("Start")
end

function Quest74667:OnDestroy()
    print("OnDestroy")
end

function Quest74667:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74667:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74667:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74667:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74667:OnSubStart7466701(arg1)
    print("OnSubStart7466701")
    this:CreateQuestNpc(arg1, npcs.Npc5031Data.id, 1)
end

function Quest74667:OnSubFinish7466701(arg1)
    print("OnSubFinish7466701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5031Data.alias)
end

return Quest74667
