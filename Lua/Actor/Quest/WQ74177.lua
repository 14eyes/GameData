require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74177 = class("Quest74177", QuestActorProxy)
Quest74177.defaultAlias = "Quest74177"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74177:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74177:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7417701"] = self.OnSubStart7417701}
end

function Quest74177:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7417701"] = self.OnSubFinish7417701}
end

function Quest74177:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74177:Start()
    print("Start")
end

function Quest74177:OnDestroy()
    print("OnDestroy")
end

function Quest74177:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74177:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74177:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74177:OnSubStart7417701(arg1)
    print("OnSubStart7417701")
    this:CreateQuestNpc(arg1, npcs.Npc5218Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5218Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5214Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5214Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5252Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5252Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q74177Trigger", "Actor/Gadget/Q74177Trigger", 70900002, 0, points.TPos_Q74177Trigger.pos, points.TPos_Q74177Trigger.rot, true, false, 3)
end

function Quest74177:OnSubFinish7417701(arg1)
    print("OnSubFinish7417701")
    this:SafeDestroyQuestNpc(npcs.Npc5218Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5214Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5252Data.alias, 3)
end

return Quest74177
