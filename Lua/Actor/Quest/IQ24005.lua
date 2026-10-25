require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24005 = class("Quest24005", QuestActorProxy)
Quest24005.defaultAlias = "Quest24005"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest24005:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest24005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400501"] = self.OnSubStart2400501,
        ["2400502"] = self.OnSubStart2400502,
        ["2400503"] = self.OnSubStart2400503,
        ["2400504"] = self.OnSubStart2400504,
        ["2400505"] = self.OnSubStart2400505,
        ["2400506"] = self.OnSubStart2400506
    }
end

function Quest24005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400501"] = self.OnSubFinish2400501,
        ["2400502"] = self.OnSubFinish2400502,
        ["2400503"] = self.OnSubFinish2400503,
        ["2400504"] = self.OnSubFinish2400504,
        ["2400505"] = self.OnSubFinish2400505,
        ["2400506"] = self.OnSubFinish2400506
    }
end

function Quest24005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24005:Start()
    print("Start")
end

function Quest24005:OnDestroy()
    print("OnDestroy")
end

function Quest24005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24005:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5057Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5021Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5063Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5062Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2400501Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q2400502Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400503Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400504Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400506Trigger", 3, false)
end

function Quest24005:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest24005:OnSubStart2400501(arg1)
    print("OnSubStart2400501")
    this:CreateQuestNpc(arg1, npcs.Npc5021Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc5063Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc5021Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24005:OnSubFinish2400501(arg1)
    print("OnSubFinish2400501")
    this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
end

function Quest24005:OnSubStart2400502(arg1)
    print("OnSubStart2400502")
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2400502Trigger", "Actor/Gadget/Q2400502Trigger", 70900002, 0, points.TPos_Q2400502Trigger.pos, points.TPos_Q2400502Trigger.rot, true, false, 3)
end

function Quest24005:OnSubFinish2400502(arg1)
    print("OnSubFinish2400502")
    this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
end

function Quest24005:OnSubStart2400503(arg1)
    print("OnSubStart2400503")
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2400503Trigger", "Actor/Gadget/Q2400503Trigger", 70900002, 0, points.TPos_Q2400503Trigger.pos, points.TPos_Q2400503Trigger.rot, true, false, 3)
end

function Quest24005:OnSubFinish2400503(arg1)
    print("OnSubFinish2400503")
    this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
end

function Quest24005:OnSubStart2400504(arg1)
    print("OnSubStart2400504")
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5057Data.id, 2)
    actorMgr:CreateActorWithPos("Q2400504Trigger", "Actor/Gadget/Q2400504Trigger", 70900002, 0, points.TPos_Q2400504Trigger.pos, points.TPos_Q2400504Trigger.rot, true, false, 3)
end

function Quest24005:OnSubFinish2400504(arg1)
    print("OnSubFinish2400504")
end

function Quest24005:OnSubStart2400505(arg1)
    print("OnSubStart2400505")
    this:CreateQuestNpc(arg1, npcs.Npc5021Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc5063Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc5021Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24005:OnSubFinish2400505(arg1)
    print("OnSubFinish2400505")
end

function Quest24005:OnSubStart2400506(arg1)
    print("OnSubStart2400506")
    actorMgr:CreateActorWithPos("Q2400506Trigger", "Actor/Gadget/Q2400506Trigger", 70900002, 0, points.TPos_Q2400506Trigger.pos, points.TPos_Q2400506Trigger.rot, true, false, 3)
end

function Quest24005:OnSubFinish2400506(arg1)
    print("OnSubFinish2400506")
    this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5057Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
end

return Quest24005
