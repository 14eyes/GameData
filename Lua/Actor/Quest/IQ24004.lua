require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24004 = class("Quest24004", QuestActorProxy)
Quest24004.defaultAlias = "Quest24004"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest24004:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest24004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400401"] = self.OnSubStart2400401,
        ["2400402"] = self.OnSubStart2400402,
        ["2400403"] = self.OnSubStart2400403,
        ["2400404"] = self.OnSubStart2400404,
        ["2400405"] = self.OnSubStart2400405,
        ["2400406"] = self.OnSubStart2400406
    }
end

function Quest24004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400401"] = self.OnSubFinish2400401,
        ["2400402"] = self.OnSubFinish2400402,
        ["2400403"] = self.OnSubFinish2400403,
        ["2400404"] = self.OnSubFinish2400404,
        ["2400405"] = self.OnSubFinish2400405,
        ["2400406"] = self.OnSubFinish2400406
    }
end

function Quest24004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24004:Start()
    print("Start")
end

function Quest24004:OnDestroy()
    print("OnDestroy")
end

function Quest24004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24004:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5062Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5063Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5021Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q24004Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400402Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400403Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400404Trigger", 3, false)
    this:ClearSpeechBubbleTask()
end

function Quest24004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest24004:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest24004:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24004:OnSubStart2400401(arg1)
    print("OnSubStart2400401")
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5063Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5062Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest24004:OnSubFinish2400401(arg1)
    print("OnSubFinish2400401")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest24004:OnSubStart2400402(arg1)
    print("OnSubStart2400402")
    this:CreateQuestNpc(arg1, npcs.Npc5063Data.id, 0)
    this:CreateSpeechBubbleTask(npcs.Npc5063Data.id, 240049901, 4, true, 5, 6, true)
end

function Quest24004:OnSubFinish2400402(arg1)
    print("OnSubFinish2400402")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5063Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
end

function Quest24004:OnSubStart2400403(arg1)
    print("OnSubStart2400403")
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q2400403Trigger", "Actor/Gadget/Q2400403Trigger", 70900002, 0, points.TPos_Q2400403Trigger.pos, points.TPos_Q2400403Trigger.rot, true, false, 3)
    actorMgr:GetActor("24004"):CreateSpeechBubbleTask(npcs.Npc5062Data.id, 240049902, 4, true, 5, 6, true)
end

function Quest24004:OnSubFinish2400403(arg1)
    print("OnSubFinish2400403")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5062Data.alias)
    this:ActorDestroy("Q2400403Trigger")
    this:ClearNarratorTask()
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
end

function Quest24004:OnSubStart2400404(arg1)
    print("OnSubStart2400404")
    this:CreateQuestNpc(arg1, npcs.Npc5021Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5021Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q2400404Trigger", "Actor/Gadget/Q2400404Trigger", 70900002, 0, points.TPos_Q2400404Trigger.pos, points.TPos_Q2400404Trigger.rot, true, false, 3)
    actorMgr:GetActor("24004"):CreateSpeechBubbleTask(npcs.Npc5021Data.id, 240049903, 4, true, 5, 6, true)
end

function Quest24004:OnSubFinish2400404(arg1)
    print("OnSubFinish2400404")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5021Data.alias)
    this:ActorDestroy("Q2400404Trigger")
    this:ClearNarratorTask()
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
end

function Quest24004:OnSubStart2400405(arg1)
    print("OnSubStart2400405")
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5021Data.alias, 1, true)
end

function Quest24004:OnSubFinish2400405(arg1)
    print("OnSubFinish2400405")
    this:TransmitPlayerByQuestId(2400405, 1)
end

function Quest24004:OnSubStart2400406(arg1)
    print("OnSubStart2400406")
    actorMgr:CreateActorWithPos("Q24004Trigger", "Actor/Gadget/Q24004Trigger", 70900002, 0, points.TPos_Q24004Trigger.pos, points.TPos_Q24004Trigger.rot, true, false, 3)
end

function Quest24004:OnSubFinish2400406(arg1)
    print("OnSubFinish2400406")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc5021Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5062Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5063Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5021Data.alias, 0, true)
    end, nil, nil, 0, false, true)
end

return Quest24004
