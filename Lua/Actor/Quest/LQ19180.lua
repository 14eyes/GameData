require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19180 = class("Quest19180", QuestActorProxy)
Quest19180.defaultAlias = "Quest19180"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest19180:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest19180:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1918002"] = self.OnSubStart1918002, ["1918001"] = self.OnSubStart1918001}
end

function Quest19180:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1918002"] = self.OnSubFinish1918002, ["1918001"] = self.OnSubFinish1918001}
end

function Quest19180:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19180:Start()
    print("Start")
end

function Quest19180:OnDestroy()
    print("OnDestroy")
end

function Quest19180:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19180:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19180:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13942Data.alias, 3)
    actorMgr:DestroyEntityActor("Q1918001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918002Trigger", 3, false)
end

function Quest19180:OnSubStart1918002(arg1)
    print("OnSubStart1918002")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918002)
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13942Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918002Trigger", "Actor/Gadget/Q1918002Trigger", 70900002, 0, points.TPos_Q1918002Trigger.pos, points.TPos_Q1918002Trigger.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc518Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
end

function Quest19180:OnSubFinish1918002(arg1)
    print("OnSubFinish1918002")
end

function Quest19180:OnSubStart1918001(arg1)
    print("OnSubStart1918001")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918001)
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13942Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918001Trigger", "Actor/Gadget/Q1918001Trigger", 70900002, 0, points.TPos_Q1918001Trigger.pos, points.TPos_Q1918001Trigger.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc518Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13942Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
end

function Quest19180:OnSubFinish1918001(arg1)
    print("OnSubFinish1918001")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13942Data.alias, 3)
end

return Quest19180
