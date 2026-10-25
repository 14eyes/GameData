require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24007 = class("Quest24007", QuestActorProxy)
Quest24007.defaultAlias = "Quest24007"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest24007:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest24007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400701"] = self.OnSubStart2400701,
        ["2400702"] = self.OnSubStart2400702,
        ["2400703"] = self.OnSubStart2400703,
        ["2400704"] = self.OnSubStart2400704,
        ["2400705"] = self.OnSubStart2400705,
        ["2400706"] = self.OnSubStart2400706
    }
end

function Quest24007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400701"] = self.OnSubFinish2400701,
        ["2400702"] = self.OnSubFinish2400702,
        ["2400703"] = self.OnSubFinish2400703,
        ["2400704"] = self.OnSubFinish2400704,
        ["2400705"] = self.OnSubFinish2400705,
        ["2400706"] = self.OnSubFinish2400706
    }
end

function Quest24007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24007:Start()
    print("Start")
end

function Quest24007:OnDestroy()
    print("OnDestroy")
end

function Quest24007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24007:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21055Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21056Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21057Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5021Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5062Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5063Data.alias, 0, true)
    this:RemoveLocalGadget(707111119, "1")
    this:RemoveLocalGadget(707111119, "2")
    this:RemoveLocalGadget(707111119, "3")
    actorMgr:DestroyEntityActor("Q2400706Trigger", 3, false)
end

function Quest24007:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest24007:OnSubStart2400701(arg1)
    print("OnSubStart2400701")
    this:CreateQuestNpc(arg1, npcs.Npc5021Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5021Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24007:OnSubFinish2400701(arg1)
    print("OnSubFinish2400701")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
        this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    end, nil, nil, 0, false, true)
end

function Quest24007:OnSubStart2400702(arg1)
    print("OnSubStart2400702")
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc21055Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:CreateLocalGadget(707111119, "1", points.NewTransfrom.pos, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
end

function Quest24007:OnSubFinish2400702(arg1)
    print("OnSubFinish2400702")
    this:RemoveLocalGadget(707111119, "1")
    this:SafeDestroyQuestNpc(npcs.Npc21055Data.alias, 3)
end

function Quest24007:OnSubStart2400703(arg1)
    print("OnSubStart2400703")
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc21056Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:CreateLocalGadget(707111119, "2", points.NewTransfrom_01.pos, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
end

function Quest24007:OnSubFinish2400703(arg1)
    print("OnSubFinish2400703")
    this:RemoveLocalGadget(707111119, "2")
    this:SafeDestroyQuestNpc(npcs.Npc21056Data.alias, 3)
end

function Quest24007:OnSubStart2400704(arg1)
    print("OnSubStart2400704")
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc21057Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:CreateLocalGadget(707111119, "3", points.NewTransfrom_02.pos, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
end

function Quest24007:OnSubFinish2400704(arg1)
    print("OnSubFinish2400704")
    this:RemoveLocalGadget(707111119, "3")
    this:SafeDestroyQuestNpc(npcs.Npc21057Data.alias, 3)
end

function Quest24007:OnSubStart2400705(arg1)
    print("OnSubStart2400705")
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
end

function Quest24007:OnSubFinish2400705(arg1)
    print("OnSubFinish2400705")
    this:TransmitPlayerById(arg1, 1)
end

function Quest24007:OnSubStart2400706(arg1)
    print("OnSubStart2400706")
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2400706Trigger", "Actor/Gadget/Q2400706Trigger", 70900002, 0, points.TPos_Q2400706Trigger.pos, points.TPos_Q2400706Trigger.rot, true, false, 3)
end

function Quest24007:OnSubFinish2400706(arg1)
    print("OnSubFinish2400706")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
    end, nil, nil, 0, false, true)

    this:LightNotifyTo(npcs.Npc5063Data.alias, 0, true)
end

return Quest24007
