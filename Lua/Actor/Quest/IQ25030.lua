require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25030 = class("Quest25030", QuestActorProxy)
Quest25030.defaultAlias = "Quest25030"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest25030:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest25030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2503001"] = self.OnSubStart2503001,
        ["2503002"] = self.OnSubStart2503002,
        ["2503003"] = self.OnSubStart2503003,
        ["2503004"] = self.OnSubStart2503004,
        ["2503005"] = self.OnSubStart2503005,
        ["2503006"] = self.OnSubStart2503006,
        ["2503007"] = self.OnSubStart2503007,
        ["2503008"] = self.OnSubStart2503008,
        ["2503009"] = self.OnSubStart2503009,
        ["2503010"] = self.OnSubStart2503010,
        ["2503011"] = self.OnSubStart2503011,
        ["2503012"] = self.OnSubStart2503012
    }
end

function Quest25030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2503001"] = self.OnSubFinish2503001,
        ["2503002"] = self.OnSubFinish2503002,
        ["2503003"] = self.OnSubFinish2503003,
        ["2503004"] = self.OnSubFinish2503004,
        ["2503005"] = self.OnSubFinish2503005,
        ["2503006"] = self.OnSubFinish2503006,
        ["2503007"] = self.OnSubFinish2503007,
        ["2503008"] = self.OnSubFinish2503008,
        ["2503009"] = self.OnSubFinish2503009,
        ["2503010"] = self.OnSubFinish2503010,
        ["2503011"] = self.OnSubFinish2503011,
        ["2503012"] = self.OnSubFinish2503012
    }
end

function Quest25030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25030:Start()
    print("Start")
end

function Quest25030:OnDestroy()
    print("OnDestroy")
end

function Quest25030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25030:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc6087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14366.alias, 3)
    this:LightNotifyTo(npcs.Npc6088.alias, 0, true)
    this:ActorDestroy("Q2503005Trigger")
    this:ActorDestroy("Q2503008Trigger")
    this:DestroyNpcTrigger("Q2503001N6087Trigger")
    this:DestroyNpcTrigger("Q2503003N6087Trigger")
    this:DestroyNpcTrigger("Q2503006N6087Trigger")
    this:DestroyNpcTrigger("Q2503010N6087Trigger")
    this:DestroyNpcTrigger("Q2503012N6087Trigger")
end

function Quest25030:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest25030:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest25030:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest25030:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest25030:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest25030:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest25030:OnSubStart2503001(arg1)
    print("OnSubStart2503001")
    this:NpcCreateWithNpcTrigger(npcs.Npc6087.id, 0, 8, 2503001)
    this:CreateQuestNpc(arg1, npcs.Npc6088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14366.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DoFreeStyle(5010, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(true)
end

function Quest25030:OnSubFinish2503001(arg1)
    print("OnSubFinish2503001")
    this:SafeDestroyQuestNpc(npcs.Npc6087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14366.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(false)
    end)
end

function Quest25030:OnSubStart2503002(arg1)
    print("OnSubStart2503002")
end

function Quest25030:OnSubFinish2503002(arg1)
    print("OnSubFinish2503002")
end

function Quest25030:OnSubStart2503003(arg1)
    print("OnSubStart2503003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2503003, 0, 15, 2, npcs.Npc6087.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
end

function Quest25030:OnSubFinish2503003(arg1)
    print("OnSubFinish2503003")
end

function Quest25030:OnSubStart2503004(arg1)
    print("OnSubStart2503004")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6087.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14366.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6088.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DoFreeStyle(1240, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(true)
    end)
end

function Quest25030:OnSubFinish2503004(arg1)
    print("OnSubFinish2503004")
end

function Quest25030:OnSubStart2503005(arg1)
    print("OnSubStart2503005")
    actorMgr:CreateActorWithPos("Q2503005Trigger", "Actor/Gadget/Q2503005Trigger", 70900002, 0, points.Point.pos, points.Point.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DoFreeStyle(1240, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(true)
    end)
end

function Quest25030:OnSubFinish2503005(arg1)
    print("OnSubFinish2503005")
    this:SafeDestroyQuestNpc(npcs.Npc6087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14366.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(false)
        this:LightNotifyTo(npcs.Npc6088.alias, 0, true)
    end)
end

function Quest25030:OnSubStart2503006(arg1)
    print("OnSubStart2503006")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2503006, 0, 15, 2, npcs.Npc6087.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
end

function Quest25030:OnSubFinish2503006(arg1)
    print("OnSubFinish2503006")
end

function Quest25030:OnSubStart2503007(arg1)
    print("OnSubStart2503007")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6087.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14366.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6088.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DoFreeStyle(1240, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(true)
    end)
end

function Quest25030:OnSubFinish2503007(arg1)
    print("OnSubFinish2503007")
end

function Quest25030:OnSubStart2503008(arg1)
    print("OnSubStart2503008")
    actorMgr:CreateActorWithPos("Q2503008Trigger", "Actor/Gadget/Q2503008Trigger", 70900002, 0, points._Q2503008TriggerPoint_.pos, points._Q2503008TriggerPoint_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DoFreeStyle(1240, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(true)
    end)
end

function Quest25030:OnSubFinish2503008(arg1)
    print("OnSubFinish2503008")
    this:SafeDestroyQuestNpc(npcs.Npc6087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14366.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(false)
        this:LightNotifyTo(npcs.Npc6088.alias, 0, true)
    end)
end

function Quest25030:OnSubStart2503009(arg1)
    print("OnSubStart2503009")
end

function Quest25030:OnSubFinish2503009(arg1)
    print("OnSubFinish2503009")
end

function Quest25030:OnSubStart2503010(arg1)
    print("OnSubStart2503010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2503010, 0, 8, 2, npcs.Npc6087.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
end

function Quest25030:OnSubFinish2503010(arg1)
    print("OnSubFinish2503010")
end

function Quest25030:OnSubStart2503011(arg1)
    print("OnSubStart2503011")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6087.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14366.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6088.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DoFreeStyle(1240, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(true)
    end)
end

function Quest25030:OnSubFinish2503011(arg1)
    print("OnSubFinish2503011")
end

function Quest25030:OnSubStart2503012(arg1)
    print("OnSubStart2503012")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2503012, 0, 18, 2, npcs.Npc6087.id)
end

function Quest25030:OnSubFinish2503012(arg1)
    print("OnSubFinish2503012")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6087.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14366.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6087.alias, 25030):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc6088.alias, 25030):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14366.alias, 25030):DisableInteeHeadCtrl(false)
        this:LightNotifyTo(npcs.Npc6088.alias, 0, true)
    end)
end

return Quest25030
