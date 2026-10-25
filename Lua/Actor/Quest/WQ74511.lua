require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74511 = class("Quest74511", QuestActorProxy)
Quest74511.defaultAlias = "Quest74511"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74511:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74511:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7451101"] = self.OnSubStart7451101}
end

function Quest74511:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7451101"] = self.OnSubFinish7451101}
end

function Quest74511:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74511:Start()
    print("Start")
end

function Quest74511:OnDestroy()
    print("OnDestroy")
end

function Quest74511:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74511:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74511:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30509Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30534Data.alias, 3)
    actorMgr:DestroyEntityActor("Q74511Trigger", 3, false)
    this:CancelWeather()
end

function Quest74511:OnSubStart7451101(arg1)
    print("OnSubStart7451101")
    this:CreateQuestNpc(arg1, npcs.Npc30509Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30534Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30509Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    local v = this:GetQuestNpcActor(npcs.Npc30534Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q74511Trigger", "Actor/Gadget/Q74511Trigger", 70900002, 0, points.TPos_Q74511Trigger.pos, points.TPos_Q74511Trigger.rot, true, false, 3)
end

function Quest74511:OnSubFinish7451101(arg1)
    print("OnSubFinish7451101")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:GetQuestNpcActor(npcs.Npc30509Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc30534Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc30509Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30534Data.alias, 3)
        this:CancelWeather()
    end, function(arg1)
        this:ShowTutorialDialog(1723)
    end, nil, 0, false, true)
end

return Quest74511
