require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74513 = class("Quest74513", QuestActorProxy)
Quest74513.defaultAlias = "Quest74513"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74513:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74513:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7451301"] = self.OnSubStart7451301}
end

function Quest74513:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7451301"] = self.OnSubFinish7451301}
end

function Quest74513:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74513:Start()
    print("Start")
end

function Quest74513:OnDestroy()
    print("OnDestroy")
end

function Quest74513:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74513:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74513:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30566Data.alias, 3)
end

function Quest74513:OnSubStart7451301(arg1)
    print("OnSubStart7451301")
    this:CreateQuestNpc(arg1, npcs.Npc30566Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30566Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest74513:OnSubFinish7451301(arg1)
    print("OnSubFinish7451301")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc30566Data.alias, 3)
    end, function(arg1)
        actorUtils.ShowContext("BirdBallLevelSelectionPage", 0)
    end, nil, 0, false, true)
end

return Quest74513
