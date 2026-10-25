require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74501 = class("Quest74501", QuestActorProxy)
Quest74501.defaultAlias = "Quest74501"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74501:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74501:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7450104"] = self.OnSubStart7450104,
        ["7450101"] = self.OnSubStart7450101,
        ["7450102"] = self.OnSubStart7450102,
        ["7450103"] = self.OnSubStart7450103
    }
end

function Quest74501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7450104"] = self.OnSubFinish7450104,
        ["7450101"] = self.OnSubFinish7450101,
        ["7450102"] = self.OnSubFinish7450102,
        ["7450103"] = self.OnSubFinish7450103
    }
end

function Quest74501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74501:Start()
    print("Start")
end

function Quest74501:OnDestroy()
    print("OnDestroy")
end

function Quest74501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74501:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74501:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5029Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5024Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30411Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30412Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5040Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5029Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q74501Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q74501Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q74501Trigger2", 3, false)
    this:UnCallDelayByQuest("1")
end

function Quest74501:OnSubStart7450104(arg1)
    print("OnSubStart7450104")
end

function Quest74501:OnSubFinish7450104(arg1)
    print("OnSubFinish7450104")
end

function Quest74501:OnSubStart7450101(arg1)
    print("OnSubStart7450101")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:CallDelayByQuest("1", 1, function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc30411Data.id, 0)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc30411Data.alias)
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
            questNpcActor:DisableInteeHeadCtrl(true)
            this:CreateQuestNpc(arg1, npcs.Npc30412Data.id, 0)
            this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(true)
            this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
            this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        end)
    end)
end

function Quest74501:OnSubFinish7450101(arg1)
    print("OnSubFinish7450101")
end

function Quest74501:OnSubStart7450102(arg1)
    print("OnSubStart7450102")
    this:CreateQuestNpc(arg1, npcs.Npc5024Data.id, 0)
    this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30411Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74501:OnSubFinish7450102(arg1)
    print("OnSubFinish7450102")
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc5029Data.alias, 0, true)
    end)
end

function Quest74501:OnSubStart7450103(arg1)
    print("OnSubStart7450103")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5029Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5029Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        this:CreateQuestNpc(arg1, npcs.Npc30411Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc30411Data.alias):DisableInteeHeadCtrl(true)
        this:CreateQuestNpc(arg1, npcs.Npc30412Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q74501Trigger2", "Actor/Gadget/Q74501Trigger2", 70900002, 0, points.TPos_Q74501Trigger2.pos, points.TPos_Q74501Trigger2.rot, true, false, 3)
    end)
end

function Quest74501:OnSubFinish7450103(arg1)
    print("OnSubFinish7450103")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc5029Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc30411Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(false)
        this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
        this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q74501Trigger", "Actor/Gadget/Q74501Trigger", 70900002, 0, points.TPos_Q74501Trigger.pos, points.TPos_Q74501Trigger.rot, true, false, 3)
        this:DestroyQuestNpcActor(npcs.Npc5024Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30411Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30412Data.alias, 3)
    end)
end

return Quest74501
