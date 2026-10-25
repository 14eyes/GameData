require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74512 = class("Quest74512", QuestActorProxy)
Quest74512.defaultAlias = "Quest74512"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74512:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74512:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7451201"] = self.OnSubStart7451201}
end

function Quest74512:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7451201"] = self.OnSubFinish7451201}
end

function Quest74512:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74512:Start()
    print("Start")
end

function Quest74512:OnDestroy()
    print("OnDestroy")
end

function Quest74512:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74512:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74512:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30509Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30534Data.alias, 3)
    actorMgr:DestroyEntityActor("Q74512Trigger", 3, false)
    this:CancelWeather()
end

function Quest74512:OnSubStart7451201(arg1)
    print("OnSubStart7451201")
    this:CreateQuestNpc(arg1, npcs.Npc30509Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30534Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30509Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    local v = this:GetQuestNpcActor(npcs.Npc30534Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q74512Trigger", "Actor/Gadget/Q74512Trigger", 70900002, 0, points.TPos_Q74512Trigger.pos, points.TPos_Q74512Trigger.rot, true, false, 3)
end

function Quest74512:OnSubFinish7451201(arg1)
    print("OnSubFinish7451201")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:GetQuestNpcActor(npcs.Npc30509Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc30534Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc30509Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30534Data.alias, 3)
        this:CancelWeather()
    end, nil, nil, 0, false, true)
end

return Quest74512
