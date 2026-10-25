require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19094 = class("Quest19094", QuestActorProxy)
Quest19094.defaultAlias = "Quest19094"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19094:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19094:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1909402"] = self.OnSubStart1909402,
        ["1909403"] = self.OnSubStart1909403,
        ["1909404"] = self.OnSubStart1909404,
        ["1909405"] = self.OnSubStart1909405,
        ["1909406"] = self.OnSubStart1909406,
        ["1909408"] = self.OnSubStart1909408,
        ["1909409"] = self.OnSubStart1909409
    }
end

function Quest19094:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1909402"] = self.OnSubFinish1909402,
        ["1909403"] = self.OnSubFinish1909403,
        ["1909404"] = self.OnSubFinish1909404,
        ["1909405"] = self.OnSubFinish1909405,
        ["1909406"] = self.OnSubFinish1909406,
        ["1909408"] = self.OnSubFinish1909408,
        ["1909409"] = self.OnSubFinish1909409
    }
end

function Quest19094:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19094:Start()
    print("Start")
end

function Quest19094:OnDestroy()
    print("OnDestroy")
end

function Quest19094:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19094:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19094:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1429Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13354Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13355Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1453Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1451Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1642Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1525Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1467Data.alias, 3)
    this:LightNotifyTo(npcs.Npc1429Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1453Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1451Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1642Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1405Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1525Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1909403TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1909405TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1909408TriggerRequest", 3, false)
    actorMgr:DestroyEntityActor("Q1909402N516Trigger", 3, false)
end

function Quest19094:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19094:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19094:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest19094:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19094:OnSubStart1909402(arg1)
    print("OnSubStart1909402")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909402)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KaeyaData.id, 1909402, 1, 15, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1429Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc1453Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1451Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1642Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1525Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1429Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest19094:OnSubFinish1909402(arg1)
    print("OnSubFinish1909402")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 19094)
    end)

    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
end

function Quest19094:OnSubStart1909403(arg1)
    print("OnSubStart1909403")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909403)
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc1453Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1451Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1642Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1525Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1467Data.id, 3)
    this:GetQuestNpcActor(npcs.WendyData.alias):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc1467Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1909403TriggerRequest", "Actor/Gadget/Q1909403TriggerRequest", 70900002, 0, points.TPos_Q1909403TriggerRequest.pos, points.TPos_Q1909403TriggerRequest.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1429Data.alias)
    questNpcActor:DoFreeStyle(1090, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest19094:OnSubFinish1909403(arg1)
    print("OnSubFinish1909403")
    this:SafeDestroyQuestNpc(npcs.Npc1429Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1467Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest19094:OnSubStart1909404(arg1)
    print("OnSubStart1909404")
    this:DailyNpcSafeHideSelf(npcs.Npc1429Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1453Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1451Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1642Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1525Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.WendyData.alias):SitOnChair(8010, true)
end

function Quest19094:OnSubFinish1909404(arg1)
    print("OnSubFinish1909404")
    this:LightNotifyTo(npcs.Npc1429Data.alias, 0, true)
end

function Quest19094:OnSubStart1909405(arg1)
    print("OnSubStart1909405")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909405)
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1429Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc1453Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1451Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1642Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1525Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.WendyData.alias):DoFreeStyle(1110, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1909405TriggerRequest", "Actor/Gadget/Q1909405TriggerRequest", 70900002, 0, points.TPos_Q1909405TriggerRequest.pos, points.TPos_Q1909405TriggerRequest.rot, true, false, 3)
end

function Quest19094:OnSubFinish1909405(arg1)
    print("OnSubFinish1909405")
    this:SafeDestroyQuestNpc(npcs.Npc1429Data.alias, 3)
end

function Quest19094:OnSubStart1909406(arg1)
    print("OnSubStart1909406")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909406)
    this:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.WendyData.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc1429Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1453Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1451Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1642Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1525Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.WendyData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Coop_BarbaraData.alias):CheckPlayerDistTask(4, 1, function(arg1)
        this:GetQuestNpcActor(npcs.Coop_BarbaraData.alias):DoFreeStyle(1200, false, nil, true, true, true, false)
    end, nil)

    this:GetQuestNpcActor(npcs.WendyData.alias):DisableInteeHeadCtrl(true)
end

function Quest19094:OnSubFinish1909406(arg1)
    print("OnSubFinish1909406")
    this:GetQuestNpcActor(npcs.Coop_BarbaraData.alias):ClearCheckPlayerDistTask()
    this:NpcDestroy(npcs.Coop_BarbaraData.alias, 3)
    this:GetQuestNpcActor(npcs.WendyData.alias):DisableInteeHeadCtrl(false)
end

function Quest19094:OnSubStart1909408(arg1)
    print("OnSubStart1909408")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909408)
    this:CreateQuestNpc(arg1, npcs.Coop_KaeyaData.id, 1)
    this:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 3)
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc1429Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc13354Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc13355Data.id, 7)
    this:DailyNpcSafeHideSelf(npcs.Npc1453Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1451Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1642Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1525Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1909408TriggerRequest", "Actor/Gadget/Q1909408TriggerRequest", 70900002, 0, points.TPos_Q1909408TriggerRequest.pos, points.TPos_Q1909408TriggerRequest.rot, true, false, 3)
end

function Quest19094:OnSubFinish1909408(arg1)
    print("OnSubFinish1909408")
end

function Quest19094:OnSubStart1909409(arg1)
    print("OnSubStart1909409")
    this:RequestCoopInteractionFromSubStartPoint(101501, 1909409)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Coop_KaeyaData.id, 1)
        this:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 2)
        this:CreateQuestNpc(arg1, npcs.WendyData.id, 4)
        this:CreateQuestNpc(arg1, npcs.Npc13354Data.id, 6)
        this:CreateQuestNpc(arg1, npcs.Npc13355Data.id, 7)
    end)

    this:NpcCreateWithActionSafeCall(arg1, npcs.Coop_DionaData.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc1453Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1451Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1642Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc1525Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Coop_BarbaraData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Coop_DionaData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.WendyData.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1429Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13354Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13355Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Coop_DionaData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1429Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1429Data.id, 5)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias)
    questNpcActor:DoFreeStyle(1220, true, nil, true, true, false, false)
    questNpcActor:CheckPlayerDistTask(5, 1, function(arg1)
        this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1050, false, nil, true, true, true, false)
    end, function(arg1)
        this:GetQuestNpcActor(npcs.Coop_KaeyaData.alias):DoFreeStyle(1220, false, nil, true, true, false, false)
    end)
end

function Quest19094:OnSubFinish1909409(arg1)
    print("OnSubFinish1909409")
    this:LightNotifyTo(npcs.Npc1429Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1453Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1451Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1642Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1405Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1525Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Coop_KaeyaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1429Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13354Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13355Data.alias, 3)
end

return Quest19094
