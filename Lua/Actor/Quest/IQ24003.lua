require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24003 = class("Quest24003", QuestActorProxy)
Quest24003.defaultAlias = "Quest24003"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest24003:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest24003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400301"] = self.OnSubStart2400301,
        ["2400302"] = self.OnSubStart2400302,
        ["2400304"] = self.OnSubStart2400304,
        ["2400306"] = self.OnSubStart2400306,
        ["2400303"] = self.OnSubStart2400303,
        ["2400305"] = self.OnSubStart2400305,
        ["2400307"] = self.OnSubStart2400307
    }
end

function Quest24003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400301"] = self.OnSubFinish2400301,
        ["2400302"] = self.OnSubFinish2400302,
        ["2400304"] = self.OnSubFinish2400304,
        ["2400306"] = self.OnSubFinish2400306,
        ["2400303"] = self.OnSubFinish2400303,
        ["2400305"] = self.OnSubFinish2400305,
        ["2400307"] = self.OnSubFinish2400307
    }
end

function Quest24003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24003:Start()
    print("Start")
end

function Quest24003:OnDestroy()
    print("OnDestroy")
end

function Quest24003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24003:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5062Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5063Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q24003TriggerClocktest01", 3, false)
    actorMgr:DestroyEntityActor("Q24003TriggerClocktest02", 3, false)
    actorMgr:DestroyEntityActor("Q2400302Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400303Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400304Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400306Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2400307Trigger", 3, false)
    this:ClearSpeechBubbleTask()
end

function Quest24003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest24003:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest24003:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24003:OnSubStart2400301(arg1)
    print("OnSubStart2400301")
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc5063Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5063Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24003:OnSubFinish2400301(arg1)
    print("OnSubFinish2400301")
    this:DestroyQuestNpcActor(npcs.Npc5062Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5063Data.alias, 3)
end

function Quest24003:OnSubStart2400302(arg1)
    print("OnSubStart2400302")
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:CreateSpeechBubbleTask(npcs.Npc5062Data.id, 240039902, 4, true, 5, 6, true)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q2400302Trigger", "Actor/Gadget/Q2400302Trigger", 70900002, 0, points.TPos_Q2400302Trigger.pos, points.TPos_Q2400302Trigger.rot, true, false, 3)
end

function Quest24003:OnSubFinish2400302(arg1)
    print("OnSubFinish2400302")
    this:ClearSpeechBubbleTask()
    this:ActorDestroy("Q2400302Trigger")
    this:ClearNarratorTask()
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5062Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
end

function Quest24003:OnSubStart2400304(arg1)
    print("OnSubStart2400304")
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:CreateSpeechBubbleTask(npcs.Npc5062Data.id, 240039902, 4, true, 5, 6, true)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q2400304Trigger", "Actor/Gadget/Q2400304Trigger", 70900002, 0, points.TPos_Q2400304Trigger.pos, points.TPos_Q2400304Trigger.rot, true, false, 3)
end

function Quest24003:OnSubFinish2400304(arg1)
    print("OnSubFinish2400304")
    this:ClearSpeechBubbleTask()
    this:ActorDestroy("Q2400304Trigger")
    this:ClearNarratorTask()
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5062Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
end

function Quest24003:OnSubStart2400306(arg1)
    print("OnSubStart2400306")
    this:CreateQuestNpc(arg1, npcs.Npc5062Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    this:CreateSpeechBubbleTask(npcs.Npc5062Data.id, 240039902, 4, true, 5, 6, true)
    this:GetQuestNpcActor(npcs.Npc5062Data.alias):DoFreeStyle(5030, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q2400306Trigger", "Actor/Gadget/Q2400306Trigger", 70900002, 0, points.TPos_Q2400306Trigger.pos, points.TPos_Q2400306Trigger.rot, true, false, 3)
end

function Quest24003:OnSubFinish2400306(arg1)
    print("OnSubFinish2400306")
    this:ClearSpeechBubbleTask()
    this:ActorDestroy("Q2400306Trigger")
    this:ClearNarratorTask()
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5062Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
end

function Quest24003:OnSubStart2400303(arg1)
    print("OnSubStart2400303")
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5063Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2400303Trigger", "Actor/Gadget/Q2400303Trigger", 70900002, 0, points.TPos_Q2400303Trigger.pos, points.TPos_Q2400303Trigger.rot, true, false, 3)
    actorMgr:GetActor("24003"):CreateSpeechBubbleTask(npcs.Npc5063Data.id, 240039904, 4, true, 5, 6, true)
end

function Quest24003:OnSubFinish2400303(arg1)
    print("OnSubFinish2400303")
    this:ActorDestroy("Q2400303Trigger")
    this:ClearNarratorTask()
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5063Data.alias)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
end

function Quest24003:OnSubStart2400305(arg1)
    print("OnSubStart2400305")
    this:DailyNpcSafeHideSelf(npcs.Npc5062Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5063Data.alias, 1, true)
end

function Quest24003:OnSubFinish2400305(arg1)
    print("OnSubFinish2400305")
    this:TransmitPlayerByQuestId(2400305, 1)
end

function Quest24003:OnSubStart2400307(arg1)
    print("OnSubStart2400307")
    actorMgr:CreateActorWithPos("Q2400307Trigger", "Actor/Gadget/Q2400307Trigger", 70900002, 0, points.TPos_Q2400307Trigger.pos, points.TPos_Q2400307Trigger.rot, true, false, 3)
end

function Quest24003:OnSubFinish2400307(arg1)
    print("OnSubFinish2400307")
    this:SafeDestroyQuestNpc(npcs.Npc5062Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5063Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5062Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5063Data.alias, 0, true)
end

return Quest24003
