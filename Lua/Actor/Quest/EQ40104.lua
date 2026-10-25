require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40104 = class("Quest40104", QuestActorProxy)
Quest40104.defaultAlias = "Quest40104"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40104:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4010407"] = self.OnSubStart4010407,
        ["4010401"] = self.OnSubStart4010401,
        ["4010402"] = self.OnSubStart4010402,
        ["4010404"] = self.OnSubStart4010404,
        ["4010403"] = self.OnSubStart4010403,
        ["4010410"] = self.OnSubStart4010410,
        ["4010408"] = self.OnSubStart4010408,
        ["4010409"] = self.OnSubStart4010409,
        ["4010405"] = self.OnSubStart4010405,
        ["4010406"] = self.OnSubStart4010406
    }
end

function Quest40104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4010407"] = self.OnSubFinish4010407,
        ["4010401"] = self.OnSubFinish4010401,
        ["4010402"] = self.OnSubFinish4010402,
        ["4010404"] = self.OnSubFinish4010404,
        ["4010403"] = self.OnSubFinish4010403,
        ["4010410"] = self.OnSubFinish4010410,
        ["4010408"] = self.OnSubFinish4010408,
        ["4010409"] = self.OnSubFinish4010409,
        ["4010405"] = self.OnSubFinish4010405,
        ["4010406"] = self.OnSubFinish4010406
    }
end

function Quest40104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40104:Start()
    print("Start")
end

function Quest40104:OnDestroy()
    print("OnDestroy")
end

function Quest40104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40104:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13226Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13199Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13200Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13201Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13153Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4048Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13228Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13229Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4023Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc4023Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4057Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4058Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4023Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4057Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4058Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4010401_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010402_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010403_TriggerIn", 1072, false)
    actorMgr:DestroyEntityActor("Q4010404_TriggerIn", 0, false)
    actorMgr:DestroyEntityActor("Q4010405_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010406_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010407_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010408_TriggerIn", 3, false)
end

function Quest40104:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40104:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4010410 then
        actorUtils.FinishQuestID(false, 4010410)
    end
end

function Quest40104:OnSubStart4010407(arg1)
    print("OnSubStart4010407")
    this:CreateQuestNpcWithTrigger("Q4010407_TriggerIn", 4010407, 13161, 3, 20)
end

function Quest40104:OnSubFinish4010407(arg1)
    print("OnSubFinish4010407")
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
end

function Quest40104:OnSubStart4010401(arg1)
    print("OnSubStart4010401")
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 1)
    actorMgr:CreateActorWithPos("Q4010401_TriggerIn", "Actor/Gadget/Q4010401_TriggerIn", 70900002, 0, points.TPos_Q4010401_TriggerIn.pos, points.TPos_Q4010401_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40104:OnSubFinish4010401(arg1)
    print("OnSubFinish4010401")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
end

function Quest40104:OnSubStart4010402(arg1)
    print("OnSubStart4010402")
    this:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc1067Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010402_TriggerIn", "Actor/Gadget/Q4010402_TriggerIn", 70900002, 0, points.TPos_Q4010402_TriggerIn.pos, points.TPos_Q4010402_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40104:OnSubFinish4010402(arg1)
    print("OnSubFinish4010402")
end

function Quest40104:OnSubStart4010404(arg1)
    print("OnSubStart4010404")
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13228Data.id, 8)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13229Data.id, 9)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010404_TriggerIn", "Actor/Gadget/Q4010404_TriggerIn", 70900002, 0, points.TPos_Q4010404_TriggerIn.pos, points.TPos_Q4010404_TriggerIn.rot, true, false)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40104:OnSubFinish4010404(arg1)
    print("OnSubFinish4010404")
end

function Quest40104:OnSubStart4010403(arg1)
    print("OnSubStart4010403")
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4023Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):SitOnChair(8010)
    actorMgr:CreateActorWithPos("Q4010403_TriggerIn", "Actor/Gadget/Q4010403_TriggerIn", 70900002, 0, points.TPos_Q4010403_TriggerIn.pos, points.TPos_Q4010403_TriggerIn.rot, true, false, 1072)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40104:OnSubFinish4010403(arg1)
    print("OnSubFinish4010403")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4010403_NarratorWithId)
    end)
end

function Quest40104:OnSubStart4010410(arg1)
    print("OnSubStart4010410")
end

function Quest40104:OnSubFinish4010410(arg1)
    print("OnSubFinish4010410")
end

function Quest40104:OnSubStart4010408(arg1)
    print("OnSubStart4010408")
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4023Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q4010408_TriggerIn", 4010408, 13161, 2, 15)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40104:OnSubFinish4010408(arg1)
    print("OnSubFinish4010408")
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
end

function Quest40104:OnSubStart4010409(arg1)
    print("OnSubStart4010409")
end

function Quest40104:OnSubFinish4010409(arg1)
    print("OnSubFinish4010409")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40104:OnSubStart4010405(arg1)
    print("OnSubStart4010405")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4023Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010405_TriggerIn", "Actor/Gadget/Q4010405_TriggerIn", 70900002, 0, points.TPos_Q4010405_TriggerIn.pos, points.TPos_Q4010405_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8066)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40104:OnSubFinish4010405(arg1)
    print("OnSubFinish4010405")
end

function Quest40104:OnSubStart4010406(arg1)
    print("OnSubStart4010406")
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4023Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4057Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4058Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):SitOnChair(8066)
    actorMgr:CreateActorWithPos("Q4010406_TriggerIn", "Actor/Gadget/Q4010406_TriggerIn", 70900002, 0, points.TPos_Q4010406_TriggerIn.pos, points.TPos_Q4010406_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1067Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1054Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13228Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13229Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40104:OnSubFinish4010406(arg1)
    print("OnSubFinish4010406")
    this:LightNotifyTo(npcs.Npc4023Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4057Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4058Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13228Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13229Data.alias, 3)
end

return Quest40104
