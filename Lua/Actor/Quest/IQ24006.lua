require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24006 = class("Quest24006", QuestActorProxy)
Quest24006.defaultAlias = "Quest24006"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest24006:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest24006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400601"] = self.OnSubStart2400601,
        ["2400602"] = self.OnSubStart2400602,
        ["2400603"] = self.OnSubStart2400603,
        ["2400604"] = self.OnSubStart2400604,
        ["2400605"] = self.OnSubStart2400605,
        ["2400606"] = self.OnSubStart2400606
    }
end

function Quest24006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400601"] = self.OnSubFinish2400601,
        ["2400602"] = self.OnSubFinish2400602,
        ["2400603"] = self.OnSubFinish2400603,
        ["2400604"] = self.OnSubFinish2400604,
        ["2400605"] = self.OnSubFinish2400605,
        ["2400606"] = self.OnSubFinish2400606
    }
end

function Quest24006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24006:Start()
    print("Start")
end

function Quest24006:OnDestroy()
    print("OnDestroy")
end

function Quest24006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24006:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5062Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5063Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5021Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2400602Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400603Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400604Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400606Trigger", 3, false)
    this:ClearSpeechBubbleTask()
end

function Quest24006:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest24006:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24006:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest24006:OnSubStart2400601(arg1)
    print("OnSubStart2400601")
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5063Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5021Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5021Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24006:OnSubFinish2400601(arg1)
    print("OnSubFinish2400601")
    this:DestroyQuestNpcActor(npcs.Npc5062Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5063Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5021Data.alias, 3)
end

function Quest24006:OnSubStart2400602(arg1)
    print("OnSubStart2400602")
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q2400602Trigger", "Actor/Gadget/Q2400602Trigger", 70900002, 0, points.TPos_Q2400602Trigger.pos, points.TPos_Q2400602Trigger.rot, true, false, 3)
    actorMgr:GetActor("24006"):CreateSpeechBubbleTask(npcs.Npc5062Data.id, 240069904, 4, true, 5, 6, true)
end

function Quest24006:OnSubFinish2400602(arg1)
    print("OnSubFinish2400602")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5062Data.alias)
    this:ActorDestroy("Q2400602Trigger")
    this:ClearNarratorTask()
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
end

function Quest24006:OnSubStart2400603(arg1)
    print("OnSubStart2400603")
    this:CreateQuestNpc(arg1, npcs.Npc5063Data.id, 0)
    actorMgr:CreateActorWithPos("Q2400603Trigger", "Actor/Gadget/Q2400603Trigger", 70900002, 0, points.TPos_Q2400603Trigger.pos, points.TPos_Q2400603Trigger.rot, true, false, 3)
end

function Quest24006:OnSubFinish2400603(arg1)
    print("OnSubFinish2400603")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5063Data.alias)
    this:ActorDestroy("Q2400603Trigger")
    this:ClearNarratorTask()
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
end

function Quest24006:OnSubStart2400604(arg1)
    print("OnSubStart2400604")
    this:CreateQuestNpc(arg1, npcs.Npc5021Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5021Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q2400604Trigger", "Actor/Gadget/Q2400604Trigger", 70900002, 0, points.TPos_Q2400604Trigger.pos, points.TPos_Q2400604Trigger.rot, true, false, 3)
    actorMgr:GetActor("24006"):CreateSpeechBubbleTask(npcs.Npc5021Data.id, 240069905, 4, true, 5, 6, true)
end

function Quest24006:OnSubFinish2400604(arg1)
    print("OnSubFinish2400604")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5021Data.alias)
    this:ActorDestroy("Q2400604Trigger")
    this:ClearNarratorTask()
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
end

function Quest24006:OnSubStart2400605(arg1)
    print("OnSubStart2400605")
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
end

function Quest24006:OnSubFinish2400605(arg1)
    print("OnSubFinish2400605")
    this:TransmitPlayerByQuestId(2400605, 1)
end

function Quest24006:OnSubStart2400606(arg1)
    print("OnSubStart2400606")
    actorMgr:CreateActorWithPos("Q2400606Trigger", "Actor/Gadget/Q2400606Trigger", 70900002, 0, points.TPos_Q2400606Trigger.pos, points.TPos_Q2400606Trigger.rot, true, false, 3)
end

function Quest24006:OnSubFinish2400606(arg1)
    print("OnSubFinish2400606")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5062Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
end

return Quest24006
